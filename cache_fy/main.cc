#include "stdio.h"
#include "cache.h"
#include "memory.h"
#include "string.h"
#include "assert.h"

int main(void) {
	Memory VIRMEM;
	Cache L(0x800, 8, (0x800)/512, 0, 1, 1, &VIRMEM);

	printf("Let me know the name of the elf file:");
	char filename[20];
	scanf("%s", filename);
	freopen( filename, "r", stdin);

	char action[2];
	unsigned long long addr;
	char content[8];
	memset(content, 0, sizeof(content));

	// maybe bad performance, need improvement
	while(scanf("%s %lld", action, &addr) != -1)
	{
		if(action[0] == 'r')
			L.HandleRequest(addr, 1, 1, content, &hit, &cycle);
		else if(action[0] == 'w')
			L.HandleRequest(addr, 1, 0, content, &hit, &cycle);
		else
		{
			printf("action is %s, addr is %lld\n", action, addr);
			printf("Illegal action. EXIT!\n");
			assert(false);
		}
	}

    return 0;
}

