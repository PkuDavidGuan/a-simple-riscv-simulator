#include "stdio.h"
#include "cache.h"
#include "memory.h"
#include "string.h"
#include "assert.h"
Memory VIRMEM;
Cache L(32768, 8, 64, 1, 0, 1, &VIRMEM);
int main(void) {
	printf("Let me know the name of the trace file:");
	char filename[20];
	scanf("%s", filename);
	printf("\n");
	freopen( filename, "r", stdin);

	char action[2];
	unsigned long long addr;
	unsigned char _content_[8];
	memset(_content_, 0, sizeof(_content_));

	int cycle = 0;
	int hit = 0;
	while(scanf("%s %x", action, &addr) != -1)
	{
		//printf("%s %lld\n", action, addr);
		if(action[0] == 'r')
			L.HandleRequest(addr, 0, 1, _content_, hit, cycle);
		else if(action[0] == 'w')
			L.HandleRequest(addr, 0, 0, _content_, hit, cycle);
		else
		{
			printf("action is %s, addr is %lld\n", action, addr);
			printf("Illegal action. EXIT!\n");
			assert(false);
		}
	}

	StorageStats result;
	L.GetStats(result);
	
	printf("Total access:      %d\n", result.access_counter);
	printf("Total miss time:   %d\n", result.miss_num);
	printf("Miss rate:         %f\n", (float)(result.miss_num)/result.access_counter);
	printf("Total replacement: %d\n", result.replace_num);
	printf("Lower storage:     %d\n", result.fetch_num);
	printf("Total cycle:       %d\n", cycle);
    return 0;
}

