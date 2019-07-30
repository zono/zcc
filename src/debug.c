#include "zcc.h"

static char indent[] = "";

void debug_tokens(Vector *tokens) {
  fprintf(stderr, "====================\nDebug Tokens\n====================\n");

  for (int i = 0; i < tokens->len; i++) {
    Token *t = tokens->data[i];
    if (t->ty < TK_NUM) {
      fprintf(stderr, "%c\tty=%d\tval=%d\tname=%s\n", t->ty, t->ty, t->val,
              t->name);
    } else if (t->ty == TK_NUM) {
      fprintf(stderr, "%d\tty=%d\tval=%d\tname=%s\n", t->val, t->ty, t->val,
              t->name);
    } else if (t->ty < TK_EOF) {
      fprintf(stderr, "%s\tty=%d\tval=%d\tname=%s\n", t->name, t->ty, t->val,
              t->name);
    } else {
      fprintf(stderr, "%s\tty=%d\tval=%d\tname=%s\n", "EOF", t->ty, t->val,
              t->name);
    }
  }
}

void print_type(Type *ty) {
  char *c;
  switch (ty->ty) {
  case FUNC:
    c = "FUNC";
    break;
  case INT:
    c = "INT";
    break;
  default:
    error("invalid type %d", ty->ty);
  }
  fprintf(stderr, "%sty=%s\n", indent, c);
}

void print_node_op(int op) {
  char *c;
  switch (op) {
  case ND_NUM:
    c = "ND_NUM";
    break;
  case ND_STRUCT:
    c = "ND_STRUCT";
    break;
  case ND_DECL:
    c = "ND_DECL";
    break;
  case ND_VARDEF:
    c = "ND_VARDEF";
    break;
  case ND_VARREF:
    c = "ND_VARREF";
    break;
  case ND_CAST:
    c = "ND_CAST";
    break;
  case ND_IF:
    c = "ND_IF";
    break;
  case ND_FOR:
    c = "ND_FOR";
    break;
  case ND_DO_WHILE:
    c = "ND_DO_WHILE";
    break;
  case ND_SWITCH:
    c = "ND_SWITCH";
    break;
  case ND_CASE:
    c = "ND_CASE";
    break;
  case ND_BREAK:
    c = "ND_BREAK";
    break;
  case ND_CONTINUE:
    c = "ND_CONTINUE";
    break;
  case ND_ADDR:
    c = "ND_ADDR";
    break;
  case ND_DEREF:
    c = "ND_DEREF";
    break;
  case ND_DOT:
    c = "ND_DOT";
    break;
  case ND_EQ:
    c = "ND_EQ";
    break;
  case ND_NE:
    c = "ND_NE";
    break;
  case ND_LE:
    c = "ND_LE";
    break;
  case ND_LOGAND:
    c = "ND_LOGAND";
    break;
  case ND_LOGOR:
    c = "ND_LOGOR";
    break;
  case ND_SHL:
    c = "ND_SHL";
    break;
  case ND_SHR:
    c = "ND_SHR";
    break;
  case ND_MOD:
    c = "ND_MOD";
    break;
  case ND_RETURN:
    c = "ND_RETURN";
    break;
  case ND_CALL:
    c = "ND_CALL";
    break;
  case ND_FUNC:
    c = "ND_FUNC";
    break;
  case ND_COMP_STMT:
    c = "ND_COMP_STMT";
    break;
  case ND_EXPR_STMT:
    c = "ND_EXPR_STMT";
    break;
  case ND_STMT_EXPR:
    c = "ND_STMT_EXPR";
    break;
  case ND_NULL:
    c = "ND_NULL";
    break;
  case '+':
    c = "+";
    break;
  default:
    error("invalid node operator %d", op);
  }
  fprintf(stderr, "%sop=%s\n", indent, c);
}

void push_back(char *str) {
  const int len = strlen(str);
  str[len] = '\t';
  str[len + 1] = '\0';
}

void erase_tail(char *str) {
  const int len = strlen(str);
  if (len <= 1) {
    *str = '\0';
  } else {
    str[len - 1] = '\0';
  }
}

void print_var(Var *var) {
  print_type(var->ty);
}

void print_bb(BB *bb) {
}

void print_node(Node *node, char *tag) {
  push_back(indent);

  fprintf(stderr, "%s// %s\n", indent, tag);

  print_node_op(node->op);

  if (node->ty)
    print_type(node->ty);

  if (node->op == ND_NUM)
    fprintf(stderr, "%sval=%d\n", indent, node->val);

  if (node->lhs)
    print_node(node->lhs, "lhs");

  if (node->rhs)
    print_node(node->rhs, "rhs");

  if (node->expr)
    print_node(node->expr, "expr");

  if (node->stmts) {
    for (int i = 0; i < node->stmts->len; i++) {
      Node *n = node->stmts->data[i];
      print_node(n, "stmt");
    }
  }

  if (node->name)
    fprintf(stderr, "%sname=%s\n", indent, node->name);

  if (node->var)
    print_var(node->var);

  if (node->cond)
    print_node(node->cond, "cond");

  if (node->then)
    print_node(node->then, "then");

  if (node->els)
    print_node(node->els, "els");

  if (node->init)
    print_node(node->init, "init");

  if (node->body)
    print_node(node->body, "body");

  if (node->cases) {
    for (int i = 0; i < node->cases->len; i++) {
      Node *n = node->cases->data[i];
      print_node(n, "case");
    }
  }

  if (node->bb)
    print_bb(node->bb);

  if (node->target)
    print_node(node->target, "target");

  if (node->break_)
    print_bb(node->break_);

  if (node->continue_)
    print_bb(node->continue_);

  if (node->params) {
    for (int i = 0; i < node->params->len; i++) {
    }
  }

  if (node->args) {
    for (int i = 0; i < node->args->len; i++) {
    }
  }

  erase_tail(indent);
}

void print_function(Function *func) {
  fprintf(stderr, "func->name=%s\n", func->name);

  if (func->node)
    print_node(func->node, "function");

  if (func->lvars) {
    for (int i = 0; i < func->lvars->len; i++) {
      Var *var = func->lvars->data[i];
      print_var(var);
    }
  }

  if (func->bbs) {
    for (int i = 0; i < func->bbs->len; i++) {
      BB *bb = func->bbs->data[i];
      print_bb(bb);
    }
  }
}

void print_program(Program *prog) {
  // gvars
  if (prog->gvars) {
    fprintf(stderr, "prog->gvars->len=%d\n", prog->gvars->len);

    for (int i = 0; i < prog->gvars->len; i++) {
      Var *v = prog->gvars->data[i];
      fprintf(stderr, "ty=%d\n", v->ty->ty);
    }
  }

  // funcs
  if (prog->funcs) {
    fprintf(stderr, "prog->funcs->len=%d\n", prog->funcs->len);

    for (int i = 0; i < prog->funcs->len; i++) {
      Function *f = prog->funcs->data[i];
      print_function(f);
    }
  }
}

void debug_parser(Program *prog) {
  fprintf(stderr, "====================\nDebug Parser\n====================\n");
  print_program(prog);
  fprintf(stderr, "====================\n");
}