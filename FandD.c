//---------------------lalala-------------------------
void FSQRT_D(int rs1Int, int rs2Int, int rdInt, int rmInt)
{

}
void FSGNJ_D(int rs1Int, int rs2Int, int rdInt, int rmInt)
{

}
void FMIN_MAX_D(int rs1Int, int rs2Int, int rdInt, int rmInt)
{

}
void FCLASS(int rs1Int, int rs2Int, int rdInt, int rmInt)
{

}
//---------------------lalala-------------------------

void FADD_D(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	double rs1Val = reg.getFloatRegVal(rs1Int);
	double rs2Val = reg.getFloatRegVal(rs2Int);
	reg.setFloatRegVal(rs1Val+rs2Val, rdInt);
}
void FSUB_D(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	double rs1Val = reg.getFloatRegVal(rs1Int);
	double rs2Val = reg.getFloatRegVal(rs2Int);
	reg.setFloatRegVal(rs1Val+rs2Val, rdInt);
}
void FMUL_D(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	double rs1Val = reg.getFloatRegVal(rs1Int);
	double rs2Val = reg.getFloatRegVal(rs2Int);
	reg.setFloatRegVal(rs1Val*rs2Val, rdInt);
}
void FMUL(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	float rs1Val = reg.getFloatRegVal(rs1Int);
	float rs2Val = reg.getFloatRegVal(rs2Int);
	reg.setFloatRegVal(rs1Val*rs2Val, rdInt);
}
void FDIV(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	float rs1Val = reg.getFloatRegVal(rs1Int);
	float rs2Val = reg.getFloatRegVal(rs2Int);
	reg.setFloatRegVal(rs1Val/rs2Val, rdInt);
}
void FDIV_D(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	double rs1Val = reg.getFloatRegVal(rs1Int);
	double rs2Val = reg.getFloatRegVal(rs2Int);
	reg.setFloatRegVal(rs1Val/rs2Val, rdInt);
}
void FCVT_SD(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	float rs1Val = reg.getFloatRegVal(rs1Int);
	reg.setFloatRegVal(rs1Val, rdInt);
}
void FCVT_DS(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	float rs1Val = reg.getFloatRegVal(rs1Int);
	reg.setFloatRegVal(rs1Val, rdInt);
}
void FEQ_LT_LE(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	double rs1Val = reg.getFloatRegVal(rs1Int);
	double rs2Val = reg.getFloatRegVal(rs2Int);
	if(rmInt == 0)
	{
		if(rs1Val <= rs2Val)
			reg.setIntRegVal(1, rdInt);
		else
			reg.setIntRegVal(0, rdInt);
	}
	else if(rmInt == 1)
	{
		if(rs1Val < rs2Val)
			reg.setIntRegVal(1, rdInt);
		else
			reg.setIntRegVal(0, rdInt);
	}
	else if(rmInt == 2)
	{
		if(rs1Val == rs2Val)
			reg.setIntRegVal(1, rdInt);
		else
			reg.setIntRegVal(0, rdInt);
	}
	else
	{
		cout << "fcompare ins was wrong!" << endl;
		cout << "Exit!" << endl;
		assert(false);
	}
}
void FCVT_WD_LD(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	double rs1Val = reg.getFloatRegVal(rs1Int);
	if(rs2Int == 0)
	{
		reg.setIntRegVal((int)rs1Val, rdInt);
	}
	else if(rs2Int == 1)
	{
		reg.setIntRegVal((unsigned int)rs1Val, rdInt);
	}
	else if(rs2Int == 2)
	{
		reg.setIntRegVal((long long)rs1Val, rdInt);
	}
	else if(rs2Int == 3)
	{
		reg.setIntRegVal((unsigned long long)rs1Val, rdInt);
	}
	else
	{
		cout << "fcvt.*.d ins was wrong!" << endl;
		cout << "Exit!" << endl;
		assert(false);
	}
}
void FCVT_DW_DL(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	if(rs2Int == 0)
	{
		int rs1Val = reg.getIntRegVal(rs1Int);
		reg.setFloatRegVal(rs1Val, rdInt);
	}
	else if(rs2Int == 1)
	{
		unsigned int rs1Val = reg.getIntRegVal(rs1Int);
		reg.setFloatRegVal(rs1Val, rdInt);
	}
	else if(rs2Int == 2)
	{
		long long rs1Val = reg.getIntRegVal(rs1Int);
		reg.setFloatRegVal(rs1Val, rdInt);
	}
	else if(rs2Int == 3)
	{
		unsigned long long rs1Val = reg.getIntRegVal(rs1Int);
		reg.setFloatRegVal(rs1Val, rdInt);
	}
	else
	{
		cout << "fcvt.d.* ins was wrong!" << endl;
		cout << "Exit!" << endl;
		assert(false);
	}
}
void FMV_XD(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	double rs1Val = reg.getFloatRegVal(rs1Int);
	reg.setIntRegVal(*((unsigned long long *)(&rs1Val)),rdInt);
}
void FMV_DX(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	unsigned long long rs1Val = reg.getIntRegVal(rs1Int);
	reg.setFloatRegVal(*((double *)(&rs1Val)),rdInt);
}
void FCVT_SW_SL(int rs1Int, int rs2Int, int rdInt, int rmInt)
{
	if(rs2Int == 0)
	{
		int rs1Val = reg.getIntRegVal(rs1Int);
		reg.setFloatRegVal((float)rs1Val, rdInt);
	}
	else if(rs2Int == 1)
	{
		unsigned int rs1Val = reg.getIntRegVal(rs1Int);
		reg.setFloatRegVal((float)rs1Val, rdInt);
	}
	else if(rs2Int == 2)
	{
		long long rs1Val = reg.getIntRegVal(rs1Int);
		reg.setFloatRegVal((float)rs1Val, rdInt);
	}
	else if(rs2Int == 3)
	{
		unsigned long long rs1Val = reg.getIntRegVal(rs1Int);
		reg.setFloatRegVal((float)rs1Val, rdInt);
	}
	else
	{
		cout << "fcvt.s.* ins was wrong!" << endl;
		cout << "Exit!" << endl;
		assert(false);
	}
}

