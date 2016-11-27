all: simulator test dry2 dry2reg

CC = g++
RGCC = riscv64-unknown-elf-gcc
OBJDUMP = riscv64-unknown-elf-objdump

INCLUDE = .

TESTPATH = testfile

CFLAGS = -g -Wall

OBJS = decode.o loader.o memory_sim.o syscall.o register.o cache.o memory.o

DRYPATH = dryfile

DRYSRC = dhry_1.c dhry_2.c
DRYHDR = dhry.h

simulator: $(OBJS)
	$(CC) $(CFLAGS) -o simulator $(OBJS)

loader.o:
	$(CC) $(CFLAGS) -g -c loader.cpp
	
decode.o:
	$(CC) $(CFLAGS) -g -c decode.cpp

memory_sim.o:
	$(CC) $(CFLAGS) -g -c memory_sim.cc

register.o:
	$(CC) $(CFLAGS) -g -c register.cc

syscall.o: syscall.h
	$(CC) $(CFLAGS) -g -c syscall.cc

cache.o: cachefile/cache.h cachefile/def.h
	$(CC) -g -c cachefile/cache.cc

memory.o: cachefile/memory.h
	$(CC) -g -c cachefile/memory.cc

test: 
	$(RGCC) -g -o test $(TESTPATH)/printf_test.c
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
