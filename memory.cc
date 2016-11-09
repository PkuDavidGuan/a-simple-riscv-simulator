
#include "memory.h"
#include <string.h>
#include <iostream>
#include <unistd.h>
#include <stdlib.h>

using namespace std;

// extern Memory mymem;

Memory::Memory()
{
	memset(RWMEMORY, 0,sizeof(RWMEMORY));
	memset(ROMEMORY, 0, sizeof(ROMEMORY));
	ROInitAddr = RWInitAddr = 0;
}

ull Memory::rwmemRead(ull src, int size)
{
	if(size > 8)
	{
		cout << "Memory: I am weak, I can't read so many bytes in one time" << endl;
		exit(0);
	}

	unsigned char tmp[8];
	ull offset = src - RWInitAddr;
	memset(tmp, 0, sizeof(tmp));

	for(int i = 0; i < size; ++i)
	{
		tmp[7-i] = RWMEMORY[offset + size - 1 - i];
	}
	
	return *((ull *)tmp);
}

void Memory::rwmemWrite(ull content, ull src, int size)
{
	if(size > 8)
	{
		cout << "Memory: I am weak, I can't write so many bytes in one time" << endl;
		exit(0);
	}

	unsigned char* tmp = (unsigned char*)(&content);
	ull offset = src - RWInitAddr;

	for(int i = 0; i < size; ++i)
	{
		RWMEMORY[offset + size - 1 - i] = tmp[7 - i];
	}
}

ull Memory::romemRead(ull src, int size)
{
	if(size > 8)
	{
		cout << "Memory: I am weak, I can't read so many bytes in one time" << endl;
		exit(0);
	}

	unsigned char tmp[8];
	ull offset = src - ROInitAddr;
	memset(tmp, 0, sizeof(tmp));

	for(int i = 0; i < size; ++i)
	{
		tmp[7-i] = ROMEMORY[offset + size - 1 - i];
	}
	
	return *((ull *)tmp);
}

void Memory::loadROMem(ull dest, ull src, ull size)
{
	ull offset = dest - ROInitAddr;
	memcpy((void *)(ROMEMORY+offset), (void *) src, (size_t) size);	
}
void Memory::loadRWMem(ull dest, ull src, ull size)
{
	ull offset = dest - RWInitAddr;
	memcpy((void *)(RWMEMORY+offset), (void *) src, (size_t) size);	
}