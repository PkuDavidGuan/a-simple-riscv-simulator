#include <fstream>
#include <cstdlib>
#include <stack>
#include <map>
#include <cstring>
#include <iostream>
#include <iomanip>
#include <assert.h>
#include "register.h"
#include "memory.h"

using namespace std;

RegisterFile reg;
Memory mymem;
map<string, int> typeIndex;
int content;	//the integer value of one instruction
bool canjump = false;


//Initialize the map index and register file
void Initialize(ULL startAddr) {
	reg.setPC(startAddr);

	content = 0;
	/*
	R-TYPE:1; I-TYPE:2; S-TYPE:3; SB-TYPE:4; UJ-TYPE:5; U-TYPE:6; SYS-TYPE:7;
	 */

	typeIndex.insert(pair<string, int>("0110011", 1));
	typeIndex.insert(pair<string, int>("0010011", 2));
	typeIndex.insert(pair<string, int>("0100011", 3));
	typeIndex.insert(pair<string, int>("0000011", 2));
	typeIndex.insert(pair<string, int>("1100011", 4));
	typeIndex.insert(pair<string, int>("1100111", 2));
	typeIndex.insert(pair<string, int>("1101111", 5));
	typeIndex.insert(pair<string, int>("0010111", 6));
	typeIndex.insert(pair<string, int>("0110111", 6));
	typeIndex.insert(pair<string, int>("0111011", 1));
	typeIndex.insert(pair<string, int>("0011011", 2));
	typeIndex.insert(pair<string, int>("1110011", 7));
}


/*
This part finishes the decode part and lists aLL the R-TYPE instructions
 */
void sub(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal = (LL)rs1Val - (LL)rs2Val;
	reg.setIntRegVal(rdVal, rdInt);
}
void sra(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 63;	//lower 5 bits is used
	LL rdVal = (LL)rs1Val >> rs2Val;
	reg.setIntRegVal(rdVal, rdInt);
}
void add(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal = (LL)rs1Val + (LL)rs2Val;
	reg.setIntRegVal(rdVal, rdInt);
}
void sll(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 63;
	ULL rdVal = rs1Val << rs2Val;
	reg.setIntRegVal(rdVal, rdInt);
}
void slt(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal;
	if ( (LL)rs1Val < (LL)rs2Val)
		rdVal = 1;
	else
		rdVal = 0;
	reg.setIntRegVal(rdVal, rdInt);
}
void sltu(ULL rs1Val, ULL rs2Val, int rdInt) {
	ULL rdVal;
	if ( (ULL)rs1Val < (ULL)rs2Val )
		rdVal = 1;
	else
		rdVal = 0;
	reg.setIntRegVal(rdVal, rdInt);
}
void _xor(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal = (LL)rs1Val ^ (LL)rs2Val;
	reg.setIntRegVal(rdVal, rdInt);
}
void srl(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 63;
	ULL rdVal = rs1Val >> rs2Val;
	reg.setIntRegVal(rdVal, rdInt);
}
void _or(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal = (LL)rs1Val | (LL)rs2Val;
	reg.setIntRegVal(rdVal, rdInt);	
}
void _and(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal = (LL)rs1Val & (LL)rs2Val;
	reg.setIntRegVal(rdVal, rdInt);	
}
void addw(ULL rs1Val, ULL rs2Val, int rdInt) {
	/*
	Overfows are ignored, and the low 
	32-bits of the result is sign-extended to 64-bits 
	and written to the destination register.
	 */
	int src_1 = rs1Val;
	int src_2 = rs2Val;
	int sum = src_1 + src_2;
	LL rdVal = sum;
	reg.setIntRegVal((ULL)rdVal, rdInt);
}
void sllw(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 31;
	int src = rs1Val;
	LL rdVal = src << rs2Val;
	reg.setIntRegVal((ULL)rdVal, rdInt);
}
void srlw(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 31;
	unsigned int src = rs1Val;
	ULL rdVal = src >> rs2Val;
	reg.setIntRegVal(rdVal, rdInt);
}
void subw(ULL rs1Val, ULL rs2Val, int rdInt) {
	int src_1 = rs1Val;
	int src_2 = rs2Val;
	int sum = src_1 - src_2;
	LL rdVal = sum;
	reg.setIntRegVal((ULL)rdVal, rdInt);
}
void sraw(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 31;
	int src = rs1Val;
	LL rdVal = src >> rs2Val;
	reg.setIntRegVal((ULL)rdVal, rdInt);
}

