CFLAGS=-Wall -std=c11 -g
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

zcc: $(OBJS)
	cc -o $@ $(OBJS) $(LDFLAGS)

$(OBJS): zcc.h

test: zcc test/test.c
	./zcc -test

	@./zcc test/test.c > tmp-test1.s
	@gcc -c -o tmp-test2.o test/gcc.c
	@gcc -static -o tmp-test1 tmp-test1.s tmp-test2.o
	@./tmp-test1

	@./zcc test/token.c > tmp-test2.s
	@gcc -static -o tmp-test2 tmp-test2.s
	@./tmp-test2

clean:
	rm -f zcc *.o *~ tmp* a.out test/*~

format:
	clang-format -i *.c *.h

.PHONY: test clean