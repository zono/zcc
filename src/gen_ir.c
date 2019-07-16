#include "zcc.h"

// Compile AST to intermediate code that has infinite number of registers.
// Base pointer is always assigned to r0.

IRInfo irinfo[] = {
    [IR_ADD] = {"ADD", IR_TY_REG_REG},
    [IR_CALL] = {"CALL", IR_TY_CALL},
    [IR_DIV] = {"DIV", IR_TY_REG_REG},
    [IR_IMM] = {"MOV", IR_TY_REG_IMM},
    [IR_JMP] = {"JMP", IR_TY_JMP},
    [IR_KILL] = {"KILL", IR_TY_REG},
    [IR_LABEL] = {"", IR_TY_LABEL},
    [IR_LT] = {"LT", IR_TY_REG_REG},
    [IR_LOAD] = {"LOAD", IR_TY_REG_REG},
    [IR_MOV] = {"MOV", IR_TY_REG_REG},
    [IR_MUL] = {"MUL", IR_TY_REG_REG},
    [IR_NOP] = {"NOP", IR_TY_NOARG},
    [IR_RETURN] = {"RET", IR_TY_REG},
    [IR_SAVE_ARGS] = {"SAVE_ARGS", IR_TY_IMM},
    [IR_STORE] = {"STORE", IR_TY_REG_REG},
    [IR_SUB] = {"SUB", IR_TY_REG_REG},
    [IR_SUB_IMM] = {"SUB", IR_TY_REG_IMM},
    [IR_UNLESS] = {"UNLESS", IR_TY_REG_LABEL},
};

static char *tostr(IR *ir)
{
  IRInfo info = irinfo[ir->op];

  switch (info.ty)
  {
  case IR_TY_LABEL:
    return format(".L%d:", ir->lhs);
  case IR_TY_IMM:
    return format("  %s %d", info.name, ir->lhs);
  case IR_TY_REG:
    return format("  %s r%d", info.name, ir->lhs);
  case IR_TY_JMP:
    return format("  %s .L%d", info.name, ir->lhs);
  case IR_TY_REG_REG:
    return format("  %s r%d, r%d", info.name, ir->lhs, ir->rhs);
  case IR_TY_REG_IMM:
    return format("  %s r%d, %d", info.name, ir->lhs, ir->rhs);
  case IR_TY_REG_LABEL:
    return format("  %s r%d, .L%d", info.name, ir->lhs, ir->rhs);
  case IR_TY_CALL:
  {
    StringBuilder *sb = new_sb();
    sb_append(sb, format("  r%d = %s(", ir->lhs, ir->name));
    for (int i = 0; i < ir->nargs; i++)
      sb_append(sb, format(", r%d", ir->args));
    sb_append(sb, ")");
    return sb_get(sb);
  }
  default:
    assert(info.ty == IR_TY_NOARG);
    return format("  %s", info.name);
  }
}

void dump_ir(Vector *irv)
{
  for (int i = 0; i < irv->len; i++)
  {
    Function *fn = irv->data[i];
    fprintf(stderr, "%s():\n", fn->name);
    for (int j = 0; j < fn->ir->len; j++)
      fprintf(stderr, "%s\n", tostr(fn->ir->data[j]));
  }
}

static Vector *code;
static int nreg;
static int nlabel;

static IR *add(int op, int lhs, int rhs)
{
  IR *ir = calloc(1, sizeof(IR));
  ir->op = op;
  ir->lhs = lhs;
  ir->rhs = rhs;
  vec_push(code, ir);
  return ir;
}

static void kill(int r) { add(IR_KILL, r, -1); }

static void label(int x) { add(IR_LABEL, x, -1); }

static int gen_lval(Node *node)
{
  if (node->op != ND_LVAR)
    error("not an lvalue: %d (%s)", node->op, node->name);
  int r = nreg++;
  add(IR_MOV, r, 0);
  add(IR_SUB_IMM, r, node->offset);
  return r;
}

static int gen_expr(Node *node);

static int gen_binop(int ty, Node *lhs, Node *rhs)
{
  int r1 = gen_expr(lhs);
  int r2 = gen_expr(rhs);
  add(ty, r1, r2);
  kill(r2);
  return r1;
}

