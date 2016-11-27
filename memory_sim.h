/*
Here gives the definition of the memory,
and we choose to use an unsigned char array to represent the memory.
*/

#ifndef MEMORY_H_
#define MEMORY_H_

#include <stdint.h>
#include <stdio.h>
#include "cachefile/memory.h"
#include "cachefile/cache.h"
#include "cachefile/def.h"


#ifndef CACHE
#define MEMSIZE 0x1000000
#endif
//#define MAY_STACK 0xfffffffffffff000
#define MAY_STACK 0x00000000feffeb50
#define PGSIZE 0x1000
typedef unsigned long long ull;

// Rounding operations (efficient when n is a power of 2)
// Round down to the nearest multiple of n
#define ROUNDDOWN(a, n)						\
({								\
	uint64_t __a = (uint64_t) (a);				\
	(typeof(a)) (__a - __a % (n));				\
})
// Round up to the nearest multiple of n
#define ROUNDUP(a, n)						\
({								\
	uint64_t __n = (uint64_t) (n);				\
	(typeof(a)) (ROUNDDOWN((uint64_t) (a) + __n - 1, __n));	\
})

class Memory_SIM
{
private:
	unsigned char RWMEMORY[MEMSIZE];            //read/write
	unsigned char STACK[0x2000];               //stack
	ull RWInitAddr;   //the beginning address of the read/write areas
	int hittime;
	uint64_t brk;

	// ---- now comes to the cache part ----

public:

	#ifdef CACHE
	Memory VM;
	Cache LLC;
	Cache L2;
	Cache L1;
	void  PrintCache(ull src);
	#endif

	Memory_SIM();
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


	// for system call
	uint64_t riscvva2simva(uint64_t buf) 
	{
		#ifdef CACHE
			return (uint64_t)(VM._mem_+buf);
		#else
			if(buf >= MAY_STACK)
				return (uint64_t) &STACK[buf-MAY_STACK];
			else return ((uint64_t)RWMEMORY + (buf - RWInitAddr));
		#endif
	}
	#ifdef CACHE
	void ReadBuffer(uint64_t addr, int bytes, unsigned char *content)
	{
		int tmphit;
		int tmpcycle;
		tmphit = tmpcycle = 0;
		for(int i = 0; i < bytes; ++i)
			L1.HandleRequest(addr+i, 1, 1, content+i, tmphit, tmpcycle);
	}
	#endif
	void setbrk(uint64_t pbrk){brk = pbrk;}
	uint64_t sbrk(uint64_t incsize);
	uint64_t sbrk_tkor(uint64_t len);

	#ifdef PRINTCACHE_
	void PrintConfig()
	{
		printf("-------L1--------\n");
		L1.PrintConfig();
		printf("-------L2--------\n");
		L2.PrintConfig();
		printf("-------L3--------\n");
		LLC.PrintConfig();
	}
	#endif
};

#endif