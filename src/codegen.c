#include "zcc.h"

static int label;

void gen(Function *fn) {
  char *ret = format(".Lend%d", label++);

  printf(".global %s\n", fn->name);
  printf("%s:\n", fn->name);
  printf("  push r12\n");
  printf("  push r13\n");
  printf("  push r14\n");
  printf("  push r15\n");
  printf("  push rbp\n");
  printf("  mov rbp, rsp\n");

  for (int i = 0; i < fn->ir->len; i++) {
    IR *ir = fn->ir->data[i];

    switch (ir->op) {
    case IR_IMM:
      printf("  mov %s, %d\n", regs[ir->lhs], ir->rhs);
      break;
    case IR_ADD_IMM:
      printf("  add %s, %d\n", regs[ir->lhs], ir->rhs);
      break;
    case IR_MOV:
      printf("  mov %s, %s\n", regs[ir->lhs], regs[ir->rhs]);
      break;
    case IR_RETURN:
      printf("  mov rax, %s\n", regs[ir->lhs]);
      printf("  jmp %s\n", ret);
      break;
    case IR_CALL: {
      char *arg[] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
      for (int i = 0; i < ir->nargs; i++)
	printf("  mov %s, %s\n", arg[i], regs[ir->args[i]]);

      printf("  push r10\n");
      printf("  push r11\n");
      printf("  mov rax, 0\n");
      printf("  call %s\n", ir->name);
      printf("  pop r11\n");
      printf("  pop r10\n");

      printf("  mov %s, rax\n", regs[ir->lhs]);
      break;
    }
    case IR_LABEL:
      printf(".L%d:\n", ir->lhs);
      break;
    case IR_JMP:
      printf("  jmp .L%d\n", ir->lhs);
      break;
    case IR_UNLESS:
      printf("  cmp %s, 0\n", regs[ir->lhs]);
      printf("  je .L%d\n", ir->rhs);
      break;
    case IR_ALLOCA:
      if (ir->rhs)
	printf("  sub rsp, %d\n", ir->rhs);
      printf("  mov %s, rsp\n", regs[ir->lhs]);
      break;
    case IR_LOAD:
      printf("  mov %s, [%s]\n", regs[ir->lhs], regs[ir->rhs]);
      break;
    case IR_STORE:
      printf("  mov [%s], %s\n", regs[ir->lhs], regs[ir->rhs]);
      break;
    case '+':
      printf("  add %s, %s\n", regs[ir->lhs], regs[ir->rhs]);
      break;
    case '-':
      printf("  sub %s, %s\n", regs[ir->lhs], regs[ir->rhs]);
      break;
    case '*':
      printf("  mov rax, %s\n", regs[ir->rhs]);
      printf("  mul %s\n", regs[ir->lhs]);
      printf("  mov %s, rax\n", regs[ir->lhs]);
      break;
    case '/':
      printf("  mov rax, %s\n", regs[ir->lhs]);
      printf("  cqo\n");
      printf("  div %s\n", regs[ir->rhs]);
      printf("  mov %s, rax\n", regs[ir->lhs]);
      break;
    case IR_NOP:
      break;
    default:
      assert(0 && "unknown operator");
    }
  }

  printf("%s:\n", ret);
  printf("  mov rsp, rbp\n");
  printf("  pop rbp\n");
  printf("  pop r15\n");
  printf("  pop r14\n");
  printf("  pop r13\n");
  printf("  pop r12\n");
  printf("  ret\n");
}

void gen_x86(Vector *fns) {
  printf(".intel_syntax noprefix\n");

  for (int i = 0; i < fns->len; i++)
    gen(fns->data[i]);
}