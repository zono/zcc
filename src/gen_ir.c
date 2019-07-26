#include "zcc.h"

// 9cc's code generation is two-pass. In the first pass, abstract
// syntax trees are compiled to IR (intermediate representation).
//
// IR resembles the real x86-64 instruction set, but it has infinite
// number of registers. We don't try too hard to reuse registers in
// this pass. Instead, we "kill" registers to mark them as dead when
// we are done with them and use new registers.
//
// Such infinite number of registers are mapped to a finite registers
// in a later pass.

static Vector *code;
static int nreg = 1;

static int return_label;
static int return_reg;

static IR *add(int op, int lhs, int rhs) {
  IR *ir = calloc(1, sizeof(IR));
  ir->op = op;
  ir->lhs = lhs;
  ir->rhs = rhs;
  vec_push(code, ir);
  return ir;
}

static IR *add_imm(int op, int lhs, int rhs) {
  IR *ir = add(op, lhs, rhs);
  ir->is_imm = true;
  return ir;
}

static void kill(int r) {
  add(IR_KILL, r, -1);
}

static void label(int x) {
  add(IR_LABEL, x, -1);
}

static void jmp(int x) {
  add(IR_JMP, x, -1);
}

static int gen_expr(Node *node);

static void load(Node *node, int dst, int src) {
  IR *ir = add(IR_LOAD, dst, src);
  ir->size = node->ty->size;
}

static void store(Node *node, int dst, int src) {
  IR *ir = add(IR_STORE, dst, src);
  ir->size = node->ty->size;
}

static void store_arg(Node *node, int bpoff, int argreg) {
  IR *ir = add(IR_STORE_ARG, bpoff, argreg);
  ir->size = node->ty->size;
}

// In C, all expressions that can be written on the left-hand side of
// the '=' operator must have an address in memory. In other words, if
// you can apply the '&' operator to take an address of some
// expression E, you can assign E to a new value.
//
// Other expressions, such as `1+2`, cannot be written on the lhs of
// '=', since they are just temporary values that don't have an address.
//
// The stuff that can be written on the lhs of '=' is called lvalue.
// Other values are called rvalue. An lvalue is essentially an address.
//
// When lvalues appear on the rvalue context, they are converted to
// rvalues by loading their values from their addresses. You can think
// '&' as an operator that suppresses such automatic lvalue-to-rvalue
// conversion.
//
// This function evaluates a given node as an lvalue.
static int gen_lval(Node *node) {
  if (node->op == ND_DEREF)
    return gen_expr(node->expr);

  if (node->op == ND_DOT) {
    int r = gen_lval(node->expr);
    add_imm(IR_ADD, r, node->ty->offset);
    return r;
  }

  assert(node->op == ND_VAR);
  Var *var = node->var;

  if (var->is_local) {
    int r = nreg++;
    add(IR_BPREL, r, var->offset);
    return r;
  }

  int r = nreg++;
  IR *ir = add(IR_LABEL_ADDR, r, -1);
  ir->name = var->name;
  return r;
}

static int gen_binop(int ty, Node *node) {
  int lhs = gen_expr(node->lhs);
  int rhs = gen_expr(node->rhs);
  add(ty, lhs, rhs);
  kill(rhs);
  return lhs;
}

int get_inc_scale(Node *node) {
  if (node->ty->ty == PTR)
    return node->ty->ptr_to->size;
  return 1;
}

static int gen_pre_inc(Node *node, int num) {
  int addr = gen_lval(node->expr);
  int val = nreg++;
  load(node, val, addr);
  add_imm(IR_ADD, val, num * get_inc_scale(node));
  store(node, addr, val);
  kill(addr);
  return val;
}

static int gen_post_inc(Node *node, int num) {
  int val = gen_pre_inc(node, num);
  add_imm(IR_SUB, val, num * get_inc_scale(node));
  return val;
}

