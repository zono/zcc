#include "zcc.h"

// Semantics analyzer. This pass plays a few important roles as shown
// below:
//
// - Add types to nodes. For example, a tree that represents "1+2" is
//   typed as INT because the result type of an addition of two
//   integers is integer.
//
// - Insert nodes to make array-to-pointer conversion explicit.
//   Recall that, in C, "array of T" is automatically converted to
//   "pointer to T" in most contexts.
//
// - Scales operands for pointer arithmetic. E.g. ptr+1 becomes ptr+4
//   for integer and becomes ptr+8 for pointer.
//
// - Reject bad assignments, such as `1=2+3`.

static Type int_ty = {INT, 4, 4};

static void swap(Node **p, Node **q) {
  Node *r = *p;
  *p = *q;
  *q = r;
}

static Node *maybe_decay(Node *base, bool decay) {
  if (!decay || base->ty->ty != ARY)
    return base;

  Node *node = calloc(1, sizeof(Node));
  node->op = ND_ADDR;
  node->ty = ptr_to(base->ty->ary_of);
  node->expr = base;
  node->token = base->token;
  return node;
}

noreturn static void bad_node(Node *node, char *msg) {
  bad_token(node->token, msg);
}

static void check_lval(Node *node) {
  int op = node->op;
  if (op != ND_VAR && op != ND_DEREF && op != ND_DOT)
    bad_node(node, "not an lvalue");
}

static Node *scale_ptr(int op, Node *base, Type *ty) {
  Node *node = calloc(1, sizeof(Node));
  node->op = op;
  node->lhs = base;
  node->rhs = new_int_node(ty->ptr_to->size, base->token);
  node->token = base->token;
  return node;
}

static void check_int(Node *node) {
  if (node->ty->ty != INT && node->ty->ty != CHAR)
    bad_node(node, "not an integer");
}

static Node *do_walk(Node *node, bool decay);

static Node *walk(Node *node) {
  return do_walk(node, true);
}

static Node *walk_noconv(Node *node) {
  return do_walk(node, false);
}