void R_TYPE_funct3_1(string instruction) {
	//aLL R-TYPE instructions have the same part
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg.getIntRegVal(rs1Int);
	ULL rs2Val = reg.getIntRegVal(rs2Int);
	//common part ends hiere

	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3.c_str())) {
		case 000:
			sub(rs1Val, rs2Val, rdInt);
			break;
		case 101:
			sra(rs1Val, rs2Val, rdInt);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "R-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
void R_TYPE_funct3_2(string instruction) {
	//aLL R-TYPE instructions have the same part
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg.getIntRegVal(rs1Int);
	ULL rs2Val = reg.getIntRegVal(rs2Int);
	//common part ends here

	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3.c_str())) {
		case 000:
			add(rs1Val, rs2Val, rdInt);
			break;
		case 1:
			sll(rs1Val, rs2Val, rdInt);
			break;
		case 10:
			slt(rs1Val, rs2Val, rdInt);
			break;
		case 11:
			sltu(rs1Val, rs2Val, rdInt);
			break;
		case 100:
			_xor(rs1Val, rs2Val, rdInt);
			break;
		case 101:
			srl(rs1Val, rs2Val, rdInt);
			break;
		case 110:
			_or(rs1Val, rs2Val, rdInt);
			break;
		case 111:
			_and(rs1Val, rs2Val, rdInt);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "R-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
void R_TYPE_funct3_3(string instruction) {
	//aLL R-TYPE instructions have the same part
	int rs1Val = (content >> 15) & 31;
	int rs2Val = (content >> 20) & 31;
	int rdInt = (content >> 7) & 31;

	rs1Val = reg.getIntRegVal(rs1Val);
	//common part ends here

	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3.c_str())) {
		case 000:
			subw(rs1Val, rs2Val, rdInt);
			break;
		case 101:
			sraw(rs1Val, rs2Val, rdInt);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "R-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
void R_TYPE_funct3_4(string instruction) {
	//aLL R-TYPE instructions have the same part
	int rs1Val = (content >> 15) & 31;
	int rs2Val = (content >> 20) & 31;
	int rdInt = (content >> 7) & 31;

	rs1Val = reg.getIntRegVal(rs1Val);
	//common part ends here

	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3.c_str())) {
		case 0:
			addw(rs1Val, rs2Val, rdInt);
			break;
		case 101:
			srlw(rs1Val, rs2Val, rdInt);
			break;
		case 1:
			sllw(rs1Val, rs2Val, rdInt);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "R-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
void R_TYPE_funct7_1(string instruction) {
	string funct7 = instruction.substr(0, 7);
	switch(atoi(funct7.c_str())) {
		case 100000:
			R_TYPE_funct3_1(instruction);
			break;
		case 0000000:
			R_TYPE_funct3_2(instruction);
			break;
		case 1:
            void M_TYPE_funct3_1(string instruction);
			M_TYPE_funct3_1(instruction);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "R-TYPE funct7 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
void R_TYPE_funct7_2(string instruction) {
	string funct7 = instruction.substr(0, 7);
	switch(atoi(funct7.c_str())) {
		case 100000:
			R_TYPE_funct3_3(instruction);
			break;
		case 0000000:
			R_TYPE_funct3_4(instruction);
			break;
		case 1:
            void M_TYPE_funct3_2(string instruction);
			M_TYPE_funct3_2(instruction);
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "R-TYPE funct7 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
void R_TYPE_opcode(string instruction) {
	string opcode = instruction.substr(25, 7);
	switch(atoi(opcode.c_str())) {
		case 110011:
			R_TYPE_funct7_1(instruction);
			break;
		case 111011:
			R_TYPE_funct7_2(instruction);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "R-TYPE opcode error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
/*
End R-TYPE decode
 */

//===============This is a lovely dividing line===========
//=======================================================

/*
This part finishes the decode part of I-TYPE and lists aLL the I-TYPE instructions
 */
void slli(string instruction) {
	LL shamt = (content >> 20) & 63;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL rdVal = rs1Val << shamt;
	reg.setIntRegVal(rdVal, rdInt);
}
void srli(string instruction) {
	LL shamt = (content >> 20) & 63;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg.getIntRegVal(rs1Int);
	ULL rdVal = rs1Val >> shamt;
	reg.setIntRegVal(rdVal, rdInt);
}
void srai(string instruction) {
	LL shamt = (content >> 20) & 63;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL rdVal = rs1Val >> shamt;
	reg.setIntRegVal(rdVal, rdInt);
}
void addi(string instruction) {
	LL immediateNum = (LL)(content >> 20);
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL rdVal = rs1Val + immediateNum;
	reg.setIntRegVal(rdVal, rdInt);
}
void slti(string instruction) {
	LL immediateNum = (LL)(content >> 20);
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	int rdVal = 0;
	if (rs1Val < immediateNum)
		rdVal = 1;
	reg.setIntRegVal(rdVal, rdInt);
}
//the immediate is first sign-extended to XLEN bits then treated as an unsigned number
void sltiu(string instruction) {
	ULL immediateNum = (ULL)( (LL)(content >> 20) );		//the immediate is first sign-extended to XLEN bits then treated as an unsigned number
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg.getIntRegVal(rs1Int);
	int rdVal = 0;
	if (rs1Val < immediateNum )
		rdVal = 1;
	reg.setIntRegVal(rdVal, rdInt);
}
void xori(string instruction) {
	LL immediateNum = (LL)(content >> 20);
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL rdVal = rs1Val ^ immediateNum;
	reg.setIntRegVal(rdVal, rdInt);
}
void ori(string instruction) {
	LL immediateNum = (LL)(content >> 20);
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL rdVal = rs1Val | immediateNum;
	reg.setIntRegVal(rdVal, rdInt);
}
void andi(string instruction) {
	LL immediateNum = (LL)(content >> 20);
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL rdVal = rs1Val & immediateNum;
	reg.setIntRegVal(rdVal, rdInt);
}
void lb(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)content >> 20;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	reg.setIntRegVal((LL)(mymem.rwmemReadByte(immediateNum + rs1Val)), rdInt);
}
void lh(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)content >> 20;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL loadData = (LL)(mymem.rwmemReadShort(immediateNum + rs1Val));
	reg.setIntRegVal((ULL)loadData, rdInt);
}
void lw(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)content >> 20;

	ULL rs1Val = reg.getIntRegVal(rs1Int);
	LL loadData = (LL)(mymem.rwmemReadWord(immediateNum + rs1Val));
	reg.setIntRegVal((ULL)loadData, rdInt);
}
void ld(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)content >> 20;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL loadData = (LL)(mymem.rwmemReadDword(immediateNum + rs1Val));
	reg.setIntRegVal((ULL)loadData, rdInt);
}
void lbu(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = content >> 20;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	ULL loadData = mymem.rwmemReadByte(immediateNum + rs1Val);
	reg.setIntRegVal((ULL)loadData, rdInt);
}
void lhu(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = content >> 20;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	ULL loadData = mymem.rwmemReadShort(immediateNum + rs1Val);
	reg.setIntRegVal((ULL)loadData, rdInt);
}
void lwu(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = content >> 20;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	ULL loadData = mymem.rwmemReadWord(immediateNum + rs1Val);
	reg.setIntRegVal((ULL)loadData, rdInt);
}
void jalr(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = content >> 20;

	cout << "immediateNum: " << hex << immediateNum << endl;
	cout << "rs1Int: " << rs1Int << endl;
	cout << "rdInt: " << rdInt << endl;


	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	reg.setIntRegVal((ULL)(reg.getPC() + 4), rdInt);
	canjump = true;
	reg.setPC((ULL) (((rs1Val + immediateNum) >> 1) << 1) );
}
void addiw(string instruction) {
	int immediateNum = content >> 20;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	int rs1Val = (int)reg.getIntRegVal(rs1Int);
	rs1Val += immediateNum;
	LL rdVal = (LL)rs1Val;
	reg.setIntRegVal((ULL)rdVal, rdInt);
}
void slliw(string instruction) {
	int shamt = (content >> 20) & 31;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	int rs1Val = (int)reg.getIntRegVal(rs1Int);
	LL rdVal =(LL)(rs1Val << shamt);
	reg.setIntRegVal((ULL)rdVal, rdInt);
}
void srliw(string instruction) {
	/*
	operate on 32-bit values and produce signed 32-bit results.
	 */
	int shamt = (content >> 20) & 31;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	unsigned int rs1Val = (unsigned int)reg.getIntRegVal(rs1Int);
	rs1Val >>= shamt;
	LL rdVal = (LL)( (int)rs1Val );
	reg.setIntRegVal((ULL)rdVal, rdInt);
}
void sraiw(string instruction) {
	int shamt = (content >> 20) & 31;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	int rs1Val = (int)reg.getIntRegVal(rs1Int);
	rs1Val >>= shamt;
	LL rdVal = (LL)rs1Val;
	reg.setIntRegVal((ULL)rdVal, rdInt);
}
void I_TYPE_funct3_1(string instruction) {
	string funct3 = instruction.substr(17, 3);

	switch(atoi(funct3.c_str())) {
		case 1:
			slli(instruction);
			break;
		case 101: {
            string funct7 = instruction.substr(0, 7);
            switch (atoi(funct7.c_str())) {
                case 0:
                    srli(instruction);
                    break;
                case 100000:
                    srai(instruction);
                    break;
            }
        }
			break;
		case 0:
			addi(instruction);
			break;
		case 10:
			slti(instruction);
			break;
		case 11:
			sltiu(instruction);
			break;
		case 100:
			xori(instruction);
			break;
		case 110:
			ori(instruction);
			break;
		case 111:
			andi(instruction);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "I-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
void I_TYPE_funct3_2(string instruction) {
	string funct3 = instruction.substr(17, 3);

	switch(atoi(funct3.c_str())) {
		case 000:
			lb(instruction);
			break;
		case 1:
			lh(instruction);
			break;
		case 10:
			lw(instruction);
			break;
		case 100:
			lbu(instruction);
			break;
		case 101:
			lhu(instruction);
			break;
		case 110:
			lwu(instruction);
			break;
		case 11:
			ld(instruction);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "I-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
void I_TYPE_funct3_3(string instruction) {
	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3.c_str())) {
		case 0:
			addiw(instruction);
			break;
		case 1:
			slliw(instruction);
			break;
		case 101: {
            string funct7 = instruction.substr(0, 7);
            switch (atoi(funct7.c_str())) {
                case 0:
                    srliw(instruction);
                    break;
                case 100000:
                    sraiw(instruction);
                    break;
            }
        }
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "I-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
void I_TYPE_opcode(string instruction) {
	string opcode = instruction.substr(25, 7);
	switch(atoi(opcode.c_str())) {
		case 10011:
			I_TYPE_funct3_1(instruction);
			break;
		case 11:
			I_TYPE_funct3_2(instruction);
			break;
		case 11011:
			I_TYPE_funct3_3(instruction);
			break;
		case 1100111:
			jalr(instruction);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "I-TYPE opcode error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
/*
End I-TYPE decode
 */

//===============This is a lovely dividing line===========
//=======================================================

/*
This part finishes the decode part of S-TYPE and lists aLL the S-TYPE instructions
 */
void sb(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	LL immediateLowerPart = (LL)(content >> 7) & 31;
	LL immediateHigherPart = (LL)((content >> 25) & 127) << 5;
	LL immediateNum = ((immediateHigherPart + immediateLowerPart) << 52) >> 52;	//get the immediate number and get sign-extended

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL memoryAddr = immediateNum + rs1Val;
	char rs2Val = reg.getIntRegVal(rs2Int);

	mymem.rwmemWriteByte(rs2Val, memoryAddr);
}
void sh(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	LL immediateLowerPart = (LL)(content >> 7) & 31;
	LL immediateHigherPart = (LL)((content >> 25) & 127) << 5;
	LL immediateNum = ((immediateHigherPart + immediateLowerPart) << 52) >> 52;	//get the immediate number and get sign-extended

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL memoryAddr = immediateNum + rs1Val;
	short rs2Val = reg.getIntRegVal(rs2Int);

	mymem.rwmemWriteShort(rs2Val, memoryAddr);
}
void sw(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	LL immediateLowerPart = (LL)(content >> 7) & 31;
	LL immediateHigherPart = (LL)((content >> 25) & 127) << 5;
	LL immediateNum = ((immediateHigherPart + immediateLowerPart) << 52) >> 52;	//get the immediate number and get sign-extended

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL memoryAddr = immediateNum + rs1Val;
	int rs2Val = reg.getIntRegVal(rs2Int);

	mymem.rwmemWriteWord(rs2Val, memoryAddr);
}
void sd(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	LL immediateLowerPart = (LL)(content >> 7) & 31;
	LL immediateHigherPart = (LL)((content >> 25) & 127) << 5;
	LL immediateNum = ((immediateHigherPart + immediateLowerPart) << 52) >> 52;	//get the immediate number and get sign-extended

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL memoryAddr = immediateNum + rs1Val;
	ULL rs2Val = reg.getIntRegVal(rs2Int);

	mymem.rwmemWriteDword(rs2Val, memoryAddr);
}
void S_TYPE_funct3(string instruction) {
	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3.c_str())) {
		case 0:
			sb(instruction);
			break;
		case 1:
			sh(instruction);
			break;
		case 10:
			sw(instruction);
			break;
		case 11:
			sd(instruction);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "S-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
/*
End S-TYPE decode
 */

//===============This is a lovely dividing line===========
//=======================================================

/*
This part finishes the decode part of SB-TYPE and lists aLL the SB-TYPE instructions
 */
void beq(string instruction) {	
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	ULL rs1Val = reg.getIntRegVal(rs1Int);
	ULL rs2Val = reg.getIntRegVal(rs2Int);
	if (rs1Val == rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		LL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		immediateNum = (immediateNum << 51) >> 51;

		canjump = true;
		reg.changePC(immediateNum);
	}
}
void bne(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	ULL rs1Val = reg.getIntRegVal(rs1Int);
	ULL rs2Val = reg.getIntRegVal(rs2Int);
	if (rs1Val != rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		LL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		immediateNum = (immediateNum << 51) >> 51;

		canjump = true;
		reg.changePC(immediateNum);
	}
}
void blt(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	ULL rs1Val = reg.getIntRegVal(rs1Int);
	ULL rs2Val = reg.getIntRegVal(rs2Int);
	if ( (LL)rs1Val < (LL)rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		LL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		immediateNum = (immediateNum << 51) >> 51;

		canjump = true;
		reg.changePC(immediateNum);
	}
}
void bge(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	ULL rs1Val = reg.getIntRegVal(rs1Int);
	ULL rs2Val = reg.getIntRegVal(rs2Int);
	if ( (LL)rs1Val >= (LL)rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		LL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		immediateNum = (immediateNum << 51) >> 51;

		canjump = true;
		reg.changePC(immediateNum);
	}
}
void bltu(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	ULL rs1Val = reg.getIntRegVal(rs1Int);
	ULL rs2Val = reg.getIntRegVal(rs2Int);
	if (rs1Val < rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		LL immediateNum = (LL)(immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		immediateNum = (immediateNum << 51) >> 51;

		canjump = true;
		reg.changePC(immediateNum);
	}
}
void bgeu(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	ULL rs1Val = reg.getIntRegVal(rs1Int);
	ULL rs2Val = reg.getIntRegVal(rs2Int);
	if (rs1Val >= rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		LL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		immediateNum = (immediateNum << 51) >> 51;

		canjump = true;
		reg.changePC(immediateNum);
	}
}
void SB_TYPE_funct3(string instruction) {
	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3.c_str())) {
		case 0:
			beq(instruction);
			break;
		case 1:
			bne(instruction);
			break;
		case 100:
			blt(instruction);
			break;
		case 101:
			bge(instruction);
			break;
		case 110:
			bltu(instruction);
			break;
		case 111:
			bgeu(instruction);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "SB-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
/*
End SB-TYPE decode
 */

//===============This is a lovely dividing line===========
//=======================================================

/*
This part finishes the decode part of SB-TYPE and lists aLL the SB-TYPE instructions
 */
void lui(string instruction) {
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)( (content >> 12) << 12 );	//The 32-bit result is sign-extended to 64 bits.

	reg.setIntRegVal((ULL)immediateNum, rdInt);
}
void auipc(string instruction) {
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)( (content >> 12) << 12 );	//The 32-bit result is sign-extended to 64 bits.

	cout << "immediateNum: " << hex << immediateNum << endl;
	cout << "rdInt: " << rdInt << endl;

	ULL rdVal = reg.getPC() + (ULL)immediateNum;
	cout << "rdVal: " << rdVal << endl;
	reg.setIntRegVal(rdVal, rdInt);
}
void U_TYPE_opcode(string instruction) {
	string opcode = instruction.substr(25, 7);
	cout << atoi(opcode.c_str()) << endl;
	switch(atoi(opcode.c_str())) {
		case 110111:
			lui(instruction);
			break;
		case 10111:
			auipc(instruction);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "U-TYPE opcode error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
/*
End SB-TYPE decode
 */

//===============This is a lovely dividing line===========
//=======================================================

/*
This part finishes the decode part of UJ-TYPE and lists aLL the UJ-TYPE instructions
 */
void jal(string instruction) {
	int rdInt = (content >> 7) & 31;
	LL immediateNum_1 = ((content >> 31) & 1) << 19;
	LL immediateNum_2 = ((content >> 12) & 255) << 11;
	LL immediateNum_3 = ((content >> 20) & 1) << 10;
	LL immediateNum_4 = ((content >> 21) & 1023);
	LL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
	immediateNum = (immediateNum << 43) >> 43;

	reg.setIntRegVal((ULL)reg.getPC() + 4, rdInt);
	
	canjump = true;
	reg.changePC( (ULL)immediateNum );
}
/*
End UJ-TYPE decode
 */

//===============This is a lovely dividing line===========
//=======================================================

/*
This part parses some system instructions
 */
void ecall() {
    //make it can compile first.
#define systemCall
	LL sys_call_num = reg.getIntRegVal(7);
	systemCall((int)sys_call_num);
}
void ebreak() {
	
}
void E_INS(string instruction) {
	string diffPart = instruction.substr(11, 1);
	switch(atoi(diffPart.c_str())) {
		case 0:
			ecall();
			break;
		case 1:
			ebreak();
			break;
	}

}
void SYS_INSTRUCTION(string instruction) {
	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3.c_str())) {
		case 0:
			E_INS(instruction);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "SYS-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
/*
End of decoding system instructions
 */

//===============This is a lovely dividing line===========
//=======================================================

/*
This part finishes the decode part of M-TYPE and lists aLL the M-TYPE instructions
 */
void MUL(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	__asm__ __volatile__
	(
		"pushq %%rax\n\t"
		"pushq %%rdx\n\t"
		"movq %1, %%rax\n\t"
		"imulq %2\n\t"
		"movq %%rax, %0\n\t"
		"popq %%rdx\n\t"
		"popq %%rax\n\t"
		:"=m"(rdVal)
		:"r"(rs1Val),"r"(rs2Val)
	);
	reg.setIntRegVal(rdVal, rdInt);
}
void MULH(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	__asm__ __volatile__
	(
		"pushq %%rax\n\t"
		"pushq %%rdx\n\t"
		"movq %1, %%rax\n\t"
		"imulq %2\n\t"
		"movq %%rdx, %0\n\t"
		"popq %%rdx\n\t"
		"popq %%rax\n\t"
		:"=m"(rdVal)
		:"r"(rs1Val),"r"(rs2Val)
	);
	reg.setIntRegVal(rdVal, rdInt);
}
void MULHSU(LL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal;
	__asm__ __volatile__
	(
		"pushq %%rax\n\t"
		"pushq %%rdx\n\t"
		"movq %1, %%rax\n\t"
		"imulq %2\n\t"
		"movq %%rax, %0\n\t"
		"popq %%rdx\n\t"
		"popq %%rax\n\t"
		:"=m"(rdVal)
		:"r"(rs1Val),"r"(rs2Val)
	);
	reg.setIntRegVal(rdVal, rdInt);
}
void MULHU(ULL rs1Val, ULL rs2Val, int rdInt) {
	ULL rdVal;
	__asm__ __volatile__
	(
		"pushq %%rax\n\t"
		"pushq %%rdx\n\t"
		"movq %1, %%rax\n\t"
		"mulq %2\n\t"
		"movq %%rdx, %0\n\t"
		"popq %%rdx\n\t"
		"popq %%rax\n\t"
		:"=m"(rdVal)
		:"r"(rs1Val),"r"(rs2Val)
	);
	reg.setIntRegVal(rdVal, rdInt);
}
void DIV(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	if(rs2Val == 0)
	{
		reg.setIntRegVal(-1,rdInt);
		return;
	}
	if((rs1Val ^ 0x8000000000000000 == 0) && (rs2Val == -1))
	{
		reg.setIntRegVal(rs1Val, rdInt);
		return;
	}
	__asm__ __volatile__
	(
		"pushq %%rax\n\t"
		"pushq %%rdx\n\t"
		"movq %1, %%rdx\n\t"
		"sarq $63, %%rdx\n\t"
		"idivq %2\n\t"
		"movq %%rax, %0\n\t"
		"popq %%rdx\n\t"
		"popq %%rax\n\t"
		:"=m"(rdVal)
		:"r"(rs1Val),"m"(rs2Val)
	);
	reg.setIntRegVal(rdVal, rdInt);
}
void DIVU(ULL rs1Val, ULL rs2Val, int rdInt) {
	ULL rdVal;
	if(rs2Val == 0)
	{
		reg.setIntRegVal(0x7fffffffffffffff,rdInt);
		return;
	}
	__asm__ __volatile__
	(
		"pushq %%rax\n\t"
		"pushq %%rdx\n\t"
		"movq %1, %%rdx\n\t"
		"shrq $63, %%rdx\n\t"
		"divq %2\n\t"
		"movq %%rax, %0\n\t"
		"popq %%rdx\n\t"
		"popq %%rax\n\t"
		:"=m"(rdVal)
		:"r"(rs1Val),"m"(rs2Val)
	);
	reg.setIntRegVal(rdVal, rdInt);
}
void REM(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	if(rs2Val == 0)
	{
		reg.setIntRegVal(rs1Val,rdInt);
		return;
	}
	if((rs1Val ^ 0x8000000000000000 == 0) && (rs2Val == -1))
	{
		reg.setIntRegVal(0, rdInt);
		return;
	}
	__asm__ __volatile__
	(
		"pushq %%rax\n\t"
		"pushq %%rdx\n\t"
		"movq %1, %%rdx\n\t"
		"sarq $63, %%rdx\n\t"
		"idivq %2\n\t"
		"movq %%rdx, %0\n\t"
		"popq %%rdx\n\t"
		"popq %%rax\n\t"
		:"=m"(rdVal)
		:"r"(rs1Val),"m"(rs2Val)
	);
	reg.setIntRegVal(rdVal, rdInt);
}
void REMU(ULL rs1Val, ULL rs2Val, int rdInt) {
	ULL rdVal;
	if(rs2Val == 0)
	{
		reg.setIntRegVal(rs1Val,rdInt);
		return;
	}
	__asm__ __volatile__
	(
		"pushq %%rax\n\t"
		"pushq %%rdx\n\t"
		"movq %1, %%rdx\n\t"
		"shrq $63, %%rdx\n\t"
		"divq %2\n\t"
		"movq %%rdx, %0\n\t"
		"popq %%rdx\n\t"
		"popq %%rax\n\t"
		:"=m"(rdVal)
		:"r"(rs1Val),"m"(rs2Val)
	);
	reg.setIntRegVal(rdVal, rdInt);
}
void MULW(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	__asm__ __volatile__
	(
		"pushq %%rax\n\t"
		"pushq %%rbx\n\t"
		"pushq %%rdx\n\t"
		"movq %1, %%rax\n\t"
		"movq %2, %%rbx\n\t"
		"imull %%ebx, %%eax\n\t"
		"movq %%rax, %0\n\t"
		"popq %%rdx\n\t"
		"popq %%rbx\n\t"
		"popq %%rax\n\t"
		:"=m"(rdVal)
		:"m"(rs1Val),"m"(rs2Val)
	);
	reg.setIntRegVal(rdVal, rdInt);
}
void DIVW(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	if(rs2Val == 0)
	{
		reg.setIntRegVal(-1,rdInt);
		return;
	}
	int rs1 = rs1Val;
	int rs2 = rs2Val;
	rdVal = (LL)(rs1/rs2);
	reg.setIntRegVal(rdVal, rdInt);
}
void DIVUW(ULL rs1Val, ULL rs2Val, int rdInt)
{
	ULL rdVal;
	if(rs2Val == 0)
	{
		reg.setIntRegVal(0x7fffffffffffffff,rdInt);
		return;
	}
	unsigned int rs1 = rs1Val;
	unsigned int rs2 = rs2Val;
	rdVal = (ULL)(rs1/rs2);
	reg.setIntRegVal(rdVal, rdInt);
}
void REMW(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	if(rs2Val == 0)
	{
		reg.setIntRegVal((int)rs1Val,rdInt);
		return;
	}
	int rs1 = rs1Val;
	int rs2 = rs2Val;
	rdVal = (LL)(rs1%rs2);
	reg.setIntRegVal(rdVal, rdInt);
}
void REMUW(ULL rs1Val, ULL rs2Val, int rdInt)
{
	ULL rdVal;
	if(rs2Val == 0)
	{
		reg.setIntRegVal((unsigned int)rs1Val,rdInt);
		return;
	}
	unsigned int rs1 = rs1Val;
	unsigned int rs2 = rs2Val;
	rdVal = (ULL)(rs1/rs2);
	reg.setIntRegVal(rdVal, rdInt);
}


void M_TYPE_funct3_1(string instruction) {
	//aLL M-TYPE instructions have the same part
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg.getIntRegVal(rs1Int);
	ULL rs2Val = reg.getIntRegVal(rs2Int);
	//common part ends here

	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3.c_str())) {
		case 000:
			MUL((LL)rs1Val, (LL)rs2Val, rdInt);
			break;
		case 001:
			MULH((LL)rs1Val, (LL)rs2Val, rdInt);
			break;
		case 010:
			MULHSU((LL)rs1Val, rs2Val, rdInt);
			break;
		case 011:
			MULHU(rs1Val, rs2Val, rdInt);
			break;
		case 100:
			DIV((LL)rs1Val, (LL)rs2Val, rdInt);
			break;
		case 101:
			DIVU(rs1Val, rs2Val, rdInt);
			break;
		case 110:
			REM((LL)rs1Val, (LL)rs2Val, rdInt);
			break;
		case 111:
			REMU(rs1Val, rs2Val, rdInt);
			break;			
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "M-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}

void M_TYPE_funct3_2(string instruction) {
	//aLL M-TYPE instructions have the same part
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg.getIntRegVal(rs1Int);
	ULL rs2Val = reg.getIntRegVal(rs2Int);
	//common part ends here

	string funct3 = instruction.substr(17, 3);
	int tempInt = atoi(funct3.c_str());
	switch(tempInt) {
		case 000:
			MULW((LL)rs1Val, (LL)rs2Val, rdInt);
			break;
		case 100:
			DIVW((LL)rs1Val, (LL)rs2Val, rdInt);
			break;
		case 101:
			DIVUW(rs1Val, rs2Val, rdInt);
			break;
		case 110:
			REMW((LL)rs1Val, (LL)rs2Val, rdInt);
			break;
		case 111:
			REMUW(rs1Val, rs2Val, rdInt);
			break;			
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "M-TYPE funct3 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
/*
End of decoding M-TPYE instructions
 */

//to get the type of the instruction
void getOpcode(string instruction) {
	string opcode = instruction.substr(25, 7);
	/*
	R-TYPE:1; I-TYPE:2; S-TYPE:3; SB-TYPE:4; UJ-TYPE:5; U-TYPE:6; SYS-TYPE:7;
	 */

	switch(typeIndex[opcode]) {
		case 1:
			R_TYPE_opcode(instruction);
			break;
		case 2:
			I_TYPE_opcode(instruction);
			break;
		case 3:
			S_TYPE_funct3(instruction);
			break;
		case 4:
			SB_TYPE_funct3(instruction);
			break;
		case 6:
			U_TYPE_opcode(instruction);
			break;
		case 5:
			jal(instruction);
			break;
		case 7:
			SYS_INSTRUCTION(instruction);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "opcode error!" << endl;
			cout << "Exit!" << endl;
			assert(false);
			return;
	}
}
void decode(ULL startAddr) {
	Initialize(startAddr);		//Initialize some variables and prepare for the decode part

	char tempChar[33];
	while(true) {
		memset(tempChar, 0, sizeof(tempChar));

		cout << "PC: " << reg.getPC() << endl;
		cout << "PC: hex " << std::hex << reg.getPC() << endl;
		content = mymem.rwmemReadWord(reg.getPC());
		printf("%02x\n",content);
		for(int i = 0; i < 32; ++i)
            tempChar[31 - i] = (content & (1 << i)) == 0 ? '0' : '1';
        tempChar[32] = 0;
		string instruction(tempChar);

		std::cout << instruction << endl;
		getOpcode(instruction);

		if(canjump)
			canjump = false;
		else
			reg.changePC(4);
	}
}