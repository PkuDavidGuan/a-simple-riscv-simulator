CC=g++

all: sim

sim: main.o cache.o memory.o
	$(CC) -g -mcmodel=large -o $@ $^

main.o: cache.h
	$(CC) -g -mcmodel=large -c main.cc

cache.o: cache.h def.h
	$(CC) -g -mcmodel=large -c cache.cc

memory.o: memory.h
	$(CC) -g -mcmodel=large -c memory.cc
.PHONY: clean

clean:
	rm -rf sim *.o
