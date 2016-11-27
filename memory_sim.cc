
#include "memory_sim.h"
#include "memory.h"
#include <string.h>
#include <iostream>
#include <unistd.h>
#include <stdlib.h>
#include "register.h"
#include "cachefile/cache.h"
#include "cachefile/def.h"

#define TRACEMEM 0x225d8
#define HITLIMIT 1

using namespace std;

Memory_SIM::Memory_SIM()
{
	memset(RWMEMORY, 0,sizeof(RWMEMORY));
	memset(STACK, 0, sizeof(STACK));
	RWInitAddr = -1;
	hittime = 0;

	#ifdef CACHE
	LLC.init(LLCSIZE, LLCASS, LLCSETNUM, LLCWT, LLCWA, LLCHITCYC, &VM, 3);
	L2.init(L2SIZE, L2ASS, L2SETNUM, L2WT, L2WA, L2HITCYC, &LLC, 2);
	L1.init(L1SIZE, L1ASS, L1SETNUM, L1WT, L1WA, L1HITCYC, &L2, 1);
	#endif
}

unsigned char Memory_SIM::rwmemReadByte(ull src)
{
#ifdef CACHE
	unsigned char ret;
	int hit, cycle;
	L1.HandleRequest((uint64_t)src, 1, 1, (unsigned char *) &ret, hit, cycle);
	#ifdef DEBUG
	printf("function %s, addr: %llx, return value: %hhx\n", __func__, src, ret);
	#endif
	return ret;
#else
	if(src >= MAY_STACK)
		return STACK[src-MAY_STACK];

	ull offset = src - RWInitAddr;
	
	return RWMEMORY[offset];
#endif
}

void Memory_SIM::rwmemWriteByte(unsigned char content, ull src)
{
#ifdef CACHE
	int hit, cycle;
	L1.HandleRequest((uint64_t)src, 1, 0, (unsigned char *) &content, hit, cycle);
	#ifdef DEBUG
	printf("function %s, writting %hhx into addr %llx", __func__, content, src);
	#endif
	return;
#else
	if(src == TRACEMEM)
	{
		hittime ++;
		// printf("pc: 0x%lx, hit TRACEMEM\n", reg.getPC());
		// printf("content changed to 0x%lx\n", content);
		/*
		if(hittime == HITLIMIT)
		{
			printf("hit TRACEMEM\n");
			while(1);
		}*/
	}

	if(src >= MAY_STACK)
	{
		STACK[src-MAY_STACK] = content;
		return;
	}
	ull offset = src - RWInitAddr;

	RWMEMORY[offset] = content;
#endif
}

unsigned short Memory_SIM::rwmemReadShort(ull src)
{
#ifdef CACHE
	unsigned short ret;
	int hit, cycle;
	L1.HandleRequest((uint64_t)src, 2, 1, (unsigned char *) &ret, hit, cycle);
	#ifdef DEBUG
	printf("function %s, addr: %llx, return value: %hx\n", __func__, src, ret);
	#endif
	return ret;
#else
	unsigned char tmp[2];
	ull offset;
	memset(tmp, 0, sizeof(tmp));

	if(src >= MAY_STACK)
	{
		offset = src - MAY_STACK;
		tmp[0] = STACK[offset];
		tmp[1] = STACK[offset + 1];
	}
	else
	{
		offset = src - RWInitAddr;
		tmp[0] = RWMEMORY[offset];
		tmp[1] = RWMEMORY[offset + 1];
	}
	return *((unsigned short *)tmp);
#endif
}
void Memory_SIM::rwmemWriteShort(unsigned short content, ull src)
{
#ifdef CACHE
	int hit, cycle;
	L1.HandleRequest((uint64_t)src, 2, 0, (unsigned char *) &content, hit, cycle);
	#ifdef DEBUG
	printf("function %s, writting %hx into addr %llx", __func__, content, src);
	#endif
	return;
#else
	if(src == TRACEMEM)
	{
		hittime ++;
		// printf("pc: 0x%lx, hit TRACEMEM\n", reg.getPC());
		// printf("content changed to 0x%lx\n", content);
		/*
		if(hittime == HITLIMIT)
		{
			printf("hit TRACEMEM\n");
			while(1);
		}*/
	}


	ull offset;
	if(src >= MAY_STACK)
	{
		offset = src - MAY_STACK;
		memcpy((void *)(STACK+offset), (void *)(&content), (size_t)2);
	}
	else
	{
		offset = src - RWInitAddr;
		memcpy((void *)(RWMEMORY+offset), (void *)(&content), (size_t)2);
	}
#endif
}

unsigned int Memory_SIM::rwmemReadWord(ull src)
{
#ifdef CACHE
	unsigned int ret;
	int hit, cycle;
	L1.HandleRequest((uint64_t)src, 4, 1, (unsigned char *)&ret, hit, cycle);
	#ifdef DEBUG
	printf("function %s, addr: %llx, return value: %x\n", __func__, src, ret);
	#endif
	return ret;
#else
	unsigned char tmp[4];
	ull offset;
	memset(tmp, 0, sizeof(tmp));

	if(src >= MAY_STACK)
	{
		offset = src - MAY_STACK;
		tmp[0] = STACK[offset];
		tmp[1] = STACK[offset + 1];
		tmp[2] = STACK[offset + 2];
		tmp[3] = STACK[offset + 3];
	}
	else
	{
		offset = src - RWInitAddr;
		tmp[0] = RWMEMORY[offset];
		tmp[1] = RWMEMORY[offset + 1];
		tmp[2] = RWMEMORY[offset + 2];
		tmp[3] = RWMEMORY[offset + 3];
	}
	
	return *((unsigned int *)tmp);
#endif
}

