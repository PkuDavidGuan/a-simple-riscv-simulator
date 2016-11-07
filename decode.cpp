#include <fstream>
#include <cstdlib>
#include <stack>
#include <map>
#include <cstring>
#include "register.h"
#include "memeory.h"

using namespace std;

map<string, string> typeIndex;


int content;	//the integer value of one instruction
bool canjump = false;

//Initialize the map index and register file
void Initialize(ULL startAddr) {
	reg->setPC(startAddr);

	content = 0;
	/*
	R-TYPE:1; I-TYPE:2; S-TYPE:3; SB-TYPE:4; UJ-TYPE:5; U-TYPE:6; SYS-TYPE:7;
	 */

	typeIndex.insert(pair<string, string>("0110011", 1));
	typeIndex.insert(pair<string, string>("0010011", 2));
	typeIndex.insert(pair<string, string>("0100011", 3));
	typeIndex.insert(pair<string, string>("0000011", 2));
	typeIndex.insert(pair<string, string>("1100011", 4));
	typeIndex.insert(pair<string, string>("1100111", 2));
	typeIndex.insert(pair<string, string>("1101111", 5));
	typeIndex.insert(pair<string, string>("0010111", 6));
	typeIndex.insert(pair<string, string>("0110111", 6));
	typeIndex.insert(pair<string, string>("0111011", 1));
	typeIndex.insert(pair<string, string>("0011011", 2));
	typeIndex.insert(pair<string, string>("1110011", 7));
}


/*
This part finishes the decode part and lists aLL the R-TYPE instructions
 */
void sub(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal = (LL)rs1Val - (LL)rs2Val;
	reg->setIntRegVal(rdVal, rdInt);
}
void sra(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 63;	//lower 5 bits is used
	LL rdVal = (LL)rs1Val >> rs2Val;
	reg->setIntRegVal(rdVal, rdInt);
}
void add(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal = (LL)rs1Val + (LL)rs2Val;
	reg->setIntRegVal(rdVal, rdInt);
}
void sll(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 63;
	ULL rdVal = rs1Val << rs2Val;
	reg->setIntRegVal(rdVal, rdInt);
}
void slt(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal;
	if ( (LL)rs1Val < (LL)rs2Val)
		rdVal = 1;
	else
		rdVal = 0;
	reg->setIntRegVal(rdVal, rdInt);
}
void sltu(ULL rs1Val, ULL rs2Val, int rdInt) {
	ULL rdVal;
	if ( (ULL)rs1Val < (ULL)rs2Val )
		rdVal = 1;
	else
		rdVal = 0;
	reg->setIntRegVal(rdVal, rdInt);
}
void xor(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal = (LL)rs1Val ^ (LL)rs2Val;
	reg->setIntRegVal(rdVal, rdInt);
}
void srl(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 63;
	ULL rdVal = rs1Val >> rs2Val;
	reg->setIntRegVal(rdVal, rdInt);
}
void or(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal = (LL)rs1Val | (LL)rs2Val;
	reg->setIntRegVal(rdVal, rdInt);	
}
void and(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal = (LL)rs1Val & (LL)rs2Val;
	reg->setIntRegVal(rdVal, rdInt);	
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
	reg->setIntRegVal((ULL)sum, rdInt);
}
void sllw(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 31;
	int src = rs1Val;
	LL rdVal = src << rs2Val;
	reg->setIntRegVal((ULL)rdVal, rdInt);
}
void srlw(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 31;
	unsigned int src = rs1Val;
	ULL rdVal = src >> rs2Val;
	reg->setIntRegVal(rdVal, rdInt);
}
void subw(ULL rs1Val, ULL rs2Val, int rdInt) {
	int src_1 = rs1Val;
	int src_2 = rs2Val;
	int sum = src_1 - src_2;
	LL rdVal = sum;
	reg->setIntRegVal((ULL)sum, rdInt);
}
void sraw(ULL rs1Val, ULL rs2Val, int rdInt) {
	rs2Val = rs2Val & 31;
	int src = rs1Val;
	LL rdVal = src >> rs2Val;
	reg->setIntRegVal((ULL)rdVal, rdInt);
}

