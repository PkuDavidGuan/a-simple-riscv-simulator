// ---- system calls for riscv ----
// ---- Francis Fu Yao | 1300011063.pku.edu.cn ----


/* --------------------------------------------------------------------------------

    for now we let the simulator take over glibc function
    we will hard code the glibc function address in the simulator 
    tailor it for dhrystone
    if needed, we will further implement real system call according to 
    the implementation in riscv-pk/pk/syscall.c | syscall.h | entry.S | handler.c
    and take the indication from the riscv-glibc: 
    /home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/
        riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h
    /home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/
        riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdio/printf.c
    as well as the stdlib.h | time.h | syt/times/h 

   ------------------------------------------------------------------------------- */

#include "syscall.h"

// Here are some notes about the system calls

extern Memory mymem;
extern RegisterFile reg;

void ecall() 
{
    //make it can compile first.
#define systemCall
	LL sys_call_num = reg.getIntRegVal(REGA7);
    /*
    LL sys_call_arg1 = reg.getIntRegVal(REGA1);
    LL sys_call_arg2 = reg.getIntRegVal(REGA2);
    LL sys_call_arg3 = reg.getIntRegVal(REGA3);
    LL sys_call_arg4 = reg.getIntRegVal(REGA4);
    LL sys_call_arg5 = reg.getIntRegVal(REGA5);
    */
    printf("system call, only exit implemented!\n");
    exit(0);
	switch(sys_call_num)
    {
    case SYS_exit:
        printf("system call: sys_exit\n");
        exit(0);
        break;
    default:
        printf("unimplemented system call number %d\n", sys_call_num);
        while(1);
    }
}

void ebreak() 
{
	return;
}

/*
// ---- write system call ----
void sys_write()
{
     // read a0 - a4
     uint64_t buf = reg.getIntRegVal(REGA1);
     // need a riscv va to simulator va function
     buf = riscvva2simva(buf);
     uint64_t len = reg.getIntRegVal(REGA2);
     printf("%.*s", len, (char*) buf);
     reg.setIntRegVal(0, REGA0);
     return;
}

// ---- sys time function ----
// need to parse buf from riscv registers and memory
clock_t sys_times()
{
    uint64_t buf = reg.getIntRegVal(REGA0);
    // need a riscv va to simulator va function
    buf = riscvva2simva(buf);
    clock_t clc = times((struct tms *)buf);
    reg.setIntRegVal((uint64_t) clc, REGA0);
    return;
}

// ---- clock function ----
// view clock_t as a uint64_t
void sys_clock()
{
    clock_t clc = clock();
    reg.setIntRegVal((uint64_t) clc, REGA0);
    return;
}

// ---- malloc function ----
// REGA0 means register a0
// ATTENTION: NEED TO INITIATE mymem.mallocptr in mymem contructor
void sys_malloc()
{
    reg.setIntRegVal(mymem.mallocptr, REGA0);
    mymem.mallocptr += size;
    return;
}

// ---- exit function ----
void sys_exit()
{
    // simply exit
    return;
}*/