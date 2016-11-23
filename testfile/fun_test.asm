
fun_test:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
_ftext():
   10000:	00002197          	auipc	gp,0x2
   10004:	d8018193          	addi	gp,gp,-640 # 11d80 <_gp>
   10008:	00001297          	auipc	t0,0x1
   1000c:	59028293          	addi	t0,t0,1424 # 11598 <_fbss>
   10010:	00001317          	auipc	t1,0x1
   10014:	5d830313          	addi	t1,t1,1496 # 115e8 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	1d850513          	addi	a0,a0,472 # 101fc <__libc_fini_array>
   1002c:	18c000ef          	jal	101b8 <atexit>
   10030:	228000ef          	jal	10258 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	13c000ef          	jal	1017c <main>
   10044:	1880006f          	j	101cc <exit>

0000000000010048 <_fini>:
_init():
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
deregister_tm_clones():
   1004c:	80018713          	addi	a4,gp,-2048 # 11580 <_edata>
   10050:	80718793          	addi	a5,gp,-2041 # 11587 <_edata+0x7>
   10054:	40e787b3          	sub	a5,a5,a4
   10058:	00e00713          	li	a4,14
   1005c:	00f77c63          	bleu	a5,a4,10074 <deregister_tm_clones+0x28>
   10060:	00000337          	lui	t1,0x0
   10064:	00030313          	mv	t1,t1
   10068:	00030663          	beqz	t1,10074 <deregister_tm_clones+0x28>
   1006c:	80018513          	addi	a0,gp,-2048 # 11580 <_edata>
   10070:	00030067          	jr	t1
   10074:	00008067          	ret

0000000000010078 <register_tm_clones>:
register_tm_clones():
   10078:	80018593          	addi	a1,gp,-2048 # 11580 <_edata>
   1007c:	80018793          	addi	a5,gp,-2048 # 11580 <_edata>
   10080:	40b787b3          	sub	a5,a5,a1
   10084:	4037d793          	srai	a5,a5,0x3
   10088:	03f7d593          	srli	a1,a5,0x3f
   1008c:	00f585b3          	add	a1,a1,a5
   10090:	4015d593          	srai	a1,a1,0x1
   10094:	00058c63          	beqz	a1,100ac <register_tm_clones+0x34>
   10098:	00000337          	lui	t1,0x0
   1009c:	00030313          	mv	t1,t1
   100a0:	00030663          	beqz	t1,100ac <register_tm_clones+0x34>
   100a4:	80018513          	addi	a0,gp,-2048 # 11580 <_edata>
   100a8:	00030067          	jr	t1
   100ac:	00008067          	ret

00000000000100b0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
   100b0:	ff010113          	addi	sp,sp,-16
   100b4:	00813023          	sd	s0,0(sp)
   100b8:	8201c783          	lbu	a5,-2016(gp) # 115a0 <_bss_start>
   100bc:	00113423          	sd	ra,8(sp)
   100c0:	02079663          	bnez	a5,100ec <__do_global_dtors_aux+0x3c>
   100c4:	f89ff0ef          	jal	1004c <deregister_tm_clones>
   100c8:	000007b7          	lui	a5,0x0
   100cc:	00078793          	mv	a5,a5
   100d0:	00078a63          	beqz	a5,100e4 <__do_global_dtors_aux+0x34>
   100d4:	00011537          	lui	a0,0x11
   100d8:	99050513          	addi	a0,a0,-1648 # 10990 <__fini_array_end>
   100dc:	ffff0317          	auipc	t1,0xffff0
   100e0:	f24300e7          	jalr	t1,-220 # 0 <_ftext-0x10000>
   100e4:	00100793          	li	a5,1
   100e8:	82f18023          	sb	a5,-2016(gp) # 115a0 <_bss_start>
   100ec:	00813083          	ld	ra,8(sp)
   100f0:	00013403          	ld	s0,0(sp)
   100f4:	01010113          	addi	sp,sp,16
   100f8:	00008067          	ret

00000000000100fc <frame_dummy>:
frame_dummy():
   100fc:	ff010113          	addi	sp,sp,-16
   10100:	000007b7          	lui	a5,0x0
   10104:	00113423          	sd	ra,8(sp)
   10108:	00078793          	mv	a5,a5
   1010c:	00078c63          	beqz	a5,10124 <frame_dummy+0x28>
   10110:	00011537          	lui	a0,0x11
   10114:	82818593          	addi	a1,gp,-2008 # 115a8 <object.3092>
   10118:	99050513          	addi	a0,a0,-1648 # 10990 <__fini_array_end>
   1011c:	ffff0317          	auipc	t1,0xffff0
   10120:	ee4300e7          	jalr	t1,-284 # 0 <_ftext-0x10000>
   10124:	000117b7          	lui	a5,0x11
   10128:	e0078513          	addi	a0,a5,-512 # 10e00 <__JCR_END__>
   1012c:	00053783          	ld	a5,0(a0)
   10130:	00079863          	bnez	a5,10140 <frame_dummy+0x44>
   10134:	00813083          	ld	ra,8(sp)
   10138:	01010113          	addi	sp,sp,16
   1013c:	f3dff06f          	j	10078 <register_tm_clones>
   10140:	000007b7          	lui	a5,0x0
   10144:	00078793          	mv	a5,a5
   10148:	fe0786e3          	beqz	a5,10134 <frame_dummy+0x38>
   1014c:	000780e7          	jalr	a5
   10150:	fe5ff06f          	j	10134 <frame_dummy+0x38>

0000000000010154 <foo>:
foo():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun_test.c:6
// test for calling convension

int x[10] = {[0 ... 9] = 5};

