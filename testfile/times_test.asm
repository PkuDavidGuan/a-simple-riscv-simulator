
times_test:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
_ftext():
   10000:	00002197          	auipc	gp,0x2
   10004:	d2018193          	addi	gp,gp,-736 # 11d20 <_gp>
   10008:	00001297          	auipc	t0,0x1
   1000c:	53028293          	addi	t0,t0,1328 # 11538 <_fbss>
   10010:	00001317          	auipc	t1,0x1
   10014:	57830313          	addi	t1,t1,1400 # 11588 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	1bc50513          	addi	a0,a0,444 # 101e0 <__libc_fini_array>
   1002c:	170000ef          	jal	1019c <atexit>
   10030:	20c000ef          	jal	1023c <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	16c0006f          	j	101b0 <exit>

0000000000010048 <_fini>:
_init():
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
deregister_tm_clones():
   1004c:	00011537          	lui	a0,0x11
   10050:	000117b7          	lui	a5,0x11
   10054:	51850713          	addi	a4,a0,1304 # 11518 <__TMC_END__>
   10058:	51f78793          	addi	a5,a5,1311 # 1151f <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	51850513          	addi	a0,a0,1304
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
register_tm_clones():
   10080:	00011537          	lui	a0,0x11
   10084:	000117b7          	lui	a5,0x11
   10088:	51850593          	addi	a1,a0,1304 # 11518 <__TMC_END__>
   1008c:	51878793          	addi	a5,a5,1304 # 11518 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	51850513          	addi	a0,a0,1304
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8201c783          	lbu	a5,-2016(gp) # 11540 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00011537          	lui	a0,0x11
   100e8:	97850513          	addi	a0,a0,-1672 # 10978 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	82f18023          	sb	a5,-2016(gp) # 11540 <_bss_start>
   100fc:	00813083          	ld	ra,8(sp)
   10100:	00013403          	ld	s0,0(sp)
   10104:	01010113          	addi	sp,sp,16
   10108:	00008067          	ret

000000000001010c <frame_dummy>:
frame_dummy():
   1010c:	ff010113          	addi	sp,sp,-16
   10110:	000007b7          	lui	a5,0x0
   10114:	00113423          	sd	ra,8(sp)
   10118:	00078793          	mv	a5,a5
   1011c:	00078c63          	beqz	a5,10134 <frame_dummy+0x28>
   10120:	00011537          	lui	a0,0x11
   10124:	82818593          	addi	a1,gp,-2008 # 11548 <object.3092>
   10128:	97850513          	addi	a0,a0,-1672 # 10978 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	000117b7          	lui	a5,0x11
   10138:	dc878513          	addi	a0,a5,-568 # 10dc8 <__JCR_END__>
   1013c:	00053783          	ld	a5,0(a0)
   10140:	00079863          	bnez	a5,10150 <frame_dummy+0x44>
   10144:	00813083          	ld	ra,8(sp)
   10148:	01010113          	addi	sp,sp,16
   1014c:	f35ff06f          	j	10080 <register_tm_clones>
   10150:	000007b7          	lui	a5,0x0
   10154:	00078793          	mv	a5,a5
   10158:	fe0786e3          	beqz	a5,10144 <frame_dummy+0x38>
   1015c:	000780e7          	jalr	a5
   10160:	fe5ff06f          	j	10144 <frame_dummy+0x38>

0000000000010164 <main>:
main():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/a-simple-riscv-simulator/testfile/times_test.c:4
#include <sys/times.h>

