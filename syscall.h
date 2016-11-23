#ifndef SYSCALL_H_
#define SYSCALL_H_

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <sys/time.h>
#include <time.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include "register.h"
#include "memory.h"

// destination of some system call function
#define MALLOCDEST 0x1462c

// see in reg_test.c for this output
#define REGSP 0x2
#define REGGP 0x3
#define REGA0 0xa
#define REGA1 0xb
#define REGA2 0xc
#define REGA3 0xd
#define REGA4 0xe
#define REGA5 0xf
#define REGA6 0x10
#define REGA7 0x11
#define REGS0 0x8
#define REGS1 0x9
#define REGS2 0x12
#define REGS3 0x13
#define REGS4 0x14
#define REGS5 0x15
#define REGS6 0x16
#define REGS7 0x17
#define REGS8 0x18
#define REGS9 0x19
#define REGS10 0x1a

#define REGFA1 0xb
#define REGFA2 0xc
#define REGFA3 0xd
#define REGFA4 0xe
#define REGFA5 0xf
#define REGFA6 0x10
#define REGFA7 0x11

// system call number 
#define SYS_exit 93
#define SYS_exit_group 94
#define SYS_getpid 172
#define SYS_kill 129
#define SYS_read 63
#define SYS_write 64
#define SYS_open 1024
#define SYS_openat 56
#define SYS_close 57
#define SYS_lseek 62
#define SYS_brk 214
#define SYS_link 1025
#define SYS_unlink 1026
#define SYS_mkdir 1030
#define SYS_chdir 49
#define SYS_getcwd 17
#define SYS_stat 1038
#define SYS_fstat 80
#define SYS_lstat 1039
#define SYS_fstatat 79
#define SYS_access 1033
#define SYS_faccessat 48
#define SYS_pread 67
#define SYS_pwrite 68
#define SYS_uname 160
#define SYS_getuid 174
#define SYS_geteuid 175
#define SYS_getgid 176
#define SYS_getegid 177
#define SYS_mmap 222
#define SYS_munmap 215
#define SYS_mremap 216
#define SYS_time 1062
#define SYS_getmainvars 2011
#define SYS_rt_sigaction 134
#define SYS_writev 66
#define SYS_gettimeofday 169
#define SYS_times 153
#define SYS_fcntl 25
#define SYS_getdents 61
#define SYS_dup 23

// ---- test for system call ----
void sys_test(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3, uint64_t arg4, uint64_t arg5);

// ---- write system call ----
void sys_write(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3);

// ---- read system call ----
void sys_read(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3);

// ---- close system call ----
void sys_close(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3);

// ---- fstat system call ----
void sys_fstat(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3);

// ---- brk system call ----
void sys_brk(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3);

// ---- exit function ----
void sys_exit();

// ---- the malloc we take over ----
void malloc_tkor();

void sys_gettimeofday(uint64_t arg0, uint64_t arg1, uint64_t arg2, uint64_t arg3);

#endif 