void Memory_SIM::rwmemWriteWord(unsigned int content, ull src)
{
#ifdef CACHE
	int hit, cycle;
	L1.HandleRequest((uint64_t)src, 4, 0, (unsigned char *) &content, hit, cycle);
	#ifdef DEBUG
	printf("function %s, writting %x into addr %llx", __func__, content, src);
	#endif
	return;
#else
	if(src == TRACEMEM)
	{
		hittime ++;
		// printf("pc: 0x%lx, hit TRACEMEM\n", reg.getPC());
		// printf("content changed to 0x%lx\n", content);
		/*
		if(hittime == HITLIMIT)
		{
			printf("hit TRACEMEM\n", content);
			while(1);
		}*/
	}


	ull offset;
	if(src >= MAY_STACK)
	{
		offset = src - MAY_STACK;
		memcpy((void *)(STACK+offset), (void *)(&content), (size_t)4);
	}
	else
	{
		offset = src - RWInitAddr;
		memcpy((void *)(RWMEMORY+offset), (void *)(&content), (size_t)4);
	}
#endif
}

ull Memory_SIM::rwmemReadDword(ull src)
{
#ifdef CACHE
	unsigned long long ret;
	int hit, cycle;
	L1.HandleRequest((uint64_t)src, 8, 1, (unsigned char *)&ret, hit, cycle);
	#ifdef DEBUG
	printf("function %s, addr: %llx, return value: %llx\n", __func__, src, ret);
	#endif
	return ret;
#else
	unsigned char tmp[8];
	ull offset;
	memset(tmp, 0, sizeof(tmp));

	if(src >= MAY_STACK)
	{
		offset = src - MAY_STACK;
		tmp[0] = STACK[offset];
		tmp[1] = STACK[offset + 1];
		tmp[2] = STACK[offset + 2];
		tmp[3] = STACK[offset + 3];
		tmp[4] = STACK[offset + 4];
		tmp[5] = STACK[offset + 5];
		tmp[6] = STACK[offset + 6];
		tmp[7] = STACK[offset + 7];
	}
	else
	{
		offset = src - RWInitAddr;
		tmp[0] = RWMEMORY[offset];
		tmp[1] = RWMEMORY[offset + 1];
		tmp[2] = RWMEMORY[offset + 2];
		tmp[3] = RWMEMORY[offset + 3];
		tmp[4] = RWMEMORY[offset + 4];
		tmp[5] = RWMEMORY[offset + 5];
		tmp[6] = RWMEMORY[offset + 6];
		tmp[7] = RWMEMORY[offset + 7];
	}
	/*	
	if(src == 0xfffffffffffffcbf + 136)
	{
		printf("reading number 0x%lx into target address\n", *((ull *)tmp));
	}*/
	return *((ull *)tmp);
#endif
}

void Memory_SIM::rwmemWriteDword(ull content, ull src)
{
#ifdef CACHE
	int hit, cycle;
	L1.HandleRequest((uint64_t)src, 8, 0, (unsigned char *)&content, hit, cycle);
	#ifdef DEBUG
	printf("function %s, writting %llx into addr %llx", __func__, content, src);
	#endif
	return;
#else
	if(src == TRACEMEM)
	{
		hittime ++;
		// printf("pc: 0x%lx, hit TRACEMEM\n", reg.getPC());
		// printf("content changed to 0x%lx\n", content);
		/*
		if(hittime == HITLIMIT)
		{
			printf("hit TRACEMEM\n", content);
			while(1);
		}*/
	}


	ull offset;
	if(src >= MAY_STACK)
	{
		offset = src - MAY_STACK;
		memcpy((void *)(STACK+offset), (void *)(&content), (size_t)8);
	}
	else
	{
		offset = src - RWInitAddr;
		memcpy((void *)(RWMEMORY+offset), (void *)(&content), (size_t)8);
	}
#endif
}

void Memory_SIM::setRWInitAddr(ull addr) 
{
#ifdef CACHE
#else
	if(RWInitAddr == -1)
		RWInitAddr = addr;
	else if(RWInitAddr > addr)
		RWInitAddr = addr; 
#endif
}

void Memory_SIM::loadRWMem(ull dest, ull src, ull size)
{
#ifdef CACHE
	memcpy((void *)(VM._mem_ + dest), (void *) src, (size_t) size);	
#else
	ull offset = dest - RWInitAddr;
	memcpy((void *)(RWMEMORY+offset), (void *) src, (size_t) size);	
#endif
}

#define BRKSIZE 0X1000
uint64_t Memory_SIM::sbrk(uint64_t position)
{
	uint64_t tmpbrk = position;
	// printf("sbrk, the position is: 0x%lx\n", position);
	brk = ROUNDUP(position, BRKSIZE);
	// brk += ROUNDUP(len, BRKSIZE);
	// printf("sbrk, increase brk from 0x%lx to 0x%lx\n", tmpbrk, brk);
	return tmpbrk;
}

uint64_t Memory_SIM::sbrk_tkor(uint64_t len)
{
	uint64_t tmpbrk = brk;
	// printf("sbrk_tkor, the position is: 0x%lx\n", position);
	brk += ROUNDUP(len, BRKSIZE);
	// printf("sbrk_tkor, increase brk from 0x%lx to 0x%lx\n", tmpbrk, brk);
	return tmpbrk;
}

#ifdef CACHE
void Memory_SIM::PrintCache(ull src)
{
	printf("--------L1---------\n");
	L1.PrintLine(src);
	printf("--------L2---------\n");
	L2.PrintLine(src);
	printf("-------LLC---------\n");
	LLC.PrintLine(src);
}
#endif