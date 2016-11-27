#a-simple-riscv-simulator
##代码介绍
###基础部分
* loader.cc:加载elf文件，把两个LOAD段写入模拟的memory中，设置初始pc值以及栈初始化。最后，程序从main函数运行。
* memory_sim.h/memory_sim.cc:模拟内存。私有变量有RWMEM、STACK，提供两者的读写（1，2，4，8字节）、loader的加载、brk的各种操作，
* register.h:模拟寄存器堆。均为64位，均用unsigned long long模拟。提供show函数展示当前寄存器信息
* decode.cpp:模拟取址、译码、执行、访存、写回的所有过程。提供RV64I basic、M、F集的指令。
* syscall.h/cc:模拟系统调用的实现，并且定义了大量的宏，如系统调用号、寄存器号
* test.asm:测试文件的反汇编
* log_fy: 调试日志
* testfile: 测试文件

###cache部分
在cachefile/def.h中定义CACHE后，模拟器运行在cache模式下。
* storage.h： 基类，提供access_counter、miss_num等记录信息以及本级存储hit延时和截至传输延迟。
* cache.h: cache实现，目前实现了handlerequest和替换策略。
* memory.h： 提供成员_mem_，作为虚拟内存。

##使用简介：
>     依赖关系：
首先安装riscv工具链。
url： https://github.com/riscv/riscv-tools

>     运行流程：
1. Download.
2. make clean
3. make
4. ./simulator
5. 按照提示运行

###运行模式：
1. 普通模式
2. 调试模式
我们的模拟器提供了简单gdb功能。在DEBUG模式下自行提供装载信息、每条指令地址、内容、rd寄存器编号、跳转位置。
* 设置断点： b addr(hex)
* 直到执行结束： c
* 读内存内容： m addr(hex)
* 单步运行： s
* 退出： q
* PS:如果希望得到更全面的信息，可以在decode.cpp中自行添加。另外存在bug，欢迎后人更正。


