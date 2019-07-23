CFLAGS=-Wall -std=c11 -g
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

zcc: $(OBJS)
	cc -o $@ $(OBJS) $(LDFLAGS)

$(OBJS): zcc.h

test: zcc test/test.c
	./zcc -test

	@gcc -E -P test/test.c | ./zcc - > tmp-test1.s
	@./zcc test/token.c > tmp-test2.s
	@gcc -c -o tmp-test2.o test/gcc.c
	@gcc -static -o tmp-test tmp-test1.s tmp-test2.s tmp-test2.o
	@./tmp-test

clean:
	rm -f zcc *.o *~ tmp* a.out test/*~

.PHONY: test clean