/*
the control logic
*/
void FLoad_funct3(string instruction)
{
	int rs1Int = (content >> 15) & 31;
	int rdInt = (content >> 7) & 31;
	LL immediateNum = (LL)content >> 20;

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);

	string funct3 = instruction.substr(17, 3);
	int tempInt = atoi(funct3.c_str());
	switch(tempInt) {
		case 010:
			float * loadData;
			*((unsigned int *)loadData) = mymem.rwmemReadWord(immediateNum + rs1Val);
			reg.setFloatRegVal(*loadData, rdInt);
			break;
		case 011:
			double * loadData;
			*((ULL *)loadData) = mymem.rwmemReadDword(immediateNum + rs1Val);
			reg.setFloatRegVal(*loadData, rdInt);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "float load funct3 error!" << endl;
			cout << "Exit!" << endl;
			assert(false);
			return;
	}
}

void FStore_funct3(string instruction)
{
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	LL immediateLowerPart = (LL)(content >> 7) & 31;
	LL immediateHigherPart = (LL)((content >> 25) & 127) << 5;
	LL immediateNum = ((immediateHigherPart + immediateLowerPart) << 52) >> 52;	
	//get the immediate number and get sign-extended

	LL rs1Val = (LL)reg.getIntRegVal(rs1Int);
	LL memoryAddr = immediateNum + rs1Val;

	string funct3 = instruction.substr(17, 3);
	int tempInt = atoi(funct3.c_str());
	switch(tempInt) {
		case 010:
			float rs2Val = reg.getFloatRegVal(rs2Int);
			mymem.rwmemWriteWord(*((unsigned int *)(&rs2Val)), memoryAddr);
			break;
		case 011:
			double rs2Val = reg.getFloatRegVal(rs2Int);
			mymem.rwmemWriteDword(*((ULL *)(&rs2Val)), memoryAddr);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "float load funct3 error!" << endl;
			cout << "Exit!" << endl;
			assert(false);
			return;
	}
}

void FMadd_funct2(string instruction)
{
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rs3Int = (content >> 27) & 31;
	int rdInt = (content >> 7) & 31;

	string funct2 = instruction.substr(5, 2);
	int tempInt = atoi(funct2.c_str());
	switch(tempInt) {
		case 00:
			float rs1Val = reg.getFloatRegVal(rs1Int);
			float rs2Val = reg.getFloatRegVal(rs2Int);
			float rs3Val = reg.getFloatRegVal(rs3Int);
			float rdVal = rs1Val*rs2Val + rs3Val;
			reg.setFloatRegVal(rdVal, rdInt);
			break;
		case 01:
			double rs1Val = reg.getFloatRegVal(rs1Int);
			double rs2Val = reg.getFloatRegVal(rs2Int);
			double rs3Val = reg.getFloatRegVal(rs3Int);
			double rdVal = rs1Val*rs2Val + rs3Val;
			reg.setFloatRegVal(rdVal, rdInt);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "fmadd funct2 error!" << endl;
			cout << "Exit!" << endl;
			assert(false);
			return;
	}
}