int main()
{
   10164:	fc010113          	addi	sp,sp,-64
   10168:	02113c23          	sd	ra,56(sp)
   1016c:	02813823          	sd	s0,48(sp)
   10170:	04010413          	addi	s0,sp,64
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/a-simple-riscv-simulator/testfile/times_test.c:6
    struct tms buf;
    clock_t clc = times(&buf);
   10174:	fc840793          	addi	a5,s0,-56
   10178:	00078513          	mv	a0,a5
   1017c:	668000ef          	jal	107e4 <times>
   10180:	fea43423          	sd	a0,-24(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/a-simple-riscv-simulator/testfile/times_test.c:7
    return 0;
   10184:	00000793          	li	a5,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/a-simple-riscv-simulator/testfile/times_test.c:8
   10188:	00078513          	mv	a0,a5
   1018c:	03813083          	ld	ra,56(sp)
   10190:	03013403          	ld	s0,48(sp)
   10194:	04010113          	addi	sp,sp,64
   10198:	00008067          	ret

000000000001019c <atexit>:
atexit():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/atexit.c:65
int
_DEFUN (atexit,
	(fn),
	_VOID _EXFNPTR(fn, (_VOID)))
{
  return __register_exitproc (__et_atexit, fn, NULL, NULL);
   1019c:	00050593          	mv	a1,a0
   101a0:	00000693          	li	a3,0
   101a4:	00000613          	li	a2,0
   101a8:	00000513          	li	a0,0
   101ac:	1300006f          	j	102dc <__register_exitproc>

00000000000101b0 <exit>:
exit():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:60
 */

void
_DEFUN (exit, (code),
	int code)
{
   101b0:	ff010113          	addi	sp,sp,-16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:66
#ifdef _LITE_EXIT
  /* Refer to comments in __atexit.c for more details of lite exit.  */
  void __call_exitprocs _PARAMS ((int, _PTR)) __attribute__((weak));
  if (__call_exitprocs)
#endif
    __call_exitprocs (code, NULL);
   101b4:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:60
 */

void
_DEFUN (exit, (code),
	int code)
{
   101b8:	00813023          	sd	s0,0(sp)
   101bc:	00113423          	sd	ra,8(sp)
   101c0:	00050413          	mv	s0,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:66
#ifdef _LITE_EXIT
  /* Refer to comments in __atexit.c for more details of lite exit.  */
  void __call_exitprocs _PARAMS ((int, _PTR)) __attribute__((weak));
  if (__call_exitprocs)
#endif
    __call_exitprocs (code, NULL);
   101c4:	22c000ef          	jal	103f0 <__call_exitprocs>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:68

  if (_GLOBAL_REENT->__cleanup)
   101c8:	8081b503          	ld	a0,-2040(gp) # 11528 <_global_impure_ptr>
   101cc:	05853783          	ld	a5,88(a0)
   101d0:	00078463          	beqz	a5,101d8 <exit+0x28>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:69
    (*_GLOBAL_REENT->__cleanup) (_GLOBAL_REENT);
   101d4:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:70
  _exit (code);
   101d8:	00040513          	mv	a0,s0
   101dc:	75c000ef          	jal	10938 <_exit>

00000000000101e0 <__libc_fini_array>:
__libc_fini_array():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:25
extern void _fini (void);

/* Run all the cleanup routines.  */
void
__libc_fini_array (void)
{
   101e0:	fe010113          	addi	sp,sp,-32
   101e4:	00813823          	sd	s0,16(sp)
   101e8:	00913423          	sd	s1,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:29
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
   101ec:	00011437          	lui	s0,0x11
   101f0:	000114b7          	lui	s1,0x11
   101f4:	97048493          	addi	s1,s1,-1680 # 10970 <__init_array_end>
   101f8:	97840413          	addi	s0,s0,-1672 # 10978 <__fini_array_end>
   101fc:	40940433          	sub	s0,s0,s1
   10200:	ff840793          	addi	a5,s0,-8
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:25
extern void _fini (void);

/* Run all the cleanup routines.  */
void
__libc_fini_array (void)
{
   10204:	00113c23          	sd	ra,24(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:29
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
   10208:	40345413          	srai	s0,s0,0x3
   1020c:	009784b3          	add	s1,a5,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:30
  for (i = count; i > 0; i--)
   10210:	00040c63          	beqz	s0,10228 <__libc_fini_array+0x48>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:31 (discriminator 3)
    __fini_array_start[i-1] ();
   10214:	0004b783          	ld	a5,0(s1)
   10218:	fff40413          	addi	s0,s0,-1
   1021c:	ff848493          	addi	s1,s1,-8
   10220:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:30
{
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
  for (i = count; i > 0; i--)
   10224:	fe0418e3          	bnez	s0,10214 <__libc_fini_array+0x34>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:34
    __fini_array_start[i-1] ();

  _fini ();
}
   10228:	01813083          	ld	ra,24(sp)
   1022c:	01013403          	ld	s0,16(sp)
   10230:	00813483          	ld	s1,8(sp)
   10234:	02010113          	addi	sp,sp,32
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:33
  
  count = __fini_array_end - __fini_array_start;
  for (i = count; i > 0; i--)
    __fini_array_start[i-1] ();

  _fini ();
   10238:	e11ff06f          	j	10048 <_fini>

000000000001023c <__libc_init_array>:
__libc_init_array():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   1023c:	fe010113          	addi	sp,sp,-32
   10240:	00813823          	sd	s0,16(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   10244:	000117b7          	lui	a5,0x11
   10248:	00011437          	lui	s0,0x11
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   1024c:	01213023          	sd	s2,0(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   10250:	96878793          	addi	a5,a5,-1688 # 10968 <_etext>
   10254:	96840913          	addi	s2,s0,-1688 # 10968 <_etext>
   10258:	41278933          	sub	s2,a5,s2
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   1025c:	00913423          	sd	s1,8(sp)
   10260:	00113c23          	sd	ra,24(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   10264:	40395913          	srai	s2,s2,0x3
   10268:	96840413          	addi	s0,s0,-1688
   1026c:	00000493          	li	s1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
  for (i = 0; i < count; i++)
   10270:	00090c63          	beqz	s2,10288 <__libc_init_array+0x4c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:35 (discriminator 3)
    __preinit_array_start[i] ();
   10274:	00043783          	ld	a5,0(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
{
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
  for (i = 0; i < count; i++)
   10278:	00148493          	addi	s1,s1,1
   1027c:	00840413          	addi	s0,s0,8
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:35
    __preinit_array_start[i] ();
   10280:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
{
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
  for (i = 0; i < count; i++)
   10284:	fe9918e3          	bne	s2,s1,10274 <__libc_init_array+0x38>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:37
    __preinit_array_start[i] ();

  _init ();
   10288:	dc1ff0ef          	jal	10048 <_fini>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:39

  count = __init_array_end - __init_array_start;
   1028c:	00011437          	lui	s0,0x11
   10290:	000117b7          	lui	a5,0x11
   10294:	96840913          	addi	s2,s0,-1688 # 10968 <_etext>
   10298:	97078793          	addi	a5,a5,-1680 # 10970 <__init_array_end>
   1029c:	41278933          	sub	s2,a5,s2
   102a0:	40395913          	srai	s2,s2,0x3
   102a4:	96840413          	addi	s0,s0,-1688
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
  for (i = 0; i < count; i++)
   102a8:	00000493          	li	s1,0
   102ac:	00090c63          	beqz	s2,102c4 <__libc_init_array+0x88>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:41 (discriminator 3)
    __init_array_start[i] ();
   102b0:	00043783          	ld	a5,0(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
    __preinit_array_start[i] ();

  _init ();

  count = __init_array_end - __init_array_start;
  for (i = 0; i < count; i++)
   102b4:	00148493          	addi	s1,s1,1
   102b8:	00840413          	addi	s0,s0,8
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:41
    __init_array_start[i] ();
   102bc:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
    __preinit_array_start[i] ();

  _init ();

  count = __init_array_end - __init_array_start;
  for (i = 0; i < count; i++)
   102c0:	fe9918e3          	bne	s2,s1,102b0 <__libc_init_array+0x74>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:42
    __init_array_start[i] ();
}
   102c4:	01813083          	ld	ra,24(sp)
   102c8:	01013403          	ld	s0,16(sp)
   102cc:	00813483          	ld	s1,8(sp)
   102d0:	00013903          	ld	s2,0(sp)
   102d4:	02010113          	addi	sp,sp,32
   102d8:	00008067          	ret

00000000000102dc <__register_exitproc>:
__register_exitproc():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   102dc:	fd010113          	addi	sp,sp,-48
   102e0:	02813023          	sd	s0,32(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   102e4:	8081b403          	ld	s0,-2040(gp) # 11528 <_global_impure_ptr>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   102e8:	00913c23          	sd	s1,24(sp)
   102ec:	00050493          	mv	s1,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   102f0:	1f843503          	ld	a0,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   102f4:	01213823          	sd	s2,16(sp)
   102f8:	01313423          	sd	s3,8(sp)
   102fc:	01413023          	sd	s4,0(sp)
   10300:	02113423          	sd	ra,40(sp)
   10304:	00058913          	mv	s2,a1
   10308:	00060a13          	mv	s4,a2
   1030c:	00068993          	mv	s3,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:81
#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
   10310:	0c050663          	beqz	a0,103dc <__register_exitproc+0x100>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:83
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
  if (p->_ind >= _ATEXIT_SIZE)
   10314:	00852703          	lw	a4,8(a0)
   10318:	01f00793          	li	a5,31
   1031c:	0017059b          	addiw	a1,a4,1
   10320:	04e7d063          	ble	a4,a5,10360 <__register_exitproc+0x84>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:90
#ifndef _ATEXIT_DYNAMIC_ALLOC
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
   10324:	000007b7          	lui	a5,0x0
   10328:	00078793          	mv	a5,a5
   1032c:	0a078e63          	beqz	a5,103e8 <__register_exitproc+0x10c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:93
	return -1;

      p = (struct _atexit *) malloc (sizeof *p);
   10330:	31800513          	li	a0,792
   10334:	ffff0317          	auipc	t1,0xffff0
   10338:	ccc300e7          	jalr	t1,-820 # 0 <_ftext-0x10000>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:94
      if (p == NULL)
   1033c:	0a050663          	beqz	a0,103e8 <__register_exitproc+0x10c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   10340:	1f843783          	ld	a5,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:101
#ifndef __SINGLE_THREAD__
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
   10344:	00052423          	sw	zero,8(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_next = _GLOBAL_ATEXIT;
      _GLOBAL_ATEXIT = p;
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
      p->_on_exit_args._is_cxa = 0;
   10348:	00100593          	li	a1,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   1034c:	00f53023          	sd	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:103
      _GLOBAL_ATEXIT = p;
   10350:	1ea43c23          	sd	a0,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:105
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
   10354:	30052823          	sw	zero,784(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_on_exit_args._is_cxa = 0;
   10358:	30052a23          	sw	zero,788(a0)
   1035c:	00000713          	li	a4,0
   10360:	00070793          	mv	a5,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:113
      p->_on_exit_args_ptr = NULL;
#endif
#endif
    }

  if (type != __et_atexit)
   10364:	02049e63          	bnez	s1,103a0 <__register_exitproc+0xc4>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:142
      args->_fntypes |= (1 << p->_ind);
      args->_dso_handle[p->_ind] = d;
      if (type == __et_cxa)
	args->_is_cxa |= (1 << p->_ind);
    }
  p->_fns[p->_ind++] = fn;
   10368:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   1036c:	00379793          	slli	a5,a5,0x3
   10370:	00b52423          	sw	a1,8(a0)
   10374:	00f50533          	add	a0,a0,a5
   10378:	01253023          	sd	s2,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:146
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif
  return 0;
   1037c:	00000513          	li	a0,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:147
}
   10380:	02813083          	ld	ra,40(sp)
   10384:	02013403          	ld	s0,32(sp)
   10388:	01813483          	ld	s1,24(sp)
   1038c:	01013903          	ld	s2,16(sp)
   10390:	00813983          	ld	s3,8(sp)
   10394:	00013a03          	ld	s4,0(sp)
   10398:	03010113          	addi	sp,sp,48
   1039c:	00008067          	ret
   103a0:	00371813          	slli	a6,a4,0x3
   103a4:	01050833          	add	a6,a0,a6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:136
	  p->_on_exit_args_ptr = args;
	}
#else
      args = &p->_on_exit_args;
#endif
      args->_fnargs[p->_ind] = arg;
   103a8:	11483823          	sd	s4,272(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:137
      args->_fntypes |= (1 << p->_ind);
   103ac:	31052883          	lw	a7,784(a0)
   103b0:	00100613          	li	a2,1
   103b4:	00e6173b          	sllw	a4,a2,a4
   103b8:	00e8e633          	or	a2,a7,a4
   103bc:	30c52823          	sw	a2,784(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:138
      args->_dso_handle[p->_ind] = d;
   103c0:	21383823          	sd	s3,528(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:139
      if (type == __et_cxa)
   103c4:	00200693          	li	a3,2
   103c8:	fad490e3          	bne	s1,a3,10368 <__register_exitproc+0x8c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:140
	args->_is_cxa |= (1 << p->_ind);
   103cc:	31452683          	lw	a3,788(a0)
   103d0:	00e6e733          	or	a4,a3,a4
   103d4:	30e52a23          	sw	a4,788(a0)
   103d8:	f91ff06f          	j	10368 <__register_exitproc+0x8c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:82
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
   103dc:	20040513          	addi	a0,s0,512
   103e0:	1ea43c23          	sd	a0,504(s0)
   103e4:	f31ff06f          	j	10314 <__register_exitproc+0x38>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:91
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
	return -1;
   103e8:	fff00513          	li	a0,-1
   103ec:	f95ff06f          	j	10380 <__register_exitproc+0xa4>

00000000000103f0 <__call_exitprocs>:
__call_exitprocs():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   103f0:	fa010113          	addi	sp,sp,-96
   103f4:	03413823          	sd	s4,48(sp)
   103f8:	8081ba03          	ld	s4,-2040(gp) # 11528 <_global_impure_ptr>
   103fc:	03313c23          	sd	s3,56(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   10400:	000009b7          	lui	s3,0x0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   10404:	04913423          	sd	s1,72(sp)
   10408:	05213023          	sd	s2,64(sp)
   1040c:	03513423          	sd	s5,40(sp)
   10410:	01713c23          	sd	s7,24(sp)
   10414:	01813823          	sd	s8,16(sp)
   10418:	04113c23          	sd	ra,88(sp)
   1041c:	04813823          	sd	s0,80(sp)
   10420:	03613023          	sd	s6,32(sp)
   10424:	01913423          	sd	s9,8(sp)
   10428:	01a13023          	sd	s10,0(sp)
   1042c:	00050913          	mv	s2,a0
   10430:	00058b93          	mv	s7,a1
   10434:	1f8a0a93          	addi	s5,s4,504
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   10438:	00100493          	li	s1,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   1043c:	fff00c13          	li	s8,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   10440:	00098993          	mv	s3,s3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:83
  __lock_acquire_recursive(__atexit_lock);
#endif

 restart:

  p = _GLOBAL_ATEXIT;
   10444:	1f8a3b03          	ld	s6,504(s4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10448:	0c0b0663          	beqz	s6,10514 <__call_exitprocs+0x124>
   1044c:	000a8d13          	mv	s10,s5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10450:	008b2403          	lw	s0,8(s6)
   10454:	fff4041b          	addiw	s0,s0,-1
   10458:	02045263          	bgez	s0,1047c <__call_exitprocs+0x8c>
   1045c:	08c0006f          	j	104e8 <__call_exitprocs+0xf8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99 (discriminator 2)
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   10460:	02040793          	addi	a5,s0,32
   10464:	00379793          	slli	a5,a5,0x3
   10468:	00fb07b3          	add	a5,s6,a5
   1046c:	1107b783          	ld	a5,272(a5)
   10470:	00fb8a63          	beq	s7,a5,10484 <__call_exitprocs+0x94>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10474:	fff4041b          	addiw	s0,s0,-1
   10478:	07840863          	beq	s0,s8,104e8 <__call_exitprocs+0xf8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   1047c:	00040713          	mv	a4,s0
   10480:	fe0b90e3          	bnez	s7,10460 <__call_exitprocs+0x70>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
   10484:	008b2783          	lw	a5,8(s6)
   10488:	00371713          	slli	a4,a4,0x3
   1048c:	00eb0733          	add	a4,s6,a4
   10490:	fff7879b          	addiw	a5,a5,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:104
	  if (d && (!args || args->_dso_handle[n] != d))
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
   10494:	01073683          	ld	a3,16(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	  if (n == p->_ind - 1)
   10498:	0a878e63          	beq	a5,s0,10554 <__call_exitprocs+0x164>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:108
	    p->_ind--;
	  else
	    p->_fns[n] = NULL;
   1049c:	00073823          	sd	zero,16(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:111

	  /* Skip functions that have already been called.  */
	  if (!fn)
   104a0:	fc068ae3          	beqz	a3,10474 <__call_exitprocs+0x84>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   104a4:	310b2783          	lw	a5,784(s6)
   104a8:	0084963b          	sllw	a2,s1,s0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:114

	  /* Skip functions that have already been called.  */
	  if (!fn)
	    continue;

	  ind = p->_ind;
   104ac:	008b2c83          	lw	s9,8(s6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   104b0:	00f677b3          	and	a5,a2,a5
   104b4:	08078c63          	beqz	a5,1054c <__call_exitprocs+0x15c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:119
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
   104b8:	314b2783          	lw	a5,788(s6)
   104bc:	00f67633          	and	a2,a2,a5
   104c0:	08061e63          	bnez	a2,1055c <__call_exitprocs+0x16c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:120
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
   104c4:	11073583          	ld	a1,272(a4)
   104c8:	00090513          	mv	a0,s2
   104cc:	000680e7          	jalr	a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);

	  /* The function we called call atexit and registered another
	     function (or functions).  Call these new functions before
	     continuing with the already registered functions.  */
	  if (ind != p->_ind || *lastp != p)
   104d0:	008b2783          	lw	a5,8(s6)
   104d4:	f79798e3          	bne	a5,s9,10444 <__call_exitprocs+0x54>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127 (discriminator 1)
   104d8:	000d3783          	ld	a5,0(s10)
   104dc:	f76794e3          	bne	a5,s6,10444 <__call_exitprocs+0x54>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   104e0:	fff4041b          	addiw	s0,s0,-1
   104e4:	f9841ce3          	bne	s0,s8,1047c <__call_exitprocs+0x8c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   104e8:	02098663          	beqz	s3,10514 <__call_exitprocs+0x124>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141
	break;

      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
   104ec:	008b2783          	lw	a5,8(s6)
   104f0:	06079c63          	bnez	a5,10568 <__call_exitprocs+0x178>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141 (discriminator 1)
   104f4:	000b3783          	ld	a5,0(s6)
   104f8:	08078263          	beqz	a5,1057c <__call_exitprocs+0x18c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
	  *lastp = p->_next;
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   104fc:	000b0513          	mv	a0,s6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:144
      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
	{
	  /* Remove empty block from the list.  */
	  *lastp = p->_next;
   10500:	00fd3023          	sd	a5,0(s10)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   10504:	ffff0317          	auipc	t1,0xffff0
   10508:	afc300e7          	jalr	t1,-1284 # 0 <_ftext-0x10000>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:150
	  p = *lastp;
   1050c:	000d3b03          	ld	s6,0(s10)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10510:	f40b10e3          	bnez	s6,10450 <__call_exitprocs+0x60>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:163
    }
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif

}
   10514:	05813083          	ld	ra,88(sp)
   10518:	05013403          	ld	s0,80(sp)
   1051c:	04813483          	ld	s1,72(sp)
   10520:	04013903          	ld	s2,64(sp)
   10524:	03813983          	ld	s3,56(sp)
   10528:	03013a03          	ld	s4,48(sp)
   1052c:	02813a83          	ld	s5,40(sp)
   10530:	02013b03          	ld	s6,32(sp)
   10534:	01813b83          	ld	s7,24(sp)
   10538:	01013c03          	ld	s8,16(sp)
   1053c:	00813c83          	ld	s9,8(sp)
   10540:	00013d03          	ld	s10,0(sp)
   10544:	06010113          	addi	sp,sp,96
   10548:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:118

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
   1054c:	000680e7          	jalr	a3
   10550:	f81ff06f          	j	104d0 <__call_exitprocs+0xe0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:106

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
	    p->_ind--;
   10554:	008b2423          	sw	s0,8(s6)
   10558:	f49ff06f          	j	104a0 <__call_exitprocs+0xb0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:122
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
	  else
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);
   1055c:	11073503          	ld	a0,272(a4)
   10560:	000680e7          	jalr	a3
   10564:	f6dff06f          	j	104d0 <__call_exitprocs+0xe0>
   10568:	000b3783          	ld	a5,0(s6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:154
	  free (p);
	  p = *lastp;
	}
      else
	{
	  lastp = &p->_next;
   1056c:	000b0d13          	mv	s10,s6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:155
	  p = p->_next;
   10570:	00078b13          	mv	s6,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10574:	ec0b1ee3          	bnez	s6,10450 <__call_exitprocs+0x60>
   10578:	f9dff06f          	j	10514 <__call_exitprocs+0x124>
   1057c:	00000793          	li	a5,0
   10580:	fedff06f          	j	1056c <__call_exitprocs+0x17c>

0000000000010584 <__syscall_error>:
__syscall_error():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:95

#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
   10584:	ff010113          	addi	sp,sp,-16
   10588:	00113423          	sd	ra,8(sp)
   1058c:	00813023          	sd	s0,0(sp)
   10590:	00050413          	mv	s0,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
  errno = -a0;
   10594:	3c0000ef          	jal	10954 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   10598:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
  errno = -a0;
   1059c:	408007bb          	negw	a5,s0
   105a0:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   105a4:	00013403          	ld	s0,0(sp)
   105a8:	fff00513          	li	a0,-1
   105ac:	01010113          	addi	sp,sp,16
   105b0:	00008067          	ret

00000000000105b4 <open>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   105b4:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   105b8:	40000893          	li	a7,1024
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   105bc:	00000073          	ecall
   105c0:	fc0542e3          	bltz	a0,10584 <__syscall_error>
open():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:103

int open(const char* name, int flags, int mode)
{
  return syscall_errno(SYS_open, name, flags, mode, 0);
}
   105c4:	0005051b          	sext.w	a0,a0
   105c8:	00008067          	ret

00000000000105cc <openat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   105cc:	03800893          	li	a7,56
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   105d0:	00000073          	ecall
   105d4:	fa0548e3          	bltz	a0,10584 <__syscall_error>
openat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:112
//------------------------------------------------------------------------
// Open file relative to given directory
int openat(int dirfd, const char* name, int flags, int mode)
{
  return syscall_errno(SYS_openat, dirfd, name, flags, mode);
}
   105d8:	0005051b          	sext.w	a0,a0
   105dc:	00008067          	ret

00000000000105e0 <lseek>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   105e0:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   105e4:	03e00893          	li	a7,62
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   105e8:	00000073          	ecall
   105ec:	f8054ce3          	bltz	a0,10584 <__syscall_error>
lseek():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:122
// Set position in a file.

off_t lseek(int file, off_t ptr, int dir)
{
  return syscall_errno(SYS_lseek, file, ptr, dir, 0);
}
   105f0:	00008067          	ret

00000000000105f4 <read>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   105f4:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   105f8:	03f00893          	li	a7,63
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   105fc:	00000073          	ecall
   10600:	f80542e3          	bltz	a0,10584 <__syscall_error>
read():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:132
// Read from a file.

ssize_t read(int file, void* ptr, size_t len)
{
  return syscall_errno(SYS_read, file, ptr, len, 0);
}
   10604:	00008067          	ret

0000000000010608 <write>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   10608:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1060c:	04000893          	li	a7,64
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10610:	00000073          	ecall
   10614:	f60548e3          	bltz	a0,10584 <__syscall_error>
write():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:142
// Write to a file.

ssize_t write(int file, const void* ptr, size_t len)
{
  return syscall_errno(SYS_write, file, ptr, len, 0);
}
   10618:	00008067          	ret

000000000001061c <fstat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   1061c:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10620:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10624:	05000893          	li	a7,80
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10628:	00000073          	ecall
   1062c:	f4054ce3          	bltz	a0,10584 <__syscall_error>
fstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:153
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
}
   10630:	0005051b          	sext.w	a0,a0
   10634:	00008067          	ret

0000000000010638 <stat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   10638:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   1063c:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10640:	40e00893          	li	a7,1038
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10644:	00000073          	ecall
   10648:	f2054ee3          	bltz	a0,10584 <__syscall_error>
stat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:163
// Status of a file (by name).

int stat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_stat, file, st, 0, 0);
}
   1064c:	0005051b          	sext.w	a0,a0
   10650:	00008067          	ret

0000000000010654 <lstat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   10654:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10658:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1065c:	40f00893          	li	a7,1039
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10660:	00000073          	ecall
   10664:	f20540e3          	bltz	a0,10584 <__syscall_error>
lstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:173
// Status of a link (by name).

int lstat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_lstat, file, st, 0, 0);
}
   10668:	0005051b          	sext.w	a0,a0
   1066c:	00008067          	ret

0000000000010670 <fstatat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   10670:	04f00893          	li	a7,79
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10674:	00000073          	ecall
   10678:	f00546e3          	bltz	a0,10584 <__syscall_error>
fstatat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:183
// Status of a file (by name) in a given directory.

int fstatat(int dirfd, const char* file, struct stat* st, int flags)
{
  return syscall_errno(SYS_fstatat, dirfd, file, st, flags);
}
   1067c:	0005051b          	sext.w	a0,a0
   10680:	00008067          	ret

0000000000010684 <access>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   10684:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10688:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1068c:	40900893          	li	a7,1033
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10690:	00000073          	ecall
   10694:	ee0548e3          	bltz	a0,10584 <__syscall_error>
access():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:193
// Permissions of a file (by name).

int access(const char* file, int mode)
{
  return syscall_errno(SYS_access, file, mode, 0, 0);
}
   10698:	0005051b          	sext.w	a0,a0
   1069c:	00008067          	ret

00000000000106a0 <faccessat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   106a0:	03000893          	li	a7,48
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106a4:	00000073          	ecall
   106a8:	ec054ee3          	bltz	a0,10584 <__syscall_error>
faccessat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:203
// Permissions of a file (by name) in a given directory.

int faccessat(int dirfd, const char* file, int mode, int flags)
{
  return syscall_errno(SYS_faccessat, dirfd, file, mode, flags);
}
   106ac:	0005051b          	sext.w	a0,a0
   106b0:	00008067          	ret

00000000000106b4 <close>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   106b4:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   106b8:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   106bc:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106c0:	03900893          	li	a7,57
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106c4:	00000073          	ecall
   106c8:	ea054ee3          	bltz	a0,10584 <__syscall_error>
close():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:213
// Close a file.

int close(int file) 
{
  return syscall_errno(SYS_close, file, 0, 0, 0);
}
   106cc:	0005051b          	sext.w	a0,a0
   106d0:	00008067          	ret

00000000000106d4 <link>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   106d4:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   106d8:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106dc:	40100893          	li	a7,1025
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106e0:	00000073          	ecall
   106e4:	ea0540e3          	bltz	a0,10584 <__syscall_error>
link():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:223
// Establish a new name for an existing file.

int link(const char* old_name, const char* new_name)
{
  return syscall_errno(SYS_link, old_name, new_name, 0, 0);
}
   106e8:	0005051b          	sext.w	a0,a0
   106ec:	00008067          	ret

00000000000106f0 <unlink>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   106f0:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   106f4:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   106f8:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106fc:	40200893          	li	a7,1026
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10700:	00000073          	ecall
   10704:	e80540e3          	bltz	a0,10584 <__syscall_error>
unlink():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:233
// Remove a file's directory entry.

int unlink(const char* name)
{
  return syscall_errno(SYS_unlink, name, 0, 0, 0);
}
   10708:	0005051b          	sext.w	a0,a0
   1070c:	00008067          	ret

0000000000010710 <execve>:
execve():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:242
//------------------------------------------------------------------------
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
   10710:	ff010113          	addi	sp,sp,-16
   10714:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
  errno = ENOMEM;
   10718:	23c000ef          	jal	10954 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   1071c:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
  errno = ENOMEM;
   10720:	00c00793          	li	a5,12
   10724:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   10728:	01010113          	addi	sp,sp,16
   1072c:	fff00513          	li	a0,-1
   10730:	00008067          	ret

0000000000010734 <fork>:
fork():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:254
//------------------------------------------------------------------------
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
   10734:	ff010113          	addi	sp,sp,-16
   10738:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
  errno = EAGAIN;
   1073c:	218000ef          	jal	10954 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   10740:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
  errno = EAGAIN;
   10744:	00b00793          	li	a5,11
   10748:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   1074c:	01010113          	addi	sp,sp,16
   10750:	fff00513          	li	a0,-1
   10754:	00008067          	ret

0000000000010758 <getpid>:
getpid():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:269
// system without processes just returns 1.

int getpid() 
{
  return 1;
}
   10758:	00100513          	li	a0,1
   1075c:	00008067          	ret

0000000000010760 <kill>:
kill():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:278
//------------------------------------------------------------------------
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
   10760:	ff010113          	addi	sp,sp,-16
   10764:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
  errno = EINVAL;
   10768:	1ec000ef          	jal	10954 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   1076c:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
  errno = EINVAL;
   10770:	01600793          	li	a5,22
   10774:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   10778:	01010113          	addi	sp,sp,16
   1077c:	fff00513          	li	a0,-1
   10780:	00008067          	ret

0000000000010784 <wait>:
wait():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:290
//------------------------------------------------------------------------
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
   10784:	ff010113          	addi	sp,sp,-16
   10788:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
  errno = ECHILD;
   1078c:	1c8000ef          	jal	10954 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   10790:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
  errno = ECHILD;
   10794:	00a00793          	li	a5,10
   10798:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   1079c:	01010113          	addi	sp,sp,16
   107a0:	fff00513          	li	a0,-1
   107a4:	00008067          	ret

00000000000107a8 <isatty>:
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:303
// Query whether output stream is a terminal. For consistency with the
// other minimal implementations, which only support output to stdout,
// this minimal implementation is suggested by the newlib docs.

int isatty(int file)
{
   107a8:	f8010113          	addi	sp,sp,-128
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   107ac:	00010593          	mv	a1,sp
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   107b0:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   107b4:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   107b8:	05000893          	li	a7,80
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   107bc:	00000073          	ecall
   107c0:	dc0542e3          	bltz	a0,10584 <__syscall_error>
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   107c4:	fff00793          	li	a5,-1
fstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:152
// Status of an open file. The sys/stat.h header file required is
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
   107c8:	0005051b          	sext.w	a0,a0
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306

int isatty(int file)
{
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   107cc:	00f50863          	beq	a0,a5,107dc <isatty+0x34>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306 (discriminator 1)
   107d0:	01012503          	lw	a0,16(sp)
   107d4:	40d5551b          	sraiw	a0,a0,0xd
   107d8:	00157513          	andi	a0,a0,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:307 (discriminator 4)
}
   107dc:	08010113          	addi	sp,sp,128
   107e0:	00008067          	ret

00000000000107e4 <times>:
times():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329

clock_t times(struct tms* buf)
{
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   107e4:	85818313          	addi	t1,gp,-1960 # 11578 <t0.2343>
   107e8:	00033703          	ld	a4,0(t1)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:326
// children's times to zero. Eventually we might want to separately
// account for user vs system time, but for now we just return the total
// number of cycles since starting the program.

clock_t times(struct tms* buf)
{
   107ec:	ff010113          	addi	sp,sp,-16
   107f0:	00050813          	mv	a6,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   107f4:	02071063          	bnez	a4,10814 <times+0x30>
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   107f8:	85818513          	addi	a0,gp,-1960 # 11578 <t0.2343>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   107fc:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10800:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10804:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10808:	0a900893          	li	a7,169
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1080c:	00000073          	ecall
   10810:	d6054ae3          	bltz	a0,10584 <__syscall_error>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   10814:	00010513          	mv	a0,sp
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   10818:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   1081c:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10820:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10824:	0a900893          	li	a7,169
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10828:	00000073          	ecall
   1082c:	d4054ce3          	bltz	a0,10584 <__syscall_error>
times():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10830:	00033703          	ld	a4,0(t1)
   10834:	00013783          	ld	a5,0(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   10838:	fff00513          	li	a0,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   1083c:	00083823          	sd	zero,16(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10840:	40e786b3          	sub	a3,a5,a4
   10844:	000f47b7          	lui	a5,0xf4
   10848:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xe2520>
   1084c:	02f68733          	mul	a4,a3,a5
   10850:	00833683          	ld	a3,8(t1)
   10854:	00813783          	ld	a5,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   10858:	00083c23          	sd	zero,24(a6)
   1085c:	00083423          	sd	zero,8(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10860:	40d787b3          	sub	a5,a5,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   10864:	01010113          	addi	sp,sp,16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10868:	00f707b3          	add	a5,a4,a5
   1086c:	00f83023          	sd	a5,0(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   10870:	00008067          	ret

0000000000010874 <gettimeofday>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   10874:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10878:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   1087c:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10880:	0a900893          	li	a7,169
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10884:	00000073          	ecall
   10888:	ce054ee3          	bltz	a0,10584 <__syscall_error>
gettimeofday():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:350
// Get the current time.  Only relatively correct.

int gettimeofday(struct timeval* tp, void* tzp)
{
  return syscall_errno(SYS_gettimeofday, tp, 0, 0, 0);
}
   1088c:	0005051b          	sext.w	a0,a0
   10890:	00008067          	ret

0000000000010894 <ftime>:
ftime():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:359
//----------------------------------------------------------------------
// Get the current time.  Only relatively correct.

int ftime(struct timeb* tp)
{
  tp->time = tp->millitm = 0;
   10894:	00051423          	sh	zero,8(a0)
   10898:	00053023          	sd	zero,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:361
  return 0;
}
   1089c:	00000513          	li	a0,0
   108a0:	00008067          	ret

00000000000108a4 <utime>:
utime():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:371
// Stub.

int utime(const char* path, const struct utimbuf* times)
{
  return -1;
}
   108a4:	fff00513          	li	a0,-1
   108a8:	00008067          	ret

00000000000108ac <chown>:
chown():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:381
// Stub.

int chown(const char* path, uid_t owner, gid_t group)
{
  return -1;
}
   108ac:	fff00513          	li	a0,-1
   108b0:	00008067          	ret

00000000000108b4 <chmod>:
chmod():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:391
// Stub.

int chmod(const char* path, mode_t mode)
{
  return -1;
}
   108b4:	fff00513          	li	a0,-1
   108b8:	00008067          	ret

00000000000108bc <chdir>:
chdir():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:401
// Stub.

int chdir(const char* path)
{
  return -1;
}
   108bc:	fff00513          	li	a0,-1
   108c0:	00008067          	ret

00000000000108c4 <getcwd>:
getcwd():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:411
// Stub.

char* getcwd(char* buf, size_t size)
{
  return NULL;
}
   108c4:	00000513          	li	a0,0
   108c8:	00008067          	ret

00000000000108cc <sysconf>:
sysconf():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:420
//----------------------------------------------------------------------
// Get configurable system variables

long sysconf(int name)
{
  switch(name)
   108cc:	00200793          	li	a5,2
   108d0:	00f51863          	bne	a0,a5,108e0 <sysconf+0x14>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:423
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
   108d4:	000f4537          	lui	a0,0xf4
   108d8:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xe2520>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:427
  }

  return -1;
}
   108dc:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:426
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
  }

  return -1;
   108e0:	fff00513          	li	a0,-1
   108e4:	00008067          	ret

00000000000108e8 <sbrk>:
sbrk():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
void* sbrk(ptrdiff_t incr)
{
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   108e8:	8181b703          	ld	a4,-2024(gp) # 11538 <_fbss>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:438
// on this, it is useful to have a working implementation. The following
// is suggested by the newlib docs and suffices for a standalone
// system.

void* sbrk(ptrdiff_t incr)
{
   108ec:	00050793          	mv	a5,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   108f0:	00071663          	bnez	a4,108fc <sbrk+0x14>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:443
    heap_end = (long)_end;
   108f4:	86818713          	addi	a4,gp,-1944 # 11588 <_end>
   108f8:	80e1bc23          	sd	a4,-2024(gp) # 11538 <_fbss>
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   108fc:	00e78533          	add	a0,a5,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   10900:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10904:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10908:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1090c:	0d600893          	li	a7,214
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10910:	00000073          	ecall
   10914:	c60548e3          	bltz	a0,10584 <__syscall_error>
sbrk():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   10918:	8181b683          	ld	a3,-2024(gp) # 11538 <_fbss>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:445
    return (void*)-1;
   1091c:	fff00713          	li	a4,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
    heap_end = (long)_end;
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   10920:	00d787b3          	add	a5,a5,a3
   10924:	00f51663          	bne	a0,a5,10930 <sbrk+0x48>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:447
    return (void*)-1;

  heap_end += incr;
   10928:	80a1bc23          	sd	a0,-2024(gp) # 11538 <_fbss>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:448
  return heap_end - incr;
   1092c:	00068713          	mv	a4,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:449
}
   10930:	00070513          	mv	a0,a4
   10934:	00008067          	ret

0000000000010938 <_exit>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   10938:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   1093c:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10940:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10944:	05d00893          	li	a7,93
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10948:	00000073          	ecall
   1094c:	c2054ce3          	bltz	a0,10584 <__syscall_error>
   10950:	0000006f          	j	10950 <_exit+0x18>

0000000000010954 <__errno>:
__errno():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/errno/errno.c:14

int *
__errno ()
{
  return &_REENT->_errno;
}
   10954:	8101b503          	ld	a0,-2032(gp) # 11530 <_impure_ptr>
   10958:	00008067          	ret
