#include "register.h"
#include "syscall.h"

const void RegisterFile::show()
{
    // show real addr and simulated addr
    printf("the register information:\n");
    printf("a0: 0x%lx\t", getIntRegVal(REGA0));
    printf("a1: 0x%lx\n", getIntRegVal(REGA1));
    printf("a2: 0x%lx\t", getIntRegVal(REGA2));
    printf("a3: 0x%lx\n", getIntRegVal(REGA3));
    printf("a4: 0x%lx\t", getIntRegVal(REGA4));
    printf("a5: 0x%lx\n", getIntRegVal(REGA5));
    printf("a6: 0x%lx\t", getIntRegVal(REGA6));
    printf("a7: 0x%lx\n", getIntRegVal(REGA7));
    printf("s0: 0x%lx\t", getIntRegVal(REGS0));
    printf("s1: 0x%lx\n", getIntRegVal(REGS1));
    printf("s2: 0x%lx\t", getIntRegVal(REGS2));
    printf("s3: 0x%lx\n", getIntRegVal(REGS3));
    printf("s4: 0x%lx\t", getIntRegVal(REGS4));
    printf("s5: 0x%lx\n", getIntRegVal(REGS5));
    printf("s6: 0x%lx\t", getIntRegVal(REGS6));
    printf("s7: 0x%lx\n", getIntRegVal(REGS7));
    printf("s8: 0x%lx\t", getIntRegVal(REGS8));
    printf("s9: 0x%lx\n", getIntRegVal(REGS9));
    printf("s10: 0x%lx\t", getIntRegVal(REGS10));
    printf("sp: 0x%lx\n", getIntRegVal(REGSP));
    printf("gp: 0x%lx\n", getIntRegVal(REGGP));
    printf("fa1: %lf\t", getFloatRegVal(REGFA1));
    printf("fa2: %lf\n", getFloatRegVal(REGFA2));
    printf("fa3: %lf\t", getFloatRegVal(REGFA3));
    printf("fa4: %lf\n", getFloatRegVal(REGFA4));
    printf("fa5: %lf\t", getFloatRegVal(REGFA5));
    printf("fa6: %lf\n", getFloatRegVal(REGFA6));
    printf("fa7: %lf\n", getFloatRegVal(REGFA7));
    printf("fs0: %lf\t", getFloatRegVal(REGS0));
    printf("fs1: %lf\n", getFloatRegVal(REGS1));
    printf("fs2: %lf\t", getFloatRegVal(REGS2));
    printf("fs3: %lf\n", getFloatRegVal(REGS3));
    printf("fs4: %lf\t", getFloatRegVal(REGS4));
    printf("fs5: %lf\n", getFloatRegVal(REGS5));
    printf("fs6: %lf\t", getFloatRegVal(REGS6));
    printf("fs7: %lf\n", getFloatRegVal(REGS7));
    return;
}