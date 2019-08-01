#include "zcc.h"

void usage() {
  error("Usage: zcc [-test] [-debug] <file>");
}

int main(int argc, char **argv) {
  if (argc == 1)
    usage();

  if (argc == 2 && !strcmp(argv[1], "-test")) {
    util_test();
    return 0;
  }

  char *path;
  bool debug = false;

  if (argc == 3 && !strcmp(argv[1], "-debug")) {
    debug = true;
    path = argv[2];
  } else {
    if (argc != 2)
      usage();
    path = argv[1];
  }

  Vector *tokens = tokenize(path, true);
  if (debug)
    debug_tokens(tokens);

  Program *prog = parse(tokens);
  if (debug)
    debug_parser(prog);

  sema(prog);

  gen_ir(prog);
  if (debug)
    dump_ir(prog->funcs);

  optimize(prog);
  liveness(prog);
  alloc_regs(prog);

  if (debug)
    dump_ir(prog->funcs);

  gen_x86(prog);

  return 0;
}