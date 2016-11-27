/*
Here gives the definition of all the registers,
and we choose to use long long to represent the 64 bits 
and use int to represent the Program Count.
*/

#ifndef REGISTER_H
#define REGISTER_H

#include <string.h>
#include "syscall.h"

//#define STARTSTACK 0xfffffffffffffff0
 #define STARTSTACK 0x00000000fefffb50

typedef long long LL;
typedef unsigned long long ULL;

class RegisterFile{
private:
	ULL pc;
	ULL x[32];
	ULL f[32];

public:
	RegisterFile() {
		memset(x, 0, sizeof(x));
		memset(f, 0, sizeof(f));
		pc = 0;
		x[0] = 0;
		x[2] = STARTSTACK;
		#ifdef CACHE
		x[2] = 0xfffff0;
		#endif
	}

	void setPC(int value) { pc = value; }
	void changePC(ULL offset) { pc += offset; }
	ULL getPC() { return pc; }

	void setIntRegVal(ULL value, int num) 
	{ 
		if(num) x[num] = value; 
	}
	ULL getIntRegVal(int num) { return x[num]; }
	
	void setFloatRegVal(ULL value, int num) { f[num] = value; }
	ULL getFloatRegVal(int num) { return f[num]; }

	const void show();

};
#endif