// ---- test for times ----
// ---- Francis Yao | 1300011063@pku.edu.cn ---- 

// -- see the corresponding .asm file 

#include <sys/times.h>
#include <sys/time.h>

int main()
{
    struct tms buf;
    clock_t clc = times(&buf);
    printf("clc = %d\n", (int)clc);
    printf("length of structure = %d\n", (int)sizeof(struct timeval));
    return 0;
}