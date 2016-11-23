// ---- elf loader module, riscv simulator ----
// ---- Fu Yao(Francis Yao) | 1300011063@pku.edu.cn ----


#include <assert.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdio.h>
#include <iostream>
#include "memory.h"
#include "elf.h"
#include "register.h"
#include "decode.h"

using namespace std;

extern Memory mymem;

// ---- memory ----
/*#define MEMSIZE 0x100000
unsigned char RO_MEM[MEMSIZE];
unsigned char RW_MEM[MEMSIZE];*/

// -- note here when we deal with address, we keep the data dype uint64_t
// -- this uint64_t is defined in sys/types.h or elf/h I am not very sure
// -- but just use it 
/*uint64_t ro_base;
uint64_t rw_base;*/

// -- if this is a va in ro segment, use this function
// -- typically this happens when you fetch instructions
/*uint64_t va2rova(uint64_t va)
{
    return (uint64_t)RO_MEM + (va - ro_base);
}

// -- if this is a va in rw segment, use this function
// typically this happens when you read global data
uint64_t va2rwva(uint64_t va)
{
    return (uint64_t)RW_MEM + (va - rw_base);
}*/

// ---- registers ----
uint64_t _eip;

//void decode(ULL startAddr);

// ---- auxilary structures ----
char readbuffer[MEMSIZE];

// ---- loader function ----
int loader(char *filename)
{
    // set up the memory
    /*memset(RO_MEM, 0, sizeof(RO_MEM));
    memset(RW_MEM, 0, sizeof(RW_MEM));*/

    // read the binary file
    int fd = open(filename, O_RDONLY, 0);
    ssize_t lenf = read(fd, readbuffer, sizeof(readbuffer));

    assert(lenf < MEMSIZE);

    printf("length of the binary file: 0x%lx\n", (unsigned long)lenf);
    
    // load into memory
    struct Elf *ELFHDR;

    ELFHDR = (struct Elf*) readbuffer;
    _eip = ELFHDR->e_entry;
    printf("entry: 0x%llx\n", (unsigned long long)_eip);

    struct Proghdr *ph, *eph;
    int total_load = 0;

    printf("------------------------------------------------------\n");

    ph = (struct Proghdr *) ((uint8_t *) ELFHDR + ELFHDR->e_phoff);
    eph = ph + ELFHDR->e_phnum;

    for (; ph < eph; ph++)
    {
        if (ph->p_type == ELF_PROG_LOAD) 
        {
            // always assume only 2 segments to be load
            // this is true for dhrystone, which we should finally get run
            // if not, panic
            assert(total_load < 2);

            assert(ph->p_memsz < MEMSIZE);
           
            mymem.setRWInitAddr(ph->p_va);

            total_load += 1;
        }
    }

    total_load = 0;
    ph = (struct Proghdr *) ((uint8_t *) ELFHDR + ELFHDR->e_phoff);
    for (; ph < eph; ph++)
    {
        if (ph->p_type == ELF_PROG_LOAD) 
        {
            // always assume only 2 segments to be load
            // this is true for dhrystone, which we should finally get run
            // if not, panic
            assert(total_load < 2);

            printf("load segment:\n");
            printf("va = 0x%llx\n", (unsigned long long)ph->p_va);
            printf("file size = %llx\n", (unsigned long long)ph->p_filesz);
            printf("mem size = %llx\n", (unsigned long long)ph->p_memsz);

            assert(ph->p_memsz < MEMSIZE);
           
            if(ph->p_flags & PF_X)
            {
                printf("flag = %x, exec, load to RO_MEM\n\n", (unsigned int)ph->p_flags);
                mymem.loadRWMem(ph->p_va, (ull)ELFHDR + ph->p_offset, ph->p_filesz);
                uint64_t tmpbrk = ROUNDUP((uint64_t) (ph->p_va) + (uint64_t) (ph->p_filesz), PGSIZE);
                printf("set heap pointer brk: 0x%lx\n", tmpbrk);
                mymem.setbrk(tmpbrk);
            }
            else
            {
                printf("flag = %x, read write, load to RW_MEM\n\n", (unsigned int)ph->p_flags);
                mymem.loadRWMem(ph->p_va, (ull)ELFHDR + ph->p_offset, ph->p_filesz);
            } 

            total_load += 1;
        }
    }
    return 0;
}

// ---- main function ----
// -- only used to test loader function, you may want to simply call loader
// -- in your simulator
int main()
{
    char filename[20];
    printf("Let me know the name of the elf file:");
    scanf("%s", filename);
    loader(filename);
    printf("------------------------------------------------------\n");
    printf("######successfully loaded, now we are decoding...#####\n");
    decode(_eip);
    return 0;
}