static Node *do_walk(Node *node, bool decay) {
  switch (node->op) {
  case ND_NUM:
  case ND_NULL:
  case ND_BREAK:
    return node;
  case ND_VAR:
    return maybe_decay(node, decay);
  case ND_VARDEF:
    if (node->init)
      node->init = walk(node->init);
    return node;
  case ND_IF:
    node->cond = walk(node->cond);
    node->then = walk(node->then);
    if (node->els)
      node->els = walk(node->els);
    return node;
  case ND_FOR:
    node->init = walk(node->init);
    if (node->cond)
      node->cond = walk(node->cond);
    if (node->inc)
      node->inc = walk(node->inc);
    node->body = walk(node->body);
    return node;
  case ND_DO_WHILE:
    node->cond = walk(node->cond);
    node->body = walk(node->body);
    return node;
  case '+':
    node->lhs = walk(node->lhs);
    node->rhs = walk(node->rhs);

    if (node->rhs->ty->ty == PTR)
      swap(&node->lhs, &node->rhs);
    check_int(node->rhs);

    if (node->lhs->ty->ty == PTR)
      node->rhs = scale_ptr('*', node->rhs, node->lhs->ty);

    node->ty = node->lhs->ty;
    return node;
  case '-': {
    node->lhs = walk(node->lhs);
    node->rhs = walk(node->rhs);

    Type *l = node->lhs->ty;
    Type *r = node->rhs->ty;
    if (l->ty == PTR && r->ty == PTR) {
      if (!same_type(r, l))
        bad_node(node, "incompatible pointer");
      node = scale_ptr('/', node, l);
    }

    node->ty = node->lhs->ty;
    return node;
  }
  case ND_ADD_EQ:
  case ND_SUB_EQ:
    node->lhs = walk_noconv(node->lhs);
    check_lval(node->lhs);
    node->rhs = walk(node->rhs);
    node->ty = node->lhs->ty;

    if (node->lhs->ty->ty == PTR)
      node->rhs = scale_ptr('*', node->rhs, node->lhs->ty);
    return node;
  case '=':
  case ND_MUL_EQ:
  case ND_DIV_EQ:
  case ND_MOD_EQ:
  case ND_SHL_EQ:
  case ND_SHR_EQ:
  case ND_BITAND_EQ:
  case ND_XOR_EQ:
  case ND_BITOR_EQ:
    node->lhs = walk_noconv(node->lhs);
    check_lval(node->lhs);
    node->rhs = walk(node->rhs);
    node->ty = node->lhs->ty;
    return node;
  case ND_DOT:
    node->expr = walk(node->expr);
    if (node->expr->ty->ty != STRUCT)
      bad_node(node, "struct expected before '.'");

    Type *ty = node->expr->ty;
    if (!ty->members)
      bad_node(node, "incomplete type");

    for (int i = 0; i < ty->members->len; i++) {
      Node *m = ty->members->data[i];
      if (strcmp(m->name, node->name))
        continue;
      node->ty = m->ty;
      return maybe_decay(node, decay);
    }
    bad_node(node, format("member missing: %s", node->name));
  case '?':
    node->cond = walk(node->cond);
    node->then = walk(node->then);
    node->els = walk(node->els);
    node->ty = node->then->ty;
    return node;
  case '*':
  case '/':
  case '%':
  case '<':
  case '|':
  case '^':
  case '&':
  case ND_EQ:
  case ND_NE:
  case ND_LE:
  case ND_SHL:
  case ND_SHR:
  case ND_LOGAND:
  case ND_LOGOR:
    node->lhs = walk(node->lhs);
    node->rhs = walk(node->rhs);
    check_int(node->lhs);
    check_int(node->rhs);
    node->ty = &int_ty;
    return node;
  case ',':
    node->lhs = walk(node->lhs);
    node->rhs = walk(node->rhs);
    node->ty = node->rhs->ty;
    return node;
  case ND_POST_INC:
  case ND_POST_DEC:
  case ND_NEG:
    node->expr = walk(node->expr);
    node->ty = node->expr->ty;
    return node;
  case '!':
  case '~':
    node->expr = walk(node->expr);
    check_int(node->expr);
    node->ty = node->expr->ty;
    return node;
  case ND_ADDR:
    node->expr = walk(node->expr);
    check_lval(node->expr);
    node->ty = ptr_to(node->expr->ty);
    return node;
  case ND_DEREF:
    node->expr = walk(node->expr);

    if (node->expr->ty->ty != PTR)
      bad_node(node, "operand must be a pointer");

    if (node->expr->ty->ptr_to->ty == VOID)
      bad_node(node, "cannot dereference void pointer");

    node->ty = node->expr->ty->ptr_to;
    return maybe_decay(node, decay);
  case ND_RETURN:
  case ND_EXPR_STMT:
    node->expr = walk(node->expr);
    return node;
  case ND_CALL:
    for (int i = 0; i < node->args->len; i++)
      node->args->data[i] = walk(node->args->data[i]);
    node->ty = node->ty->returning;
    return node;
  case ND_COMP_STMT: {
    for (int i = 0; i < node->stmts->len; i++)
      node->stmts->data[i] = walk(node->stmts->data[i]);
    return node;
  }
  case ND_STMT_EXPR:
    node->body = walk(node->body);
    node->ty = &int_ty;
    return node;
  default:
    assert(0 && "unknown node type");
  }
}

static void sema_funcdef(Node *node) {
  for (int i = 0; i < node->args->len; i++)
    node->args->data[i] = walk(node->args->data[i]);
  node->body = walk(node->body);

  int off = 0;
  for (int i = 0; i < node->lvars->len; i++) {
    Var *var = node->lvars->data[i];
    off = roundup(off, var->ty->align);
    off += var->ty->size;
    var->offset = off;
  }
  node->stacksize = off;
}

Type *get_type(Node *node) {
  return walk_noconv(node)->ty;
}

void sema(Program *prog) {
  for (int i = 0; i < prog->nodes->len; i++) {
    Node *node = prog->nodes->data[i];
    if (node->op == ND_DECL)
      continue;
    assert(node->op == ND_FUNC);
    sema_funcdef(node);
  }
}