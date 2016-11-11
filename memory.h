/*
Here gives the definition of the memory,
and we choose to use an unsigned char array to represent the memory.
*/

#ifndef MEMORY_H_
#define MEMORY_H_

#define MEMSIZE 0x1000000
#define MAY_STACK 0xfffffffffffdffff
typedef unsigned long long ull;

class Memory
{
private:
	unsigned char RWMEMORY[MEMSIZE];            //read/write
	unsigned char STACK[2097152];               //stack
	ull RWInitAddr;   //the beginning address of the read/write areas
public:
	Memory();
	//Users and loader can use the following two functions to read/write in the RWMEMORY.
	unsigned char rwmemReadByte(ull src);
	void rwmemWriteByte(unsigned char content, ull src);

	unsigned short rwmemReadShort(ull src);
	void rwmemWriteShort(unsigned short content, ull src);

	unsigned int rwmemReadWord(ull src);
	void rwmemWriteWord(unsigned int content, ull src);

	ull rwmemReadDword(ull src);
	void rwmemWriteDword(ull content, ull src);
	//Loaders should set the RWInitAddr.
	void setRWInitAddr(ull addr);
	void loadRWMem(ull dest, ull src, ull size);
};

#endif