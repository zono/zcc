CFLAGS=-Wall -std=c11 -g
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

zcc: $(OBJS)
	cc -o $@ $(OBJS) $(LDFLAGS)

$(OBJS): zcc.h

test: zcc test/test.c
	./zcc -test

	@gcc -E -P test/test.c > tmp-test.tmp
	@./zcc tmp-test.tmp > tmp-test.s
	@echo 'int global_arr[1] = {5};' | gcc -xc -c -o tmp-test2.o -
	@gcc -static -o tmp-test tmp-test.s tmp-test2.o
	@./tmp-test

clean:
	rm -f zcc *.o *~ tmp* a.out test/*~

.PHONY: test clean