all: simulator test

CC = g++
RGCC = riscv64-unknown-elf-gcc
OBJDUMP = riscv64-unknown-elf-objdump

INCLUDE = .

CFLAGS = -g -Wall

OBJS = decode.o loader.o memory.o 

simulator: $(OBJS)
	$(CC) $(CFLAGS) -o simulator $(OBJS)

loader.o:
	$(CC) $(CFLAGS) -c loader.cpp

decode.o:
	$(CC) $(CFLAGS) -c decode.cpp

memory.o:
	$(CC) $(CFLAGS) -c memory.cc

test: test.o
	$(RGCC) -g -o test test.c
	$(OBJDUMP) -S -l -d  test > test.asm

.PHONY: clean

clean:
	rm -rf *.o simulator test