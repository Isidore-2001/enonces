CC = gcc
CFLAGS = -g -c 
CFLAGS32 = -g -c -m32 -fno-pie -mno-shstk -fcf-protection=none -fno-stack-protector
LDFLAGS32 = -m32
LD = gcc

all : stack-example stack-example.s list-example

stack-example.o : stack-example.c Makefile
	$(CC) $(CFLAGS32) $< -o $@

stack-example : stack-example.o
	$(CC) $(LDFLAGS32) $< -o $@

stack-example.s : stack-example
	objdump -d -S -Mintel $< > $@

list-example.o : list-example.c Makefile
	$(CC) $(CFLAGS) $< -o $@

list-example : list-example.o
	$(CC) $^ -o $@

clean :
	rm *.o
	rm stack-example
	rm list-example
