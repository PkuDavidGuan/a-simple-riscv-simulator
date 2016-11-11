#a-simple-riscv-simulator
##代码介绍
* loader.cc:加载elf文件，把两个LOAD段写入模拟的memory中，设置初始pc值以及栈初始化。最后，程序从main函数运行。
* memory.h/memory.cc:模拟内存。私有变量有ROMEM、RWMEM、STACK，公有接口提供ROMEM的读，RWMEM的读写，loader的加载过程。However，栈还没想好怎么写
* register.h:模拟寄存器堆。
* decode.cpp：模拟取址、译码、执行、访存、写回的所有过程。提供RV64I basic、M、F集的指令。
* test.asm
##待完成工作
* stack
* memory.cc？不知道对不对，反正我感觉对了。。。。。
* 接口部分，和decode.cpp的对接
* decode.cpp的调试。WillNew你让我又爱又恨，bug有点多啊摔
...

## make file log
* changed xor to _xor, cos xor stand for ^ in c++/g++
* changed and to _and
* changed or to _or 
* changed reg->* to reg.* ... I assume a Java guy wrote this but this is C++ ... 
* changed atoi(funct3) to atoi(funct3.c_str()) ... also reflect a Java guy ...
* for more changes, use git diff to see


* the MUL part is quite buggy, consider implement it using C rather than inline assembly


* it is STRONGLY SUGGESTED to use size\_t, uint32\_t, uint16\_t, uint64\_t defined in <sys/types.h> instead of this uul thing because
** it will coherent with glibc definition such as memcpy, memset function
** it will adjust the type length to the architecture accordingly -- and now it got error ... 
* DO NOT DEFINE ANYTHING in .h file ... it will cause multiple definition problem
* instead, declare a class A in a .h file, define it as global variable in a .cpp file A a\_class, if other .cpp want use it, simply use extern A a\_class
* Multiple dependency ... read C++ primer plus, Chapter 9, seperate Compilation