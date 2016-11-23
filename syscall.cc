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
	uint64_t sys_call_num = reg.getIntRegVal(REGA7);
    uint64_t arg0 = reg.getIntRegVal(REGA0);
    uint64_t arg1 = reg.getIntRegVal(REGA1);
    uint64_t arg2 = reg.getIntRegVal(REGA2);
    uint64_t arg3 = reg.getIntRegVal(REGA3);
    uint64_t arg4 = reg.getIntRegVal(REGA4);
    uint64_t arg5 = reg.getIntRegVal(REGA5);
    // printf("system call:\narg0: 0x%lx\targ1: 0x%lx\narg2: 0x%lx\t\targ3: 0x%lx\n", arg0, arg1, arg2, arg3);
    
	switch(sys_call_num)
    {
    case SYS_write:
        // printf("system call: sys_write\n");
        sys_write(arg0, arg1, arg2, arg3);
        break;
    case SYS_open:
        // printf("system call: sys_open\n");
        break; 
    case SYS_close:
        sys_close(arg0, arg1, arg2, arg3);
        break;
    case SYS_fstat:
        // printf("system call: sys_fstat\n");
        sys_fstat(arg0, arg1, arg2, arg3);
        break;
    case SYS_gettimeofday:
        // printf("system call: sys_gettimeofday\n");
        sys_gettimeofday(arg0, arg1, arg2, arg3);
        break;
    case SYS_read:
        // printf("system call: sys_read\n");
        sys_read(arg0, arg1, arg2, arg3);
        break;
    case SYS_brk:
        // printf("system call: sys_brk\n");
        sys_brk(arg0, arg1, arg2, arg3);
        break;
    // case SYS_gettimeofday:
    //     printf("system call: sys_gettimeofday\n");
    //     sys_gettimeofday();
        // break;
    case SYS_exit:
        // printf("system call: sys_exit\n");
        exit(0);
        break;
    default:
        // printf("unimplemented system call number %lu\n", sys_call_num);
        while(1);
    }
}

void ebreak() 
{
	return;
}

void sys_test(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3, uint64_t arg4, uint64_t arg5)
{
    uint64_t buf = mymem.riscvva2simva(arg5);
    printf("%s", (char*)buf);
    return;
}

// ---- the malloc we take over ----
void malloc_tkor()
{
    // get length 
    uint64_t len = reg.getIntRegVal(REGA1);
    printf("length of buffer: 0x%lx\n", len);
    uint64_t tmpbrk = mymem.sbrk_tkor(len);
    reg.setIntRegVal(tmpbrk, REGA0);
    return;
}

// ---- write system call ----
// test -- good
void sys_write(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3)
{
    int fd = arg0;
    // printf("write to fd %lu\n", fd);
    /*
    if(fd != 1)
    {
        printf("error! fd != stdout\n");
        while(1);
    }*/
    // read a0 - a4
    uint64_t buf = arg1;
    // need a riscv va to simulator va function
    buf = mymem.riscvva2simva(buf);
    uint64_t len = arg2;
    // printf("length of string: %d, buf addr: 0x%lx\n", (int)len, buf);
    printf("%.*s", (int)len, (char*) buf);
    reg.setIntRegVal(0, REGA0);
    return;
}

// ---- read system call ----
void sys_read(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3)
{
    int fd = arg0;
    printf("read to fd %lu\n", fd);
    char readbuff[0x100];
    scanf("%s", readbuff);
   
    uint64_t buf = arg1;
    uint64_t len = arg2;
    size_t readnum;
    // need a riscv va to simulator va function
    readnum = strlen(readbuff);
    buf = mymem.riscvva2simva(buf);
    memcpy((void *)buf, (void *)readbuff, len);
    reg.setIntRegVal(readnum, REGA0);
    return;
}

// ---- close system call ----
// test -- weird
void sys_close(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3)
{
    // printf("trying to close fd %lu\n", arg0);
    reg.setIntRegVal(0, REGA0);
    return;
}

// ---- fstat system call ----
void sys_fstat(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3)
{
    uint64_t fd = arg0;
    uint64_t buf = arg1;

    // need a riscv va to simulator va function
    buf = mymem.riscvva2simva(buf);
    // memset((struct stat *) buf, 0, sizeof(struct stat));
    // int tmpret = fstat((int) fd, (struct stat *) buf);
    reg.setIntRegVal(0, REGA0);
    return;
}

// ---- brk system call ----
// test -- seems good
void sys_brk(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3)
{
    // set brk to position
    // reg.show();
    uint64_t tmpbrk = mymem.sbrk(arg0);
    // set new brk
    reg.setIntRegVal(tmpbrk, REGA0);
    // printf("returning: 0x%lx\n", tmpbrk);   
    return;
}
// ---- exit function ----
// test -- good
void sys_exit()
{
    // simply exit
    return;
}

void sys_gettimeofday(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3)
{
    struct timeval tv;
    // printf("buffer addr: 0x%lx, len of structure: %d\n", arg0, sizeof(struct timeval));
    gettimeofday(&tv, NULL);
    memcpy((char *)mymem.riscvva2simva(arg0), &tv, sizeof(struct timeval));
    reg.setIntRegVal(0, REGA0);
    return;
}