static int gen_expr(Node *node)
{
  switch (node->op)
  {
  case ND_NUM:
  {
    int r = nreg++;
    add(IR_IMM, r, node->val);
    return r;
  }
  case ND_LOGAND:
  {
    int x = nlabel++;

    int r1 = gen_expr(node->lhs);
    add(IR_UNLESS, r1, x);
    int r2 = gen_expr(node->rhs);
    add(IR_MOV, r1, r2);
    kill(r2);
    add(IR_UNLESS, r1, x);
    add(IR_IMM, r1, 1);
    label(x);
    return r1;
  }
  case ND_LOGOR:
  {
    int x = nlabel++;
    int y = nlabel++;

    int r1 = gen_expr(node->lhs);
    add(IR_UNLESS, r1, x);
    add(IR_IMM, r1, 1);
    add(IR_JMP, y, -1);
    label(x);

    int r2 = gen_expr(node->rhs);
    add(IR_MOV, r1, r2);
    kill(r2);
    add(IR_UNLESS, r1, y);
    add(IR_IMM, r1, 1);
    label(y);
    return r1;
  }
  case ND_LVAR:
  {
    int r = gen_lval(node);
    add(IR_LOAD, r, r);
    return r;
  }
  case ND_CALL:
  {
    int args[6];
    for (int i = 0; i < node->args->len; i++)
      args[i] = gen_expr(node->args->data[i]);

    int r = nreg++;

    IR *ir = add(IR_CALL, r, -1);
    ir->name = node->name;
    ir->nargs = node->args->len;
    memcpy(ir->args, args, sizeof(args));

    for (int i = 0; i < ir->nargs; i++)
      kill(ir->args[i]);
    return r;
  }
  case ND_DEREF:
  {
    int r = gen_expr(node->expr);
    add(IR_LOAD, r, r);
    return r;
  }
  case '=':
  {
    int rhs = gen_expr(node->rhs);
    int lhs = gen_lval(node->lhs);
    add(IR_STORE, lhs, rhs);
    kill(rhs);
    return lhs;
  }
  case '+':
  case '-':
  {
    int insn = (node->op == '+') ? IR_ADD : IR_SUB;

    if (node->lhs->ty->ty != PTR)
      return gen_binop(insn, node->lhs, node->rhs);

    int rhs = gen_expr(node->rhs);
    int r = nreg++;
    add(IR_IMM, r, size_of(node->lhs->ty->ptr_of));
    add(IR_MUL, rhs, r);
    kill(r);

    int lhs = gen_expr(node->lhs);
    add(insn, lhs, rhs);
    kill(rhs);
    return lhs;
  }
  case '*':
    return gen_binop(IR_MUL, node->lhs, node->rhs);
  case '/':
    return gen_binop(IR_DIV, node->lhs, node->rhs);
  case '<':
    return gen_binop(IR_LT, node->lhs, node->rhs);
  default:
    assert(0 && "unknown AST type");
  }
}

static void gen_stmt(Node *node)
{
  if (node->op == ND_VARDEF)
  {
    if (!node->init)
      return;
    int rhs = gen_expr(node->init);
    int lhs = nreg++;
    add(IR_MOV, lhs, 0);
    add(IR_SUB_IMM, lhs, node->offset);
    add(IR_STORE, lhs, rhs);
    kill(lhs);
    kill(rhs);
    return;
  }

  if (node->op == ND_IF)
  {
    if (node->els)
    {
      int x = nlabel++;
      int y = nlabel++;
      int r = gen_expr(node->cond);
      add(IR_UNLESS, r, x);
      kill(r);
      gen_stmt(node->then);
      add(IR_JMP, y, -1);
      label(x);
      gen_stmt(node->els);
      label(y);
    }

    int x = nlabel++;
    int r = gen_expr(node->cond);
    add(IR_UNLESS, r, x);
    kill(r);
    gen_stmt(node->then);
    label(x);
    return;
  }

  if (node->op == ND_FOR)
  {
    int x = nlabel++;
    int y = nlabel++;

    gen_stmt(node->init);
    label(x);
    int r = gen_expr(node->cond);
    add(IR_UNLESS, r, y);
    kill(r);
    gen_stmt(node->body);
    kill(gen_expr(node->inc));
    add(IR_JMP, x, -1);
    label(y);
    return;
  }

  if (node->op == ND_RETURN)
  {
    int r = gen_expr(node->expr);
    add(IR_RETURN, r, -1);
    kill(r);
    return;
  }

  if (node->op == ND_EXPR_STMT)
  {
    kill(gen_expr(node->expr));
    return;
  }

  if (node->op == ND_COMP_STMT)
  {
    for (int i = 0; i < node->stmts->len; i++)
      gen_stmt(node->stmts->data[i]);
    return;
  }

  error("unknown node: %d", node->op);
}

Vector *gen_ir(Vector *nodes)
{
  Vector *v = new_vec();

  for (int i = 0; i < nodes->len; i++)
  {
    Node *node = nodes->data[i];
    assert(node->op == ND_FUNC);

    code = new_vec();
    nreg = 1;

    if (nodes->len > 0)
      add(IR_SAVE_ARGS, node->args->len, -1);
    gen_stmt(node->body);

    Function *fn = malloc(sizeof(Function));
    fn->name = node->name;
    fn->stacksize = node->stacksize;
    fn->ir = code;
    vec_push(v, fn);
  }
  return v;
}