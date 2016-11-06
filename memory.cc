#include "memory.h"
#include <string.h>

Memory::Memory()
{
	memset(RWMEMORY, 0,sizeof(RWMEMORY));
	memset(ROMEMORY, 0, sizeof(ROMEMORY));
	ROInitAddr = RWInitAddr = 0;
}

ull Memory::rwmemoryRead(ull src, int size)
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

void Memory::rwmemoryWrite(ull content, ull src, int size)
{
	if(size > 8)
	{
		cout << "Memory: I am weak, I can't write so many bytes in one time" << endl;
		exit(0);
	}

	unsigned char* tmp = (unsigned char*)content;
	ull offset = src - RWInitAddr;

	for(int i = 0; i < size; ++i)
	{
		RWMEMORY[offset+i] = tmp[i];
	}
}

ull Memory::romemoryRead(ull src, int size)
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
	memcpy((void *)ROMEMORY+offset, src, size);	
}
void Memory::loadRWMem(ull dest, ull src, ull size)
{
	ull offset = dest - RWInitAddr;
	memcpy((void *)RWMEMORY+offset, src, size);	
}