CFLAGS=-Wall -std=c11 -g
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

zcc: $(OBJS)
	cc -o $@ $(OBJS) $(LDFLAGS)

$(OBJS): zcc.h

test: zcc
	./zcc -test
	./test.sh

clean:
	rm -f zcc *.o *~ tmp*