int foo(int x)
{
   10154:	fe010113          	addi	sp,sp,-32
   10158:	00813c23          	sd	s0,24(sp)   # store s0 in the stack
   1015c:	02010413          	addi	s0,sp,32
   10160:	fea42623          	sw	a0,-20(s0)  # store a0 to -20(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun_test.c:7
    return x + 5;
   10164:	fec42783          	lw	a5,-20(s0)  # load word from -20(s0) to a5
   10168:	0057879b          	addiw	a5,a5,5   # x: a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun_test.c:8
}
   1016c:	00078513          	mv	a0,a5       # move a5 to a0
   10170:	01813403          	ld	s0,24(sp)   # move back s0
   10174:	02010113          	addi	sp,sp,32
   10178:	00008067          	ret

000000000001017c <main>:
main():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun_test.c:11

int main()
{
   1017c:	ff010113          	addi	sp,sp,-16
   10180:	00113423          	sd	ra,8(sp)
   10184:	00813023          	sd	s0,0(sp)
   10188:	01010413          	addi	s0,sp,16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun_test.c:12
    foo(x[5]);
   1018c:	000117b7          	lui	a5,0x11
   10190:	e1078793          	addi	a5,a5,-496 # 10e10 <_fdata>
   10194:	0147a783          	lw	a5,20(a5)
   10198:	00078513          	mv	a0,a5
   1019c:	fb9ff0ef          	jal	10154 <foo>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun_test.c:13
    return 0;
   101a0:	00000793          	li	a5,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun_test.c:14
}
   101a4:	00078513          	mv	a0,a5
   101a8:	00813083          	ld	ra,8(sp)
   101ac:	00013403          	ld	s0,0(sp)
   101b0:	01010113          	addi	sp,sp,16
   101b4:	00008067          	ret

