all: simulator test

CC = g++

INCLUDE = .

CFLAGS = -g -Wall

OBJS = loader.o decode.o memory.o 

simulator: $(OBJS)
	$(CC) $(CFLAGS) -o simulator $(OBJS)

loader.o:
	$(CC) $(CFLAGS) -c loader.cpp

decode.o:
	$(CC) $(CFLAGS) -c decode.cpp

memory.o:
	$(CC) $(CFLAGS) -c memory.cc

test: test.o
	$(CC) -o test test.c

.PHONY: clean

clean:
	rm -rf *.o simulator test