void R_TYPE_funct3_1(string instruction) {
	//aLL R-TYPE instructions have the same part
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg->getIntRegVal(rs1Int);
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	//common part ends hiere

	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3)) {
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

	ULL rs1Val = reg->getIntRegVal(rs1Int);
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	//common part ends here

	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3)) {
		case 000:
			add(rs1Val, rs2Val, rdInt);
			break;
		case 001:
			sll(rs1Val, rs2Val, rdInt);
			break;
		case 010:
			slt(rs1Val, rs2Val, rdInt);
			break;
		case 011:
			sltu(rs1Val, rs2Val, rdInt);
			break;
		case 100:
			xor(rs1Val, rs2Val, rdInt);
			break;
		case 101:
			srl(rs1Val, rs2Val, rdInt);
			break;
		case 110:
			or(rs1Val, rs2Val, rdInt);
			break;
		case 111:
			and(rs1Val, rs2Val, rdInt);
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
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg->getIntRegVal(rs1Int);
	//common part ends here

	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3)) {
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
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg->getIntRegVal(rs1Int);
	//common part ends here

	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3)) {
		case 000:
			addw(rs1Val, rs2Val, rdInt);
			break;
		case 101:
			srlw(rs1Val, rs2Val, rdInt);
			break;
		case 001:
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
	switch(atoi(funct7)) {
		case 0100000:
			R_TYPE_funct3_1(instruction);
			break;
		case 0000000:
			R_TYPE_funct3_2(instruction);
			break;
		case 0000001:
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
	switch(atoi(funct7)) {
		case 0100000:
			R_TYPE_funct3_3(instruction);
			break;
		case 0000000:
			R_TYPE_funct3_4(instruction);
			break;
		case 0000001:
			M_TYPE_funct3_2(instruction);
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "R-TYPE funct7 error!" << endl;
			cout << "Exit!" << endl;
			return;
	}
}
void R_TYPE_opcode(instruction) {
	string opcode = instruction.substr(25, 7);
	switch(atoi(opcode)) {
		case 0110011:
			R_TYPE_funct7_1(instruction);
			break;
		case 0111011:
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

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL rdVal = rs1Val << shamt;
	reg->setIntRegVal(rdVal, rdInt);
}
void srli(string instruction) {
	LL shamt = (content >> 20) & 63;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg->getIntRegVal(rs1Int);
	ULL rdVal = rs1Val >> shamt;
	reg->setIntRegVal(rdVal, rdInt);
}
void srai(string instruction) {
	LL shamt = (content >> 20) & 63;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL rdVal = rs1Val >> shamt;
	reg->setIntRegVal(rdVal, rdInt);
}
void addi(string instruction) {
	LL immediateNum = (LL)(content >> 20);
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL rdVal = rs1Val + immediateNum;
	reg->setIntRegVal(rdVal, rdInt);
}
void slti(string instruction) {
	LL immediateNum = (LL)(content >> 20);
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	int rdVal = 0;
	if (rs1Val < immediateNum)
		rdVal = 1;
	reg->setIntRegVal(rdVal, rdInt);
}
//the immediate is first sign-extended to XLEN bits then treated as an unsigned number
void sltiu(string instruction) {
	ULL immediateNum = (ULL)( (LL)(content >> 20) );		//the immediate is first sign-extended to XLEN bits then treated as an unsigned number
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg->getIntRegVal(rs1Int);
	int rdVal = 0;
	if (rs1Val < immediateNum )
		rdVal = 1
	reg->setIntRegVal(rdVal, rdInt);
}
void xori(string instruction) {
	LL immediateNum = (LL)(content >> 20);
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL rdVal = rs1Val ^ immediateNum;
	reg->setIntRegVal(rdVal, rdInt);
}
void ori(string instruction) {
	LL immediateNum = (LL)(content >> 20);
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL rdVal = rs1Val | immediateNum;
	reg->setIntRegVal(rdVal, rdInt);
}
void andi(string instruction) {
	LL immediateNum = (LL)(content >> 20);
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL rdVal = rs1Val & immediateNum;
	reg->setIntRegVal(rdVal, rdInt);
}
void lb(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)content >> 20;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL loadData = (LL)memoryRead( (ULL)(immediateNum + rs1Val), 1 );
	loadData = (loadData << 56) >> 56;	//return value can be sign-extended
	reg->setIntRegVal((ULL)loadData, rdInt);
}
void lh(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)content >> 20;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL loadData = (LL)memoryRead( (ULL)(immediateNum + rs1Val), 2 );
	loadData = (loadData << 48) >> 48;	//same as the reason mentioned above
	reg->setIntRegVal((ULL)loadData, rdInt);
}
void lw(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)content >> 20;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL loadData = (LL)memoryRead( (ULL)(immediateNum + rs1Val), 4 );
	loadData = (loadData << 32) >> 32;
	reg->setIntRegVal((ULL)loadData, rdInt);
}
void ld(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)content >> 20;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL loadData = (LL)memoryRead( (ULL)(immediateNum + rs1Val), 8 );
	reg->setIntRegVal((ULL)loadData, rdInt);
}
void lbu(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = content >> 20;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	ULL loadData = memoryRead( (ULL)(immediateNum + rs1Val), 1 );
	loadData = loadData & 255;
	reg->setIntRegVal((ULL)loadData, rdInt);
}
void lhu(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = content >> 20;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	ULL loadData = memoryRead( (ULL)(immediateNum + rs1Val), 2);
	loadData = loadData & 65535;
	reg->setIntRegVal((ULL)loadData, rdInt);
}
void lwu(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = content >> 20;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	ULL loadData = memoryRead( (ULL)(immediateNum + rs1Val), 4 );
	long long mask = (1 << 63) >> 31;
	loadData = loadData & (~mask);
	reg->setIntRegVal((ULL)loadData, rdInt);
}
void jalr(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = content >> 20;

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	reg->setIntRegVal((ULL)(reg->getPC() + 4), rdInt);
	reg->setPC((ULL)(rs1Val + immediateNum));
}
void addiw(string instruction) {
	int immediateNum = content >> 20;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	int rs1Val = (int)reg->getIntRegVal(rs1Int);
	rs1Val += immediateNum;
	LL rdVal = (LL)rs1Val;
	reg->setIntRegVal((ULL)rdVal, rdInt);
}
void slliw(string instruction) {
	int shamt = (content >> 20) & 31;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	int rs1Val = (int)reg->getIntRegVal(rs1Int);
	LL rdVal =(LL)(rs1Val << shamt);
	reg->setIntRegVal((ULL)rdVal, rdInt);
}
void srliw(string instruction) {
	/*
	operate on 32-bit values and produce signed 32-bit results.
	 */
	int shamt = (content >> 20) & 31;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	unsigned int rs1Val = (unsigned int)reg->getIntRegVal(rs1Int);
	rs1Val >>= shamt;
	LL rdVal = (LL)( (int)rs1Val );
	reg->setIntRegVal((ULL)rdVal, rdInt);
}
void sraiw(string instruction) {
	int shamt = (content >> 20) & 31;
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;

	int rs1Val = (int)reg->getIntRegVal(rs1Int);
	rs1Val >>= shamt;
	LL rdVal = (LL)rs1Val;
	reg->setIntRegVal((ULL)rdVal, rdInt);
}
void I_TYPE_funct3_1(string instruction) {
	string funct3 = instruction.substr(17, 3);

	switch(atoi(funct3)) {
		case 001:
			slli(instruction);
			break;
		case 101:
			string funct7 = instruction.substr(0, 7);
			switch(atoi(funct7)) {
				case 0000000:
					srli(instruction);
					break;
				case 0100000:
					srai(instruction);
					break;
			}
			break;
		case 000:
			addi(instruction);
			break;
		case 010:
			slti(instruction);
			break;
		case 011:
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

	switch(atoi(funct3)) {
		case 000:
			lb(instruction);
			break;
		case 001:
			lh(instruction);
			break;
		case 010:
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
		case 011:
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
	switch(atoi(funct3)) {
		case 000:
			addiw(instruction);
			break;
		case 001:
			slliw(instruction);
			break;
		case 101:
			string funct7 = instruction.substr(0, 7);
			switch(funct7) {
				case 0000000:
					srliw(instruction);
					break;
				case 0100000:
					sraiw(instruction);
					break;
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
	switch(atoi(opcode)) {
		case 0010011:
			I_TYPE_funct3_1(instruction);
			break;
		case 0000011:
			I_TYPE_funct3_2(instruction);
			break;
		case 0011011:
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

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL memoryAddr = immediateNum + rs1Val;
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	rs2Val &= 255;

	memoryWrite((ULL)memoryAddr, rs2Val, 1);
}
void sh(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	LL immediateLowerPart = (LL)(content >> 7) & 31;
	LL immediateHigherPart = (LL)((content >> 25) & 127) << 5;
	LL immediateNum = ((immediateHigherPart + immediateLowerPart) << 52) >> 52;	//get the immediate number and get sign-extended

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL memoryAddr = immediateNum + rs1Val;
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	rs2Val &= 65535;

	memoryWrite((ULL)memoryAddr, rs2Val, 2);
}
void sw(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	LL immediateLowerPart = (LL)(content >> 7) & 31;
	LL immediateHigherPart = (LL)((content >> 25) & 127) << 5;
	LL immediateNum = ((immediateHigherPart + immediateLowerPart) << 52) >> 52;	//get the immediate number and get sign-extended

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL memoryAddr = immediateNum + rs1Val;
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	long long mask = (1 << 63) >> 31;
	rs2Val &= (~mask);

	writeMemory(memoryAddr, rs2Val, 4);
}
void sd(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	LL immediateLowerPart = (LL)(content >> 7) & 31;
	LL immediateHigherPart = (LL)((content >> 25) & 127) << 5;
	LL immediateNum = ((immediateHigherPart + immediateLowerPart) << 52) >> 52;	//get the immediate number and get sign-extended

	LL rs1Val = (LL)reg->getIntRegVal(rs1Int);
	LL memoryAddr = immediateNum + rs1Val;
	ULL rs2Val = reg->getIntRegVal(rs2Int);

	writeMemory(memoryAddr, rs2Val, 8);
}
void S_TYPE_funct3(string instruction) {
	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3)) {
		case 000:
			sb(instruction);
			break;
		case 001:
			sh(instruction);
			break;
		case 010:
			sw(instruction);
			break;
		case 011:
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
	ULL rs1Val = reg->getIntRegVal(rs1Int);
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	if (rs1Val == rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		ULL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		ULL immediateNum = (immediateNum << 19) >> 19;

		canjump = true;
		reg->changePC(immediateNum);
	}
}
void bne(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	ULL rs1Val = reg->getIntRegVal(rs1Int);
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	if (rs1Val != rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		ULL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		ULL immediateNum = (immediateNum << 19) >> 19;

		canjump = true;
		reg->changePC(immediateNum);
	}
}
void blt(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	ULL rs1Val = reg->getIntRegVal(rs1Int);
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	if ( (LL)rs1Val < (LL)rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		ULL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		ULL immediateNum = (immediateNum << 19) >> 19;

		canjump = true;
		reg->changePC(immediateNum);
	}
}
void bge(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	ULL rs1Val = reg->getIntRegVal(rs1Int);
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	if ( (LL)rs1Val < (LL)rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		ULL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		ULL immediateNum = (immediateNum << 19) >> 19;

		canjump = true;
		reg->changePC(immediateNum);
	}
}
void bltu(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	ULL rs1Val = reg->getIntRegVal(rs1Int);
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	if (rs1Val < rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		ULL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		ULL immediateNum = (immediateNum << 19) >> 19;

		canjump = true;
		reg->changePC(immediateNum);
	}
}
void bgeu(string instruction) {
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	ULL rs1Val = reg->getIntRegVal(rs1Int);
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	if (rs1Val > rs2Val) {
		ULL immediateNum_1 = ((content >> 31) & 1) << 11;
		ULL immediateNum_2 = ((content >> 7) & 1) << 10;
		ULL immediateNum_3 = ((content >> 25) & 63) << 4;
		ULL immediateNum_4 = ((content >> 8) & 15);
		ULL immediateNum = (immediateNum_1 + immediateNum_2 + immediateNum_3 + immediateNum_4) << 1;
		ULL immediateNum = (immediateNum << 19) >> 19;

		canjump = true;
		reg->changePC(immediateNum);
	}
}
void SB_TYPE_funct3(string instruction) {
	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3)) {
		case 000:
			beq(instruction);
			break;
		case 001:
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

	reg->setIntRegVal((ULL)immediateNum, rdInt);
}
void auipc(string instruction) {
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)( (content >> 12) << 12 );	//The 32-bit result is sign-extended to 64 bits.

	ULL rdVal = reg->getPC() + (ULL)immediateNum;
	reg->setIntRegVal(rdVal, rdInt);
}
void U_TYPE_opcode(string instruction) {
	string opcode = instruction.substr(25, 7);
	switch(atoi(opcode)) {
		case 0110111:
			lui(instruction);
			break;
		case 0010111:
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

	reg->setIntRegVal((ULL)reg->getPC() + 4, rdInt);
	
	canjump = true;
	reg->changePC( (ULL)immediateNum );
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
	LL sys_call_num = reg->getIntRegVal(7);
	systemCall((int)sys_call_num);
}
void ebreak() {
	
}
void E_INS(string instruction) {
	string diffPart = instruction.substr(11, 1);
	switch(atoi(diffPart)) {
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
	switch(atoi(funct3)) {
		case 000:
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
	__asm
	{
		pushq %rax
		pushq %rdx
		movq rs1Val, %rax
		imulq rs2Val
		movq %rax, rdVal
		popq %rdx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void MULH(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	__asm
	{
		pushq %rax
		pushq %rdx
		movq rs1Val, %rax
		imulq rs2Val
		movq %rdx, rdVal
		popq %rdx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void MULHSU(LL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal;
	__asm
	{
		pushq %rax
		pushq %rdx
		movq rs1Val, %rax
		imulq rs2Val
		movq %rdx, rdVal
		popq %rdx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void MULHU(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal;
	__asm
	{
		pushq %rax
		pushq %rdx
		movq rs1Val, %rax
		mulq rs2Val
		movq %rdx, rdVal
		popq %rdx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void DIV(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	if(rs2Val == 0)
	{
		reg->setIntRegVal(-1,rdInt);
		return;
	}
	if((rs1Val ^ 0x8000000000000000 == 0) && (rs2Val == -1))
	{
		reg->setIntRegVal(rs1Val, rdInt);
		return;
	}
	__asm
	{
		pushq %rax
		pushq %rdx
		movq rs1Val, %rax
		idivq rs2Val
		movq %rax, rdVal
		popq %rdx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void DIVU(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal;
	if(rs2Val == 0)
	{
		reg->setIntRegVal(0x7fffffffffffffff,rdInt);
		return;
	}
	__asm
	{
		pushq %rax
		pushq %rdx
		movq rs1Val, %rax
		divq rs2Val
		movq %rax, rdVal
		popq %rdx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void REM(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	if(rs2Val == 0)
	{
		reg->setIntRegVal(rs1Val,rdInt);
		return;
	}
	if((rs1Val ^ 0x8000000000000000 == 0) && (rs2Val == -1))
	{
		reg->setIntRegVal(0, rdInt);
		return;
	}
	__asm
	{
		pushq %rax
		pushq %rdx
		movq rs1Val, %rax
		idivq rs2Val
		movq %rdx, rdVal
		popq %rdx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void REMU(ULL rs1Val, ULL rs2Val, int rdInt) {
	LL rdVal;
	if(rs2Val == 0)
	{
		reg->setIntRegVal(rs1Val,rdInt);
		return;
	}
	__asm
	{
		pushq %rax
		pushq %rdx
		movq rs1Val, %rax
		divq rs2Val
		movq %rdx, rdVal
		popq %rdx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void MULW(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	__asm
	{
		pushq %rax
		pushq %rbx
		pushq %rdx
		movq rs1Val, %rax
		movq rs2Val, %rbx
		imull %ebx, %eax
		movq %rax, rdVal
		popq %rdx
		popq %rbx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void DIVW(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	if(rs2Val == 0)
	{
		reg->setIntRegVal(-1,rdInt);
		return;
	}
	__asm
	{
		pushq %rax
		pushq %rbx
		pushq %rdx
		movq rs1Val, %rax
		movq rs2Val, %rbx
		idivl %ebx, %eax
		movq %rax, rdVal
		popq %rdx
		popq %rbx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void DIVUW(ULL rs1Val, ULL rs2Val, int rdInt)
{
	LL rdVal;
	if(rs2Val == 0)
	{
		reg->setIntRegVal(0x7fffffffffffffff,rdInt);
		return;
	}
	__asm
	{
		pushq %rax
		pushq %rbx
		pushq %rdx
		movq rs1Val, %rax
		movq rs2Val, %rbx
		divl %ebx, %eax
		movq %rax, rdVal
		popq %rdx
		popq %rbx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void REMW(LL rs1Val, LL rs2Val, int rdInt) {
	LL rdVal;
	if(rs2Val == 0)
	{
		reg->setIntRegVal((int)rs1Val,rdInt);
		return;
	}
	__asm
	{
		pushq %rax
		pushq %rbx
		pushq %rdx
		movq rs1Val, %rax
		movq rs2Val, %rbx
		idivl %ebx, %eax
		movq %rdx, rdVal
		popq %rdx
		popq %rbx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void REMUW(ULL rs1Val, ULL rs2Val, int rdInt)
{
	LL rdVal;
	if(rs2Val == 0)
	{
		reg->setIntRegVal((unsigned int)rs1Val,rdInt);
		return;
	}
	__asm
	{
		pushq %rax
		pushq %rbx
		pushq %rdx
		movq rs1Val, %rax
		movq rs2Val, %rbx
		divl %ebx, %eax
		movq %rdx, rdVal
		popq %rdx
		popq %rbx
		popq %rax
	}
	reg->setIntRegVal(rdVal, rdInt);
}
void M_TYPE_funct3_1(string instruction) {
	//aLL M-TYPE instructions have the same part
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rdInt = (content >> 7) & 31;

	ULL rs1Val = reg->getIntRegVal(rs1Int);
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	//common part ends here

	string funct3 = instruction.substr(17, 3);
	switch(atoi(funct3)) {
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

	ULL rs1Val = reg->getIntRegVal(rs1Int);
	ULL rs2Val = reg->getIntRegVal(rs2Int);
	//common part ends here

	string funct3 = instruction.substr(17, 3);
	int tempInt = atoi(funct3);
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

	switch(typeIndex(opcode)) {
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
			return;
	}
}
void decode(ULL startAddr) {
	Initialize(startAddr);		//Initialize some variables and prepare for the decode part

	char tempChar[4];
	while(true) {
		memset(tempChar, 0, sizeof(tempChar));

		content = mymem->romemRead(reg->getPC(),4);
		memcpy((void *)tempChar, (void *)(&content), 4);
		string instruction(tempChar);
		getOpcode(instruction);

		if(canjump)
			canjump = false;
		else
			reg->changePC(4);
	}
}