void FMsub_funct2(string instruction)
{
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rs3Int = (content >> 27) & 31;
	int rdInt = (content >> 7) & 31;

	string funct2 = instruction.substr(5, 2);
	int tempInt = atoi(funct2.c_str());
	switch(tempInt) {
		case 00:
			float rs1Val = reg.getFloatRegVal(rs1Int);
			float rs2Val = reg.getFloatRegVal(rs2Int);
			float rs3Val = reg.getFloatRegVal(rs3Int);
			float rdVal = rs1Val*rs2Val - rs3Val;
			reg.setFloatRegVal(rdVal, rdInt);
			break;
		case 01:
			double rs1Val = reg.getFloatRegVal(rs1Int);
			double rs2Val = reg.getFloatRegVal(rs2Int);
			double rs3Val = reg.getFloatRegVal(rs3Int);
			double rdVal = rs1Val*rs2Val - rs3Val;
			reg.setFloatRegVal(rdVal, rdInt);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "fmsub funct2 error!" << endl;
			cout << "Exit!" << endl;
			assert(false);
			return;
	}
}

void FNMsub_funct2(string instruction)
{
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rs3Int = (content >> 27) & 31;
	int rdInt = (content >> 7) & 31;

	string funct2 = instruction.substr(5, 2);
	int tempInt = atoi(funct2.c_str());
	switch(tempInt) {
		case 00:
			float rs1Val = reg.getFloatRegVal(rs1Int);
			float rs2Val = reg.getFloatRegVal(rs2Int);
			float rs3Val = reg.getFloatRegVal(rs3Int);
			float rdVal = -(rs1Val*rs2Val - rs3Val);
			reg.setFloatRegVal(rdVal, rdInt);
			break;
		case 01:
			double rs1Val = reg.getFloatRegVal(rs1Int);
			double rs2Val = reg.getFloatRegVal(rs2Int);
			double rs3Val = reg.getFloatRegVal(rs3Int);
			double rdVal = -(rs1Val*rs2Val - rs3Val);
			reg.setFloatRegVal(rdVal, rdInt);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "fnmsub funct2 error!" << endl;
			cout << "Exit!" << endl;
			assert(false);
			return;
	}
}

void FNMadd_funct2(string instruction)
{
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rs3Int = (content >> 27) & 31;
	int rdInt = (content >> 7) & 31;

	string funct2 = instruction.substr(5, 2);
	int tempInt = atoi(funct2.c_str());
	switch(tempInt) {
		case 00:
			float rs1Val = reg.getFloatRegVal(rs1Int);
			float rs2Val = reg.getFloatRegVal(rs2Int);
			float rs3Val = reg.getFloatRegVal(rs3Int);
			float rdVal = -(rs1Val*rs2Val + rs3Val);
			reg.setFloatRegVal(rdVal, rdInt);
			break;
		case 01:
			double rs1Val = reg.getFloatRegVal(rs1Int);
			double rs2Val = reg.getFloatRegVal(rs2Int);
			double rs3Val = reg.getFloatRegVal(rs3Int);
			double rdVal = -(rs1Val*rs2Val + rs3Val);
			reg.setFloatRegVal(rdVal, rdInt);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "fnmadd funct2 error!" << endl;
			cout << "Exit!" << endl;
			assert(false);
			return;
	}
}

void F_TYPE_funct7(string instruction)
{
	int rs1Int = (content >> 15) & 31;
	int rs2Int = (content >> 20) & 31;
	int rs3Int = (content >> 27) & 31;
	int rdInt = (content >> 7) & 31;
	int rmInt = (content >> 12) & 7;

	string funct7 = instruction.substr(0, 7);
	switch(atoi(funct7.c_str())) {
		case 0000001:
			FADD_D(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 0000101:
			FSUB_D(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 0001001:
            FMUL_D(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 0001000:
			FMUL(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 0001100:
			FDIV(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 0001101:
			FDIV_D(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 0101101:
			FSQRT_D(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 0010001:
			FSGNJ_D(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 0010101:
			FMIN_MAX_D(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 0100000:
			FCVT_SD(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 0100001:
			FCVT_DS(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 1010001:
			FEQ_LT_LE(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 1110001:
			FCLASS(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 1100001:
			FCVT_WD_LD(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 1101001:
			FCVT_DW_DL(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 1110001:
			FMV_XD(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 1111001:
			FMV_DX(rs1Int, rs2Int, rdInt, rmInt);
			break;
		case 1101000:
			FCVT_SW_SL(rs1Int, rs2Int, rdInt, rmInt);
			break;
		default:
			cout << "Error when parsing instruction: " << instruction << endl;
			cout << "F-TYPE funct7 error!" << endl;
			cout << "Exit!" << endl;
			assert(false);
			return;
	}
}