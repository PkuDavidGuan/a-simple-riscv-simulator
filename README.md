#a-simple-riscv-simulator
##代码介绍
* loader.cc:加载elf文件，把两个LOAD段写入模拟的memory中，设置初始pc值以及栈初始化。最后，程序从main函数运行。
* memory.h/memory.cc:模拟内存。私有变量有ROMEM、RWMEM、STACK，公有接口提供ROMEM的读，RWMEM的读写，loader的加载过程。However，栈还没想好怎么写
* register.h:模拟寄存器堆。
* decode.cpp：模拟取址、译码、执行、访存、写回的所有过程。提供RV64I basic、M、F集的指令。

##待完成工作
* stack
* memory.cc？不知道对不对，反正我感觉对了。。。。。
* 接口部分，和decode.cpp的对接
* decode.cpp的调试。WillNew你让我又爱又恨，bug有点多啊摔
...