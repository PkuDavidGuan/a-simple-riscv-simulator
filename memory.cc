
#include "memory.h"
#include <string.h>
#include <iostream>
#include <unistd.h>
#include <stdlib.h>

using namespace std;

Memory::Memory()
{
	memset(RWMEMORY, 0,sizeof(RWMEMORY));
	memset(STACK, 0, sizeof(STACK));
	RWInitAddr = -1;
}

unsigned char Memory::rwmemReadByte(ull src)
{
	if(src >= MAY_STACK)
		return STACK[src-MAY_STACK];

	ull offset = src - RWInitAddr;
	
	return RWMEMORY[offset];
}
void Memory::rwmemWriteByte(unsigned char content, ull src)
{
	if(src >= MAY_STACK)
	{
		STACK[src-MAY_STACK] = content;
		return;
	}
	ull offset = src - RWInitAddr;

	RWMEMORY[offset] = content;
}

unsigned short Memory::rwmemReadShort(ull src)
{
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
}
void Memory::rwmemWriteShort(unsigned short content, ull src)
{
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
}

unsigned int Memory::rwmemReadWord(ull src)
{
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
}
void Memory::rwmemWriteWord(unsigned int content, ull src)
{
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
}

ull Memory::rwmemReadDword(ull src)
{
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
	return *((ull *)tmp);
}
void Memory::rwmemWriteDword(ull content, ull src)
{
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
}

void Memory::setRWInitAddr(ull addr) 
{
	if(RWInitAddr == -1)
		RWInitAddr = addr;
	else if(RWInitAddr > addr)
		RWInitAddr = addr; 
}

void Memory::loadRWMem(ull dest, ull src, ull size)
{
	ull offset = dest - RWInitAddr;
	memcpy((void *)(RWMEMORY+offset), (void *) src, (size_t) size);	
}