static int to_assign_op(int op) {
  switch (op) {
  case ND_MUL_EQ:
    return IR_MUL;
  case ND_DIV_EQ:
    return IR_DIV;
  case ND_MOD_EQ:
    return IR_MOD;
  case ND_ADD_EQ:
    return IR_ADD;
  case ND_SUB_EQ:
    return IR_SUB;
  case ND_SHL_EQ:
    return IR_SHL;
  case ND_SHR_EQ:
    return IR_SHR;
  case ND_BITAND_EQ:
    return IR_AND;
  case ND_XOR_EQ:
    return IR_XOR;
  default:
    assert(op == ND_BITOR_EQ);
    return IR_OR;
  }
}

static int gen_assign_op(Node *node) {
  int src = gen_expr(node->rhs);
  int dst = gen_lval(node->lhs);
  int val = nreg++;

  load(node, val, dst);
  add(to_assign_op(node->op), val, src);
  kill(src);
  store(node, dst, val);
  kill(dst);
  return val;
}

static void gen_stmt(Node *node);

static int gen_expr(Node *node) {
  switch (node->op) {
  case ND_NUM: {
    int r = nreg++;
    add(IR_IMM, r, node->val);
    return r;
  }
  case ND_EQ:
    return gen_binop(IR_EQ, node);
  case ND_NE:
    return gen_binop(IR_NE, node);
  case ND_LOGAND: {
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
  case ND_LOGOR: {
    int x = nlabel++;
    int y = nlabel++;

    int r1 = gen_expr(node->lhs);
    add(IR_UNLESS, r1, x);
    add(IR_IMM, r1, 1);
    jmp(y);
    label(x);

    int r2 = gen_expr(node->rhs);
    add(IR_MOV, r1, r2);
    kill(r2);
    add(IR_UNLESS, r1, y);
    add(IR_IMM, r1, 1);
    label(y);
    return r1;
  }
  case ND_VAR:
  case ND_DOT: {
    int r = gen_lval(node);
    load(node, r, r);
    return r;
  }
  case ND_CALL: {
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
  case ND_ADDR:
    return gen_lval(node->expr);
  case ND_DEREF: {
    int r = gen_expr(node->expr);
    load(node, r, r);
    return r;
  }
  case ND_STMT_EXPR: {
    int orig_label = return_label;
    int orig_reg = return_reg;
    return_label = nlabel++;
    int r = nreg++;
    return_reg = r;

    gen_stmt(node->body);
    label(return_label);

    return_label = orig_label;
    return_reg = orig_reg;
    return r;
  }
  case ND_MUL_EQ:
  case ND_DIV_EQ:
  case ND_MOD_EQ:
  case ND_ADD_EQ:
  case ND_SUB_EQ:
  case ND_SHL_EQ:
  case ND_SHR_EQ:
  case ND_BITAND_EQ:
  case ND_XOR_EQ:
  case ND_BITOR_EQ:
    return gen_assign_op(node);
  case '=': {
    int rhs = gen_expr(node->rhs);
    int lhs = gen_lval(node->lhs);
    store(node, lhs, rhs);
    kill(lhs);
    return rhs;
  }
  case '+':
    return gen_binop(IR_ADD, node);
  case '-':
    return gen_binop(IR_SUB, node);
  case '*':
    return gen_binop(IR_MUL, node);
  case '/':
    return gen_binop(IR_DIV, node);
  case '%':
    return gen_binop(IR_MOD, node);
  case '<':
    return gen_binop(IR_LT, node);
  case ND_LE:
    return gen_binop(IR_LE, node);
  case '&':
    return gen_binop(IR_AND, node);
  case '|':
    return gen_binop(IR_OR, node);
  case '^':
    return gen_binop(IR_XOR, node);
  case ND_SHL:
    return gen_binop(IR_SHL, node);
  case ND_SHR:
    return gen_binop(IR_SHR, node);
  case '~': {
    int r = gen_expr(node->expr);
    add_imm(IR_XOR, r, -1);
    return r;
  }
  case ND_NEG: {
    int r = gen_expr(node->expr);
    add(IR_NEG, r, -1);
    return r;
  }
  case ND_POST_INC:
    return gen_post_inc(node, 1);
  case ND_POST_DEC:
    return gen_post_inc(node, -1);
  case ',':
    kill(gen_expr(node->lhs));
    return gen_expr(node->rhs);
  case '?': {
    int x = nlabel++;
    int y = nlabel++;
    int r = gen_expr(node->cond);

    add(IR_UNLESS, r, x);
    int r2 = gen_expr(node->then);
    add(IR_MOV, r, r2);
    kill(r2);
    jmp(y);

    label(x);
    int r3 = gen_expr(node->els);
    add(IR_MOV, r, r3);
    kill(r2);
    label(y);
    return r;
  }
  case '!': {
    int lhs = gen_expr(node->expr);
    int rhs = nreg++;
    add(IR_IMM, rhs, 0);
    add(IR_EQ, lhs, rhs);
    kill(rhs);
    return lhs;
  }
  default:
    assert(0 && "unknown AST type");
  }
}

static void gen_stmt(Node *node) {
  switch (node->op) {
  case ND_NULL:
    return;
  case ND_VARDEF: {
    if (!node->init)
      return;
    int rhs = gen_expr(node->init);
    int lhs = nreg++;
    add(IR_BPREL, lhs, node->var->offset);
    store(node, lhs, rhs);
    kill(lhs);
    kill(rhs);
    return;
  }
  case ND_IF: {
    if (node->els) {
      int x = nlabel++;
      int y = nlabel++;
      int r = gen_expr(node->cond);
      add(IR_UNLESS, r, x);
      kill(r);
      gen_stmt(node->then);
      jmp(y);
      label(x);
      gen_stmt(node->els);
      label(y);
      return;
    }

    int x = nlabel++;
    int r = gen_expr(node->cond);
    add(IR_UNLESS, r, x);
    kill(r);
    gen_stmt(node->then);
    label(x);
    return;
  }
  case ND_FOR: {
    int x = nlabel++;
    gen_stmt(node->init);
    label(x);
    if (node->cond) {
      int r = gen_expr(node->cond);
      add(IR_UNLESS, r, node->break_label);
      kill(r);
    }
    gen_stmt(node->body);
    label(node->continue_label);
    if (node->inc)
      gen_stmt(node->inc);
    jmp(x);
    label(node->break_label);
    return;
  }
  case ND_DO_WHILE: {
    int x = nlabel++;
    label(x);
    gen_stmt(node->body);
    label(node->continue_label);
    int r = gen_expr(node->cond);
    add(IR_IF, r, x);
    kill(r);
    label(node->break_label);
    return;
  }
  case ND_BREAK:
    jmp(node->target->break_label);
    break;
  case ND_CONTINUE:
    jmp(node->target->continue_label);
    break;
  case ND_RETURN: {
    int r = gen_expr(node->expr);

    // Statement expression (GNU extension)
    if (return_label) {
      add(IR_MOV, return_reg, r);
      kill(r);
      jmp(return_label);
      return;
    }

    add(IR_RETURN, r, -1);
    kill(r);
    return;
  }
  case ND_EXPR_STMT:
    kill(gen_expr(node->expr));
    return;
  case ND_COMP_STMT:
    for (int i = 0; i < node->stmts->len; i++)
      gen_stmt(node->stmts->data[i]);
    return;
  default:
    error("unknown node: %d", node->op);
  }
}

void gen_ir(Program *prog) {
  for (int i = 0; i < prog->nodes->len; i++) {
    Node *node = prog->nodes->data[i];

    if (node->op == ND_VARDEF || node->op == ND_DECL)
      continue;

    assert(node->op == ND_FUNC);
    code = new_vec();

    for (int i = 0; i < node->args->len; i++) {
      Node *arg = node->args->data[i];
      store_arg(arg, arg->var->offset, i);
    }

    gen_stmt(node->body);

    Function *fn = malloc(sizeof(Function));
    fn->name = node->name;
    fn->stacksize = node->stacksize;
    fn->ir = code;
    vec_push(prog->funcs, fn);
  }
}