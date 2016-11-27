#ifndef CACHE_DEF_H_
#define CACHE_DEF_H_

#define TRUE 1
#define FALSE 0
#define STORESIZE 1000
#define LINESIZE 1000

#define DEBUG
#define CACHE

#define L1SIZE 0x8000
#define L1ASS 8
#define L1SETNUM ((L1SIZE) / 512)
#define L1WT 0
#define L1WA 1
#define L1HITCYC 1

#define L2SIZE 0x40000 // 256K
#define L2ASS 8
#define L2SETNUM ((L2SIZE) / 512)
#define L2WT 0
#define L2WA 1
#define L2HITCYC 10

#define LLCSIZE 0x800000 // 8M
#define LLCASS 8
#define LLCSETNUM ((LLCSIZE) / 512)
#define LLCWT 0
#define LLCWA 1
#define LLCHITCYC 50

#define MEMSIZE 0x100000000

#endif //CACHE_DEF_H_
