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

####cache的思路：
* 首先使用replacedecision，该函数判断是否hit，如果hit会返回true，且hit行所在的行号，方便hit之后的操作。如果miss则返回false。
* Hit的操作：更新simtime（模拟时间戳，为了实现LRU策略，每次Handlerequest加一），更新access_num。
  * 如果读cache，则正常操作。
  * 如果写：write through策略，向下写一层。write back策略，设置dirty位。
* Miss操作：miss num加一。
  1. 如果是写不分配策略，则直接写下层storage，不用经过下面的操作。注意：miss时只有此情况simtime加一（基于访问一次cache则simtime上升一次）
  2. 调用replacealgorithm函数，选择某个block，如果被选择的block存在内容而且dirty为true，则首先保存block信息，然后则将新的block换入；其它情况直接将新block换入。注意，如果替换旧页，则replace_num加一。
  3. 再次调用本等级的handlerequest，此时会hit，而且由于之前的保证，simtime只会加一次。

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


