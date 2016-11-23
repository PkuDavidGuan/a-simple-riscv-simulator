all: simulator test dry2 dry2reg

CC = g++
RGCC = riscv64-unknown-elf-gcc
OBJDUMP = riscv64-unknown-elf-objdump

INCLUDE = .

TESTPATH = testfile

CFLAGS = -g -Wall

OBJS = decode.o loader.o memory.o syscall.o register.o

DRYPATH = dryfile

DRYSRC = dhry_1.c dhry_2.c
DRYHDR = dhry.h

simulator: $(OBJS)
	$(CC) $(CFLAGS) -o simulator $(OBJS)

loader.o:
	$(CC) $(CFLAGS) -c loader.cpp
	
decode.o:
	$(CC) $(CFLAGS) -c decode.cpp

memory.o:
	$(CC) $(CFLAGS) -c memory.cc

register.o:
	$(CC) $(CFLAGS) -c register.cc

syscall.o: syscall.h
	$(CC) $(CFLAGS) -c syscall.cc

test: 
	$(RGCC) -g -o test $(TESTPATH)/scanf_test.c
	$(OBJDUMP) -S -l -d  test > test.asm

TIME_FUNC =  -DTIMES 
GCCOPTIM =       -O
HZ =     60 
GCCFLAGS= $(GCCOPTIM) $(TIME_FUNC) -DHZ=$(HZ) -g
LFLAGS=

dry2:	dhry_1.c dhry_2.c dhry.h
	$(RGCC) $(GCCFLAGS) $(DRYSRC) $(LFLAGS) -o $@
	$(OBJDUMP) -S -l -d  dry2 > dry2.asm

dry2reg: dhry_1.c dhry_2.c dhry.h
	$(RGCC) $(GCCFLAGS) -DREG=register $(DRYSRC) $(LFLAGS) -o $@
	$(OBJDUMP) -S -l -d  dry2reg > dry2reg.asm

.PHONY: clean

clean:
	rm -rf *.o simulator test.asm test dry2 dry2reg dry2.asm dry2reg.asm
