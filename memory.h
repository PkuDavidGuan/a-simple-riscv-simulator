/*
Here gives the definition of the memory,
and we choose to use an unsigned char array to represent the memory.
*/
#define MEMSIZE 0x100000
typedef unsigned long long ull;
class Memory()
{
private:
	unsigned char RWMEMORY[MEMSIZE];            //read/write
	unsigned char ROMEMORY[MEMSIZE];           //read-only
	ull ROInitAddr;   //the beginning address of the read-only  areas
	ull RWInitAddr;   //the beginning address of the read/write areas
public:
	Memory();
	//Users and loader can use the following two functions to read/write in the RWMEMORY.
	ull rwmemRead(ull src, int size);
	void rwmemWrite(ull content, ull src, int size);
	//Users can read the ROMEMROY, but only the loader can write in the ROMEMORY.
	ull romemRead(ull src, int size);
	//Loaders should set the ROInitAddr and RWInitAddr.
	void setROInitAddr(ull addr) { ROInitAddr = addr; }
	void setRWInitAddr(ull addr) { RWInitAddr = addr; }
	void loadROMem(ull dest, ull src, ull size);
	void loadRWMem(ull dest, ull src, ull size);
}