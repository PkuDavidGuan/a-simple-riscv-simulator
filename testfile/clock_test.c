// ---- test for clock type ----
// ---- Francis Yao | 1300011063@pku.edu.cn ---- 

// -- see the corresponding .asm file 

#include <stdio.h>
#include <time.h>

// output: size of clock: 8. int of clock: 475

int main()
{
    clock_t clc = clock();
    printf("size of clock: %u. int of clock: %d.\n", sizeof(clock_t), (int) clc);
    return 0;
}
