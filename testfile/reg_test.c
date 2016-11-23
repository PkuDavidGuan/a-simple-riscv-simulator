// ---- test for register number ----
// ---- Francis Yao | 1300011063@pku.edu.cn ---- 

// -- see the corresponding .asm file 

#include <stdio.h>

int main()
{
    unsigned int x = 0x00078513;
    unsigned int y = 0x80c1a583;
    unsigned int z = 0x8101a603;
    unsigned int w = 0x00078693;
    unsigned int v = 0x00070513;
    unsigned int u = 0x31052883;
    unsigned int t = 0x02f13823;
    unsigned int a = 0x04913423;
    unsigned int b = 0x05213023;
    unsigned int c = 0x03313c23;
    unsigned int d = 0x03413823;
    unsigned int e = 0x03513423;
    unsigned int f = 0x03613023;
    unsigned int g = 0x01713c23;
    unsigned int h = 0x01813823;
    unsigned int i = 0x01913423;
    unsigned int j = 0x04813823;
    unsigned int f1 = 0xe20585d3;
    unsigned int f2 = 0xf20d0653;
    printf("a0 = 0x%x\n", ((x << 20) >> 27));
    printf("a1 = 0x%x\n", ((y << 20) >> 27));
    printf("a2 = 0x%x\n", ((z << 20) >> 27));
    printf("a3 = 0x%x\n", ((w << 20) >> 27));
    printf("a4 = 0x%x\n", ((v << 12) >> 27));
    printf("a5 = 0x%x\n", ((x << 12) >> 27));
    printf("a7 = 0x%x\n", ((u << 20) >> 27));
    printf("s0 = 0x%x\n", ((j << 7) >> 27));
    printf("s1 = 0x%x\n", ((a << 7) >> 27));
    printf("s2 = 0x%x\n", ((b << 7) >> 27));
    printf("s3 = 0x%x\n", ((c << 7) >> 27));
    printf("s4 = 0x%x\n", ((d << 7) >> 27));
    printf("s5 = 0x%x\n", ((e << 7) >> 27));
    printf("s6 = 0x%x\n", ((f << 7) >> 27));
    printf("s7 = 0x%x\n", ((g << 7) >> 27));
    printf("s8 = 0x%x\n", ((h << 7) >> 27));
    printf("s9 = 0x%x\n", ((i << 7) >> 27));
    printf("gp = 0x%x\n", ((y << 12) >> 27));
    printf("sp = 0x%x\n", ((t << 12) >> 27));
    printf("fa1 = 0x%x\n", ((f1 << 12) >> 27));
    printf("fa2 = 0x%x\n", ((f2 << 20) >> 27));
    return 0;
}