00000000000101b8 <atexit>:
atexit():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/atexit.c:65
int
_DEFUN (atexit,
	(fn),
	_VOID _EXFNPTR(fn, (_VOID)))
{
  return __register_exitproc (__et_atexit, fn, NULL, NULL);
   101b8:	00050593          	mv	a1,a0
   101bc:	00000693          	li	a3,0
   101c0:	00000613          	li	a2,0
   101c4:	00000513          	li	a0,0
   101c8:	1300006f          	j	102f8 <__register_exitproc>

00000000000101cc <exit>:
exit():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:60
 */

void
_DEFUN (exit, (code),
	int code)
{
   101cc:	ff010113          	addi	sp,sp,-16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:66
#ifdef _LITE_EXIT
  /* Refer to comments in __atexit.c for more details of lite exit.  */
  void __call_exitprocs _PARAMS ((int, _PTR)) __attribute__((weak));
  if (__call_exitprocs)
#endif
    __call_exitprocs (code, NULL);
   101d0:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:60
 */

void
_DEFUN (exit, (code),
	int code)
{
   101d4:	00813023          	sd	s0,0(sp)
   101d8:	00113423          	sd	ra,8(sp)
   101dc:	00050413          	mv	s0,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:66
#ifdef _LITE_EXIT
  /* Refer to comments in __atexit.c for more details of lite exit.  */
  void __call_exitprocs _PARAMS ((int, _PTR)) __attribute__((weak));
  if (__call_exitprocs)
#endif
    __call_exitprocs (code, NULL);
   101e0:	22c000ef          	jal	1040c <__call_exitprocs>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:68

  if (_GLOBAL_REENT->__cleanup)
   101e4:	8081b503          	ld	a0,-2040(gp) # 11588 <_global_impure_ptr>
   101e8:	05853783          	ld	a5,88(a0)
   101ec:	00078463          	beqz	a5,101f4 <exit+0x28>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:69
    (*_GLOBAL_REENT->__cleanup) (_GLOBAL_REENT);
   101f0:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:70
  _exit (code);
   101f4:	00040513          	mv	a0,s0
   101f8:	75c000ef          	jal	10954 <_exit>

00000000000101fc <__libc_fini_array>:
__libc_fini_array():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:25
extern void _fini (void);

/* Run all the cleanup routines.  */
void
__libc_fini_array (void)
{
   101fc:	fe010113          	addi	sp,sp,-32
   10200:	00813823          	sd	s0,16(sp)
   10204:	00913423          	sd	s1,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:29
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
   10208:	00011437          	lui	s0,0x11
   1020c:	000114b7          	lui	s1,0x11
   10210:	98848493          	addi	s1,s1,-1656 # 10988 <__init_array_end>
   10214:	99040413          	addi	s0,s0,-1648 # 10990 <__fini_array_end>
   10218:	40940433          	sub	s0,s0,s1
   1021c:	ff840793          	addi	a5,s0,-8
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:25
extern void _fini (void);

/* Run all the cleanup routines.  */
void
__libc_fini_array (void)
{
   10220:	00113c23          	sd	ra,24(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:29
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
   10224:	40345413          	srai	s0,s0,0x3
   10228:	009784b3          	add	s1,a5,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:30
  for (i = count; i > 0; i--)
   1022c:	00040c63          	beqz	s0,10244 <__libc_fini_array+0x48>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:31 (discriminator 3)
    __fini_array_start[i-1] ();
   10230:	0004b783          	ld	a5,0(s1)
   10234:	fff40413          	addi	s0,s0,-1
   10238:	ff848493          	addi	s1,s1,-8
   1023c:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:30
{
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
  for (i = count; i > 0; i--)
   10240:	fe0418e3          	bnez	s0,10230 <__libc_fini_array+0x34>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:34
    __fini_array_start[i-1] ();

  _fini ();
}
   10244:	01813083          	ld	ra,24(sp)
   10248:	01013403          	ld	s0,16(sp)
   1024c:	00813483          	ld	s1,8(sp)
   10250:	02010113          	addi	sp,sp,32
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:33
  
  count = __fini_array_end - __fini_array_start;
  for (i = count; i > 0; i--)
    __fini_array_start[i-1] ();

  _fini ();
   10254:	df5ff06f          	j	10048 <_fini>

0000000000010258 <__libc_init_array>:
__libc_init_array():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   10258:	fe010113          	addi	sp,sp,-32
   1025c:	00813823          	sd	s0,16(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   10260:	000117b7          	lui	a5,0x11
   10264:	00011437          	lui	s0,0x11
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   10268:	01213023          	sd	s2,0(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   1026c:	98078793          	addi	a5,a5,-1664 # 10980 <_etext>
   10270:	98040913          	addi	s2,s0,-1664 # 10980 <_etext>
   10274:	41278933          	sub	s2,a5,s2
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   10278:	00913423          	sd	s1,8(sp)
   1027c:	00113c23          	sd	ra,24(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   10280:	40395913          	srai	s2,s2,0x3
   10284:	98040413          	addi	s0,s0,-1664
   10288:	00000493          	li	s1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
  for (i = 0; i < count; i++)
   1028c:	00090c63          	beqz	s2,102a4 <__libc_init_array+0x4c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:35 (discriminator 3)
    __preinit_array_start[i] ();
   10290:	00043783          	ld	a5,0(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
{
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
  for (i = 0; i < count; i++)
   10294:	00148493          	addi	s1,s1,1
   10298:	00840413          	addi	s0,s0,8
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:35
    __preinit_array_start[i] ();
   1029c:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
{
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
  for (i = 0; i < count; i++)
   102a0:	fe9918e3          	bne	s2,s1,10290 <__libc_init_array+0x38>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:37
    __preinit_array_start[i] ();

  _init ();
   102a4:	da5ff0ef          	jal	10048 <_fini>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:39

  count = __init_array_end - __init_array_start;
   102a8:	00011437          	lui	s0,0x11
   102ac:	000117b7          	lui	a5,0x11
   102b0:	98040913          	addi	s2,s0,-1664 # 10980 <_etext>
   102b4:	98878793          	addi	a5,a5,-1656 # 10988 <__init_array_end>
   102b8:	41278933          	sub	s2,a5,s2
   102bc:	40395913          	srai	s2,s2,0x3
   102c0:	98040413          	addi	s0,s0,-1664
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
  for (i = 0; i < count; i++)
   102c4:	00000493          	li	s1,0
   102c8:	00090c63          	beqz	s2,102e0 <__libc_init_array+0x88>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:41 (discriminator 3)
    __init_array_start[i] ();
   102cc:	00043783          	ld	a5,0(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
    __preinit_array_start[i] ();

  _init ();

  count = __init_array_end - __init_array_start;
  for (i = 0; i < count; i++)
   102d0:	00148493          	addi	s1,s1,1
   102d4:	00840413          	addi	s0,s0,8
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:41
    __init_array_start[i] ();
   102d8:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
    __preinit_array_start[i] ();

  _init ();

  count = __init_array_end - __init_array_start;
  for (i = 0; i < count; i++)
   102dc:	fe9918e3          	bne	s2,s1,102cc <__libc_init_array+0x74>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:42
    __init_array_start[i] ();
}
   102e0:	01813083          	ld	ra,24(sp)
   102e4:	01013403          	ld	s0,16(sp)
   102e8:	00813483          	ld	s1,8(sp)
   102ec:	00013903          	ld	s2,0(sp)
   102f0:	02010113          	addi	sp,sp,32
   102f4:	00008067          	ret

00000000000102f8 <__register_exitproc>:
__register_exitproc():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   102f8:	fd010113          	addi	sp,sp,-48
   102fc:	02813023          	sd	s0,32(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   10300:	8081b403          	ld	s0,-2040(gp) # 11588 <_global_impure_ptr>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   10304:	00913c23          	sd	s1,24(sp)
   10308:	00050493          	mv	s1,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   1030c:	1f843503          	ld	a0,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   10310:	01213823          	sd	s2,16(sp)
   10314:	01313423          	sd	s3,8(sp)
   10318:	01413023          	sd	s4,0(sp)
   1031c:	02113423          	sd	ra,40(sp)
   10320:	00058913          	mv	s2,a1
   10324:	00060a13          	mv	s4,a2
   10328:	00068993          	mv	s3,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:81
#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
   1032c:	0c050663          	beqz	a0,103f8 <__register_exitproc+0x100>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:83
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
  if (p->_ind >= _ATEXIT_SIZE)
   10330:	00852703          	lw	a4,8(a0)
   10334:	01f00793          	li	a5,31
   10338:	0017059b          	addiw	a1,a4,1
   1033c:	04e7d063          	ble	a4,a5,1037c <__register_exitproc+0x84>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:90
#ifndef _ATEXIT_DYNAMIC_ALLOC
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
   10340:	000007b7          	lui	a5,0x0
   10344:	00078793          	mv	a5,a5
   10348:	0a078e63          	beqz	a5,10404 <__register_exitproc+0x10c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:93
	return -1;

      p = (struct _atexit *) malloc (sizeof *p);
   1034c:	31800513          	li	a0,792
   10350:	ffff0317          	auipc	t1,0xffff0
   10354:	cb0300e7          	jalr	t1,-848 # 0 <_ftext-0x10000>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:94
      if (p == NULL)
   10358:	0a050663          	beqz	a0,10404 <__register_exitproc+0x10c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   1035c:	1f843783          	ld	a5,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:101
#ifndef __SINGLE_THREAD__
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
   10360:	00052423          	sw	zero,8(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_next = _GLOBAL_ATEXIT;
      _GLOBAL_ATEXIT = p;
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
      p->_on_exit_args._is_cxa = 0;
   10364:	00100593          	li	a1,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   10368:	00f53023          	sd	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:103
      _GLOBAL_ATEXIT = p;
   1036c:	1ea43c23          	sd	a0,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:105
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
   10370:	30052823          	sw	zero,784(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_on_exit_args._is_cxa = 0;
   10374:	30052a23          	sw	zero,788(a0)
   10378:	00000713          	li	a4,0
   1037c:	00070793          	mv	a5,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:113
      p->_on_exit_args_ptr = NULL;
#endif
#endif
    }

  if (type != __et_atexit)
   10380:	02049e63          	bnez	s1,103bc <__register_exitproc+0xc4>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:142
      args->_fntypes |= (1 << p->_ind);
      args->_dso_handle[p->_ind] = d;
      if (type == __et_cxa)
	args->_is_cxa |= (1 << p->_ind);
    }
  p->_fns[p->_ind++] = fn;
   10384:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   10388:	00379793          	slli	a5,a5,0x3
   1038c:	00b52423          	sw	a1,8(a0)
   10390:	00f50533          	add	a0,a0,a5
   10394:	01253023          	sd	s2,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:146
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif
  return 0;
   10398:	00000513          	li	a0,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:147
}
   1039c:	02813083          	ld	ra,40(sp)
   103a0:	02013403          	ld	s0,32(sp)
   103a4:	01813483          	ld	s1,24(sp)
   103a8:	01013903          	ld	s2,16(sp)
   103ac:	00813983          	ld	s3,8(sp)
   103b0:	00013a03          	ld	s4,0(sp)
   103b4:	03010113          	addi	sp,sp,48
   103b8:	00008067          	ret
   103bc:	00371813          	slli	a6,a4,0x3
   103c0:	01050833          	add	a6,a0,a6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:136
	  p->_on_exit_args_ptr = args;
	}
#else
      args = &p->_on_exit_args;
#endif
      args->_fnargs[p->_ind] = arg;
   103c4:	11483823          	sd	s4,272(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:137
      args->_fntypes |= (1 << p->_ind);
   103c8:	31052883          	lw	a7,784(a0)
   103cc:	00100613          	li	a2,1
   103d0:	00e6173b          	sllw	a4,a2,a4
   103d4:	00e8e633          	or	a2,a7,a4
   103d8:	30c52823          	sw	a2,784(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:138
      args->_dso_handle[p->_ind] = d;
   103dc:	21383823          	sd	s3,528(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:139
      if (type == __et_cxa)
   103e0:	00200693          	li	a3,2
   103e4:	fad490e3          	bne	s1,a3,10384 <__register_exitproc+0x8c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:140
	args->_is_cxa |= (1 << p->_ind);
   103e8:	31452683          	lw	a3,788(a0)
   103ec:	00e6e733          	or	a4,a3,a4
   103f0:	30e52a23          	sw	a4,788(a0)
   103f4:	f91ff06f          	j	10384 <__register_exitproc+0x8c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:82
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
   103f8:	20040513          	addi	a0,s0,512
   103fc:	1ea43c23          	sd	a0,504(s0)
   10400:	f31ff06f          	j	10330 <__register_exitproc+0x38>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:91
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
	return -1;
   10404:	fff00513          	li	a0,-1
   10408:	f95ff06f          	j	1039c <__register_exitproc+0xa4>

000000000001040c <__call_exitprocs>:
__call_exitprocs():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   1040c:	fa010113          	addi	sp,sp,-96
   10410:	03413823          	sd	s4,48(sp)
   10414:	8081ba03          	ld	s4,-2040(gp) # 11588 <_global_impure_ptr>
   10418:	03313c23          	sd	s3,56(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   1041c:	000009b7          	lui	s3,0x0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   10420:	04913423          	sd	s1,72(sp)
   10424:	05213023          	sd	s2,64(sp)
   10428:	03513423          	sd	s5,40(sp)
   1042c:	01713c23          	sd	s7,24(sp)
   10430:	01813823          	sd	s8,16(sp)
   10434:	04113c23          	sd	ra,88(sp)
   10438:	04813823          	sd	s0,80(sp)
   1043c:	03613023          	sd	s6,32(sp)
   10440:	01913423          	sd	s9,8(sp)
   10444:	01a13023          	sd	s10,0(sp)
   10448:	00050913          	mv	s2,a0
   1044c:	00058b93          	mv	s7,a1
   10450:	1f8a0a93          	addi	s5,s4,504
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   10454:	00100493          	li	s1,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10458:	fff00c13          	li	s8,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   1045c:	00098993          	mv	s3,s3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:83
  __lock_acquire_recursive(__atexit_lock);
#endif

 restart:

  p = _GLOBAL_ATEXIT;
   10460:	1f8a3b03          	ld	s6,504(s4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10464:	0c0b0663          	beqz	s6,10530 <__call_exitprocs+0x124>
   10468:	000a8d13          	mv	s10,s5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   1046c:	008b2403          	lw	s0,8(s6)
   10470:	fff4041b          	addiw	s0,s0,-1
   10474:	02045263          	bgez	s0,10498 <__call_exitprocs+0x8c>
   10478:	08c0006f          	j	10504 <__call_exitprocs+0xf8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99 (discriminator 2)
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   1047c:	02040793          	addi	a5,s0,32
   10480:	00379793          	slli	a5,a5,0x3
   10484:	00fb07b3          	add	a5,s6,a5
   10488:	1107b783          	ld	a5,272(a5)
   1048c:	00fb8a63          	beq	s7,a5,104a0 <__call_exitprocs+0x94>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10490:	fff4041b          	addiw	s0,s0,-1
   10494:	07840863          	beq	s0,s8,10504 <__call_exitprocs+0xf8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   10498:	00040713          	mv	a4,s0
   1049c:	fe0b90e3          	bnez	s7,1047c <__call_exitprocs+0x70>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
   104a0:	008b2783          	lw	a5,8(s6)
   104a4:	00371713          	slli	a4,a4,0x3
   104a8:	00eb0733          	add	a4,s6,a4
   104ac:	fff7879b          	addiw	a5,a5,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:104
	  if (d && (!args || args->_dso_handle[n] != d))
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
   104b0:	01073683          	ld	a3,16(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	  if (n == p->_ind - 1)
   104b4:	0a878e63          	beq	a5,s0,10570 <__call_exitprocs+0x164>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:108
	    p->_ind--;
	  else
	    p->_fns[n] = NULL;
   104b8:	00073823          	sd	zero,16(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:111

	  /* Skip functions that have already been called.  */
	  if (!fn)
   104bc:	fc068ae3          	beqz	a3,10490 <__call_exitprocs+0x84>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   104c0:	310b2783          	lw	a5,784(s6)
   104c4:	0084963b          	sllw	a2,s1,s0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:114

	  /* Skip functions that have already been called.  */
	  if (!fn)
	    continue;

	  ind = p->_ind;
   104c8:	008b2c83          	lw	s9,8(s6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   104cc:	00f677b3          	and	a5,a2,a5
   104d0:	08078c63          	beqz	a5,10568 <__call_exitprocs+0x15c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:119
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
   104d4:	314b2783          	lw	a5,788(s6)
   104d8:	00f67633          	and	a2,a2,a5
   104dc:	08061e63          	bnez	a2,10578 <__call_exitprocs+0x16c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:120
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
   104e0:	11073583          	ld	a1,272(a4)
   104e4:	00090513          	mv	a0,s2
   104e8:	000680e7          	jalr	a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);

	  /* The function we called call atexit and registered another
	     function (or functions).  Call these new functions before
	     continuing with the already registered functions.  */
	  if (ind != p->_ind || *lastp != p)
   104ec:	008b2783          	lw	a5,8(s6)
   104f0:	f79798e3          	bne	a5,s9,10460 <__call_exitprocs+0x54>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127 (discriminator 1)
   104f4:	000d3783          	ld	a5,0(s10)
   104f8:	f76794e3          	bne	a5,s6,10460 <__call_exitprocs+0x54>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   104fc:	fff4041b          	addiw	s0,s0,-1
   10500:	f9841ce3          	bne	s0,s8,10498 <__call_exitprocs+0x8c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   10504:	02098663          	beqz	s3,10530 <__call_exitprocs+0x124>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141
	break;

      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
   10508:	008b2783          	lw	a5,8(s6)
   1050c:	06079c63          	bnez	a5,10584 <__call_exitprocs+0x178>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141 (discriminator 1)
   10510:	000b3783          	ld	a5,0(s6)
   10514:	08078263          	beqz	a5,10598 <__call_exitprocs+0x18c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
	  *lastp = p->_next;
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   10518:	000b0513          	mv	a0,s6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:144
      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
	{
	  /* Remove empty block from the list.  */
	  *lastp = p->_next;
   1051c:	00fd3023          	sd	a5,0(s10)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   10520:	ffff0317          	auipc	t1,0xffff0
   10524:	ae0300e7          	jalr	t1,-1312 # 0 <_ftext-0x10000>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:150
	  p = *lastp;
   10528:	000d3b03          	ld	s6,0(s10)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   1052c:	f40b10e3          	bnez	s6,1046c <__call_exitprocs+0x60>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:163
    }
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif

}
   10530:	05813083          	ld	ra,88(sp)
   10534:	05013403          	ld	s0,80(sp)
   10538:	04813483          	ld	s1,72(sp)
   1053c:	04013903          	ld	s2,64(sp)
   10540:	03813983          	ld	s3,56(sp)
   10544:	03013a03          	ld	s4,48(sp)
   10548:	02813a83          	ld	s5,40(sp)
   1054c:	02013b03          	ld	s6,32(sp)
   10550:	01813b83          	ld	s7,24(sp)
   10554:	01013c03          	ld	s8,16(sp)
   10558:	00813c83          	ld	s9,8(sp)
   1055c:	00013d03          	ld	s10,0(sp)
   10560:	06010113          	addi	sp,sp,96
   10564:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:118

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
   10568:	000680e7          	jalr	a3
   1056c:	f81ff06f          	j	104ec <__call_exitprocs+0xe0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:106

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
	    p->_ind--;
   10570:	008b2423          	sw	s0,8(s6)
   10574:	f49ff06f          	j	104bc <__call_exitprocs+0xb0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:122
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
	  else
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);
   10578:	11073503          	ld	a0,272(a4)
   1057c:	000680e7          	jalr	a3
   10580:	f6dff06f          	j	104ec <__call_exitprocs+0xe0>
   10584:	000b3783          	ld	a5,0(s6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:154
	  free (p);
	  p = *lastp;
	}
      else
	{
	  lastp = &p->_next;
   10588:	000b0d13          	mv	s10,s6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:155
	  p = p->_next;
   1058c:	00078b13          	mv	s6,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10590:	ec0b1ee3          	bnez	s6,1046c <__call_exitprocs+0x60>
   10594:	f9dff06f          	j	10530 <__call_exitprocs+0x124>
   10598:	00000793          	li	a5,0
   1059c:	fedff06f          	j	10588 <__call_exitprocs+0x17c>

00000000000105a0 <__syscall_error>:
__syscall_error():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:95

#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
   105a0:	ff010113          	addi	sp,sp,-16
   105a4:	00113423          	sd	ra,8(sp)
   105a8:	00813023          	sd	s0,0(sp)
   105ac:	00050413          	mv	s0,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
  errno = -a0;
   105b0:	3c0000ef          	jal	10970 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   105b4:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
  errno = -a0;
   105b8:	408007bb          	negw	a5,s0
   105bc:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   105c0:	00013403          	ld	s0,0(sp)
   105c4:	fff00513          	li	a0,-1
   105c8:	01010113          	addi	sp,sp,16
   105cc:	00008067          	ret

00000000000105d0 <open>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   105d0:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   105d4:	40000893          	li	a7,1024
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   105d8:	00000073          	ecall
   105dc:	fc0542e3          	bltz	a0,105a0 <__syscall_error>
open():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:103

int open(const char* name, int flags, int mode)
{
  return syscall_errno(SYS_open, name, flags, mode, 0);
}
   105e0:	0005051b          	sext.w	a0,a0
   105e4:	00008067          	ret

00000000000105e8 <openat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   105e8:	03800893          	li	a7,56
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   105ec:	00000073          	ecall
   105f0:	fa0548e3          	bltz	a0,105a0 <__syscall_error>
openat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:112
//------------------------------------------------------------------------
// Open file relative to given directory
int openat(int dirfd, const char* name, int flags, int mode)
{
  return syscall_errno(SYS_openat, dirfd, name, flags, mode);
}
   105f4:	0005051b          	sext.w	a0,a0
   105f8:	00008067          	ret

00000000000105fc <lseek>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   105fc:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10600:	03e00893          	li	a7,62
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10604:	00000073          	ecall
   10608:	f8054ce3          	bltz	a0,105a0 <__syscall_error>
lseek():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:122
// Set position in a file.

off_t lseek(int file, off_t ptr, int dir)
{
  return syscall_errno(SYS_lseek, file, ptr, dir, 0);
}
   1060c:	00008067          	ret

0000000000010610 <read>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   10610:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10614:	03f00893          	li	a7,63
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10618:	00000073          	ecall
   1061c:	f80542e3          	bltz	a0,105a0 <__syscall_error>
read():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:132
// Read from a file.

ssize_t read(int file, void* ptr, size_t len)
{
  return syscall_errno(SYS_read, file, ptr, len, 0);
}
   10620:	00008067          	ret

0000000000010624 <write>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   10624:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10628:	04000893          	li	a7,64
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1062c:	00000073          	ecall
   10630:	f60548e3          	bltz	a0,105a0 <__syscall_error>
write():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:142
// Write to a file.

ssize_t write(int file, const void* ptr, size_t len)
{
  return syscall_errno(SYS_write, file, ptr, len, 0);
}
   10634:	00008067          	ret

0000000000010638 <fstat>:
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
   10640:	05000893          	li	a7,80
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10644:	00000073          	ecall
   10648:	f4054ce3          	bltz	a0,105a0 <__syscall_error>
fstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:153
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
}
   1064c:	0005051b          	sext.w	a0,a0
   10650:	00008067          	ret

0000000000010654 <stat>:
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
   1065c:	40e00893          	li	a7,1038
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10660:	00000073          	ecall
   10664:	f2054ee3          	bltz	a0,105a0 <__syscall_error>
stat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:163
// Status of a file (by name).

int stat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_stat, file, st, 0, 0);
}
   10668:	0005051b          	sext.w	a0,a0
   1066c:	00008067          	ret

0000000000010670 <lstat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   10670:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10674:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10678:	40f00893          	li	a7,1039
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1067c:	00000073          	ecall
   10680:	f20540e3          	bltz	a0,105a0 <__syscall_error>
lstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:173
// Status of a link (by name).

int lstat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_lstat, file, st, 0, 0);
}
   10684:	0005051b          	sext.w	a0,a0
   10688:	00008067          	ret

000000000001068c <fstatat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   1068c:	04f00893          	li	a7,79
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10690:	00000073          	ecall
   10694:	f00546e3          	bltz	a0,105a0 <__syscall_error>
fstatat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:183
// Status of a file (by name) in a given directory.

int fstatat(int dirfd, const char* file, struct stat* st, int flags)
{
  return syscall_errno(SYS_fstatat, dirfd, file, st, flags);
}
   10698:	0005051b          	sext.w	a0,a0
   1069c:	00008067          	ret

00000000000106a0 <access>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   106a0:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   106a4:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106a8:	40900893          	li	a7,1033
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106ac:	00000073          	ecall
   106b0:	ee0548e3          	bltz	a0,105a0 <__syscall_error>
access():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:193
// Permissions of a file (by name).

int access(const char* file, int mode)
{
  return syscall_errno(SYS_access, file, mode, 0, 0);
}
   106b4:	0005051b          	sext.w	a0,a0
   106b8:	00008067          	ret

00000000000106bc <faccessat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   106bc:	03000893          	li	a7,48
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106c0:	00000073          	ecall
   106c4:	ec054ee3          	bltz	a0,105a0 <__syscall_error>
faccessat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:203
// Permissions of a file (by name) in a given directory.

int faccessat(int dirfd, const char* file, int mode, int flags)
{
  return syscall_errno(SYS_faccessat, dirfd, file, mode, flags);
}
   106c8:	0005051b          	sext.w	a0,a0
   106cc:	00008067          	ret

00000000000106d0 <close>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   106d0:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   106d4:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   106d8:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106dc:	03900893          	li	a7,57
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106e0:	00000073          	ecall
   106e4:	ea054ee3          	bltz	a0,105a0 <__syscall_error>
close():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:213
// Close a file.

int close(int file) 
{
  return syscall_errno(SYS_close, file, 0, 0, 0);
}
   106e8:	0005051b          	sext.w	a0,a0
   106ec:	00008067          	ret

00000000000106f0 <link>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   106f0:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   106f4:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106f8:	40100893          	li	a7,1025
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106fc:	00000073          	ecall
   10700:	ea0540e3          	bltz	a0,105a0 <__syscall_error>
link():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:223
// Establish a new name for an existing file.

int link(const char* old_name, const char* new_name)
{
  return syscall_errno(SYS_link, old_name, new_name, 0, 0);
}
   10704:	0005051b          	sext.w	a0,a0
   10708:	00008067          	ret

000000000001070c <unlink>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   1070c:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10710:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10714:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10718:	40200893          	li	a7,1026
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1071c:	00000073          	ecall
   10720:	e80540e3          	bltz	a0,105a0 <__syscall_error>
unlink():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:233
// Remove a file's directory entry.

int unlink(const char* name)
{
  return syscall_errno(SYS_unlink, name, 0, 0, 0);
}
   10724:	0005051b          	sext.w	a0,a0
   10728:	00008067          	ret

000000000001072c <execve>:
execve():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:242
//------------------------------------------------------------------------
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
   1072c:	ff010113          	addi	sp,sp,-16
   10730:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
  errno = ENOMEM;
   10734:	23c000ef          	jal	10970 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   10738:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
  errno = ENOMEM;
   1073c:	00c00793          	li	a5,12
   10740:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   10744:	01010113          	addi	sp,sp,16
   10748:	fff00513          	li	a0,-1
   1074c:	00008067          	ret

0000000000010750 <fork>:
fork():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:254
//------------------------------------------------------------------------
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
   10750:	ff010113          	addi	sp,sp,-16
   10754:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
  errno = EAGAIN;
   10758:	218000ef          	jal	10970 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   1075c:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
  errno = EAGAIN;
   10760:	00b00793          	li	a5,11
   10764:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   10768:	01010113          	addi	sp,sp,16
   1076c:	fff00513          	li	a0,-1
   10770:	00008067          	ret

0000000000010774 <getpid>:
getpid():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:269
// system without processes just returns 1.

int getpid() 
{
  return 1;
}
   10774:	00100513          	li	a0,1
   10778:	00008067          	ret

000000000001077c <kill>:
kill():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:278
//------------------------------------------------------------------------
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
   1077c:	ff010113          	addi	sp,sp,-16
   10780:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
  errno = EINVAL;
   10784:	1ec000ef          	jal	10970 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   10788:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
  errno = EINVAL;
   1078c:	01600793          	li	a5,22
   10790:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   10794:	01010113          	addi	sp,sp,16
   10798:	fff00513          	li	a0,-1
   1079c:	00008067          	ret

00000000000107a0 <wait>:
wait():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:290
//------------------------------------------------------------------------
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
   107a0:	ff010113          	addi	sp,sp,-16
   107a4:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
  errno = ECHILD;
   107a8:	1c8000ef          	jal	10970 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   107ac:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
  errno = ECHILD;
   107b0:	00a00793          	li	a5,10
   107b4:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   107b8:	01010113          	addi	sp,sp,16
   107bc:	fff00513          	li	a0,-1
   107c0:	00008067          	ret

00000000000107c4 <isatty>:
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:303
// Query whether output stream is a terminal. For consistency with the
// other minimal implementations, which only support output to stdout,
// this minimal implementation is suggested by the newlib docs.

int isatty(int file)
{
   107c4:	f8010113          	addi	sp,sp,-128
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   107c8:	00010593          	mv	a1,sp
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   107cc:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   107d0:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   107d4:	05000893          	li	a7,80
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   107d8:	00000073          	ecall
   107dc:	dc0542e3          	bltz	a0,105a0 <__syscall_error>
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   107e0:	fff00793          	li	a5,-1
fstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:152
// Status of an open file. The sys/stat.h header file required is
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
   107e4:	0005051b          	sext.w	a0,a0
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306

int isatty(int file)
{
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   107e8:	00f50863          	beq	a0,a5,107f8 <isatty+0x34>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306 (discriminator 1)
   107ec:	01012503          	lw	a0,16(sp)
   107f0:	40d5551b          	sraiw	a0,a0,0xd
   107f4:	00157513          	andi	a0,a0,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:307 (discriminator 4)
}
   107f8:	08010113          	addi	sp,sp,128
   107fc:	00008067          	ret

0000000000010800 <times>:
times():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329

clock_t times(struct tms* buf)
{
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   10800:	85818313          	addi	t1,gp,-1960 # 115d8 <t0.2343>
   10804:	00033703          	ld	a4,0(t1)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:326
// children's times to zero. Eventually we might want to separately
// account for user vs system time, but for now we just return the total
// number of cycles since starting the program.

clock_t times(struct tms* buf)
{
   10808:	ff010113          	addi	sp,sp,-16
   1080c:	00050813          	mv	a6,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   10810:	02071063          	bnez	a4,10830 <times+0x30>
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   10814:	85818513          	addi	a0,gp,-1960 # 115d8 <t0.2343>
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
   1082c:	d6054ae3          	bltz	a0,105a0 <__syscall_error>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   10830:	00010513          	mv	a0,sp
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   10834:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10838:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   1083c:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10840:	0a900893          	li	a7,169
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10844:	00000073          	ecall
   10848:	d4054ce3          	bltz	a0,105a0 <__syscall_error>
times():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   1084c:	00033703          	ld	a4,0(t1)
   10850:	00013783          	ld	a5,0(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   10854:	fff00513          	li	a0,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   10858:	00083823          	sd	zero,16(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   1085c:	40e786b3          	sub	a3,a5,a4
   10860:	000f47b7          	lui	a5,0xf4
   10864:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xe24c0>
   10868:	02f68733          	mul	a4,a3,a5
   1086c:	00833683          	ld	a3,8(t1)
   10870:	00813783          	ld	a5,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   10874:	00083c23          	sd	zero,24(a6)
   10878:	00083423          	sd	zero,8(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   1087c:	40d787b3          	sub	a5,a5,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   10880:	01010113          	addi	sp,sp,16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10884:	00f707b3          	add	a5,a4,a5
   10888:	00f83023          	sd	a5,0(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   1088c:	00008067          	ret

0000000000010890 <gettimeofday>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   10890:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10894:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10898:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1089c:	0a900893          	li	a7,169
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   108a0:	00000073          	ecall
   108a4:	ce054ee3          	bltz	a0,105a0 <__syscall_error>
gettimeofday():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:350
// Get the current time.  Only relatively correct.

int gettimeofday(struct timeval* tp, void* tzp)
{
  return syscall_errno(SYS_gettimeofday, tp, 0, 0, 0);
}
   108a8:	0005051b          	sext.w	a0,a0
   108ac:	00008067          	ret

00000000000108b0 <ftime>:
ftime():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:359
//----------------------------------------------------------------------
// Get the current time.  Only relatively correct.

int ftime(struct timeb* tp)
{
  tp->time = tp->millitm = 0;
   108b0:	00051423          	sh	zero,8(a0)
   108b4:	00053023          	sd	zero,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:361
  return 0;
}
   108b8:	00000513          	li	a0,0
   108bc:	00008067          	ret

00000000000108c0 <utime>:
utime():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:371
// Stub.

int utime(const char* path, const struct utimbuf* times)
{
  return -1;
}
   108c0:	fff00513          	li	a0,-1
   108c4:	00008067          	ret

00000000000108c8 <chown>:
chown():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:381
// Stub.

int chown(const char* path, uid_t owner, gid_t group)
{
  return -1;
}
   108c8:	fff00513          	li	a0,-1
   108cc:	00008067          	ret

00000000000108d0 <chmod>:
chmod():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:391
// Stub.

int chmod(const char* path, mode_t mode)
{
  return -1;
}
   108d0:	fff00513          	li	a0,-1
   108d4:	00008067          	ret

00000000000108d8 <chdir>:
chdir():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:401
// Stub.

int chdir(const char* path)
{
  return -1;
}
   108d8:	fff00513          	li	a0,-1
   108dc:	00008067          	ret

00000000000108e0 <getcwd>:
getcwd():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:411
// Stub.

char* getcwd(char* buf, size_t size)
{
  return NULL;
}
   108e0:	00000513          	li	a0,0
   108e4:	00008067          	ret

00000000000108e8 <sysconf>:
sysconf():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:420
//----------------------------------------------------------------------
// Get configurable system variables

long sysconf(int name)
{
  switch(name)
   108e8:	00200793          	li	a5,2
   108ec:	00f51863          	bne	a0,a5,108fc <sysconf+0x14>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:423
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
   108f0:	000f4537          	lui	a0,0xf4
   108f4:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xe24c0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:427
  }

  return -1;
}
   108f8:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:426
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
  }

  return -1;
   108fc:	fff00513          	li	a0,-1
   10900:	00008067          	ret

0000000000010904 <sbrk>:
sbrk():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
void* sbrk(ptrdiff_t incr)
{
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   10904:	8181b703          	ld	a4,-2024(gp) # 11598 <_fbss>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:438
// on this, it is useful to have a working implementation. The following
// is suggested by the newlib docs and suffices for a standalone
// system.

void* sbrk(ptrdiff_t incr)
{
   10908:	00050793          	mv	a5,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   1090c:	00071663          	bnez	a4,10918 <sbrk+0x14>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:443
    heap_end = (long)_end;
   10910:	86818713          	addi	a4,gp,-1944 # 115e8 <_end>
   10914:	80e1bc23          	sd	a4,-2024(gp) # 11598 <_fbss>
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   10918:	00e78533          	add	a0,a5,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   1091c:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10920:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10924:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10928:	0d600893          	li	a7,214
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1092c:	00000073          	ecall
   10930:	c60548e3          	bltz	a0,105a0 <__syscall_error>
sbrk():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   10934:	8181b683          	ld	a3,-2024(gp) # 11598 <_fbss>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:445
    return (void*)-1;
   10938:	fff00713          	li	a4,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
    heap_end = (long)_end;
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   1093c:	00d787b3          	add	a5,a5,a3
   10940:	00f51663          	bne	a0,a5,1094c <sbrk+0x48>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:447
    return (void*)-1;

  heap_end += incr;
   10944:	80a1bc23          	sd	a0,-2024(gp) # 11598 <_fbss>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:448
  return heap_end - incr;
   10948:	00068713          	mv	a4,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:449
}
   1094c:	00070513          	mv	a0,a4
   10950:	00008067          	ret

0000000000010954 <_exit>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   10954:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10958:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   1095c:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10960:	05d00893          	li	a7,93
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10964:	00000073          	ecall
   10968:	c2054ce3          	bltz	a0,105a0 <__syscall_error>
   1096c:	0000006f          	j	1096c <_exit+0x18>

0000000000010970 <__errno>:
__errno():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/errno/errno.c:14

int *
__errno ()
{
  return &_REENT->_errno;
}
   10970:	8101b503          	ld	a0,-2032(gp) # 11590 <_impure_ptr>
   10974:	00008067          	ret
