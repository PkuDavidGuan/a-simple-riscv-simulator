#a-simple-riscv-simulator
##代码介绍
* loader.cc:加载elf文件，把两个LOAD段写入模拟的memory中，设置初始pc值以及栈初始化。最后，程序从main函数运行。
* memory.h/memory.cc:模拟内存。私有变量有ROMEM、RWMEM、STACK，公有接口提供ROMEM的读，RWMEM的读写，loader的加载过程。However，栈还没想好怎么写
* register.h:模拟寄存器堆。
* decode.cpp:模拟取址、译码、执行、访存、写回的所有过程。提供RV64I basic、M、F集的指令。
* syscall.h/cc:模拟系统调用的实现
* test.asm:测试文件的反汇编
* log_fy: 调试日志
* testfile: 测试文件

##使用简介：
>     运行流程：
1. Download.
2. make clean
3. make
4. ./simulator
5. 按照提示运行

###运行模式：
1. 普通模式
2. 调试模式
我们的模拟器提供了简单gdb功能。
* 设置断点： b addr(hex)
* 直到执行结束： c
* 读内存内容： m addr(hex)
* 单步运行： s
* 退出： q
* PS:如果希望得到更全面的信息，可以在decode.cpp中自行添加。


