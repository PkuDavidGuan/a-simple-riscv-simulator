/*
Here gives the definition of the memory,
and we choose to use an unsigned char array to represent the memory.
*/
#define MEMORYSIZE 1024
typedef unsigned long long ull;
class Memory()
{
private:
	unsigned char RWMEMORY[MEMORYSIZE];            //read/write
	unsigned char ROMEMEORY[MEMORYSIZE];           //read-only
	ull ROInitAddr;   //the beginning address of the read-only  areas
	ull RWInitAddr;   //the beginning address of the read/write areas
public:
	Memory();
	//Users and loader can use the following two functions to read/write in the RWMEMORY.
	ull rwmemRead(ull src, int size);
	void rwmemWrite(ull content, ull src, int size);
	//Users can read the ROMEMROY, but only the loader can write in the ROMEMORY.
	ull romemRead(ull src, int size);
	void romemWrite(ull content, ull src, int size, bool elf = false);
	//Loaders should set the ROInitAddr and RWInitAddr.
	void setROInitAddr(ull addr) { ROInitAddr = addr; }
	void setRWInitAddr(ull addr) { RWInitAddr = addr; }
}