#include "memory.h"
#include "string.h"

void Memory::HandleRequest(uint64_t addr, int bytes, int read,
                          unsigned char *content, int &hit, int &cycle) {
	
	cycle += latency_.hit_latency;
	hit = 1;
	if(read == 1)
		memcpy(content, _mem_+addr, bytes);
	else if(read == 0)
	 	memcpy(_mem_+addr, content, bytes);
}

