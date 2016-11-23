
fun2_test:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
_ftext():
   10000:	00002197          	auipc	gp,0x2
   10004:	d9018193          	addi	gp,gp,-624 # 11d90 <_gp>
   10008:	00001297          	auipc	t0,0x1
   1000c:	5b028293          	addi	t0,t0,1456 # 115b8 <_fbss>
   10010:	00001317          	auipc	t1,0x1
   10014:	5f830313          	addi	t1,t1,1528 # 11608 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	21050513          	addi	a0,a0,528 # 10234 <__libc_fini_array>
   1002c:	1c4000ef          	jal	101f0 <atexit>
   10030:	260000ef          	jal	10290 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	16c000ef          	jal	101ac <main>
   10044:	1c00006f          	j	10204 <exit>

0000000000010048 <_fini>:
_init():
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
deregister_tm_clones():
   1004c:	00011537          	lui	a0,0x11
   10050:	000117b7          	lui	a5,0x11
   10054:	58850713          	addi	a4,a0,1416 # 11588 <__TMC_END__>
   10058:	58f78793          	addi	a5,a5,1423 # 1158f <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	58850513          	addi	a0,a0,1416
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
register_tm_clones():
   10080:	00011537          	lui	a0,0x11
   10084:	000117b7          	lui	a5,0x11
   10088:	58850593          	addi	a1,a0,1416 # 11588 <__TMC_END__>
   1008c:	58878793          	addi	a5,a5,1416 # 11588 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	58850513          	addi	a0,a0,1416
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8301c783          	lbu	a5,-2000(gp) # 115c0 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00011537          	lui	a0,0x11
   100e8:	9c850513          	addi	a0,a0,-1592 # 109c8 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	82f18823          	sb	a5,-2000(gp) # 115c0 <_bss_start>
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
   10124:	83818593          	addi	a1,gp,-1992 # 115c8 <object.3092>
   10128:	9c850513          	addi	a0,a0,-1592 # 109c8 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	000117b7          	lui	a5,0x11
   10138:	e3878513          	addi	a0,a5,-456 # 10e38 <__JCR_END__>
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

0000000000010164 <foo>:
foo():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun2_test.c:7
int y = 2;
int z = 3;
int w = 4;

int foo(int x, int y,  int z, int w)
{
   10164:	fe010113          	addi	sp,sp,-32
   10168:	00813c23          	sd	s0,24(sp)
   1016c:	02010413          	addi	s0,sp,32
   10170:	fea42623          	sw	a0,-20(s0)
   10174:	feb42423          	sw	a1,-24(s0)
   10178:	fec42223          	sw	a2,-28(s0)
   1017c:	fed42023          	sw	a3,-32(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun2_test.c:8
    return x + y + z + w;
   10180:	fec42703          	lw	a4,-20(s0)
   10184:	fe842783          	lw	a5,-24(s0)
   10188:	00f7073b          	addw	a4,a4,a5
   1018c:	fe442783          	lw	a5,-28(s0)
   10190:	00f7073b          	addw	a4,a4,a5
   10194:	fe042783          	lw	a5,-32(s0)
   10198:	00f707bb          	addw	a5,a4,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun2_test.c:9
}
   1019c:	00078513          	mv	a0,a5
   101a0:	01813403          	ld	s0,24(sp)
   101a4:	02010113          	addi	sp,sp,32
   101a8:	00008067          	ret

00000000000101ac <main>:
main():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun2_test.c:12

int main()
{
   101ac:	ff010113          	addi	sp,sp,-16
   101b0:	00113423          	sd	ra,8(sp)
   101b4:	00813023          	sd	s0,0(sp)
   101b8:	01010413          	addi	s0,sp,16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun2_test.c:13
    foo(x, y, z, w);
   101bc:	8081a703          	lw	a4,-2040(gp) # 11598 <x>
   101c0:	80c1a583          	lw	a1,-2036(gp) # 1159c <y>
   101c4:	8101a603          	lw	a2,-2032(gp) # 115a0 <z>
   101c8:	8141a783          	lw	a5,-2028(gp) # 115a4 <w>
   101cc:	00078693          	mv	a3,a5
   101d0:	00070513          	mv	a0,a4
   101d4:	f91ff0ef          	jal	10164 <foo>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun2_test.c:14
    return 0;
   101d8:	00000793          	li	a5,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/test/fun2_test.c:15
}
   101dc:	00078513          	mv	a0,a5
   101e0:	00813083          	ld	ra,8(sp)
   101e4:	00013403          	ld	s0,0(sp)
   101e8:	01010113          	addi	sp,sp,16
   101ec:	00008067          	ret

00000000000101f0 <atexit>:
atexit():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/atexit.c:65
int
_DEFUN (atexit,
	(fn),
	_VOID _EXFNPTR(fn, (_VOID)))
{
  return __register_exitproc (__et_atexit, fn, NULL, NULL);
   101f0:	00050593          	mv	a1,a0
   101f4:	00000693          	li	a3,0
   101f8:	00000613          	li	a2,0
   101fc:	00000513          	li	a0,0
   10200:	1300006f          	j	10330 <__register_exitproc>

0000000000010204 <exit>:
exit():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:60
 */

void
_DEFUN (exit, (code),
	int code)
{
   10204:	ff010113          	addi	sp,sp,-16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:66
#ifdef _LITE_EXIT
  /* Refer to comments in __atexit.c for more details of lite exit.  */
  void __call_exitprocs _PARAMS ((int, _PTR)) __attribute__((weak));
  if (__call_exitprocs)
#endif
    __call_exitprocs (code, NULL);
   10208:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:60
 */

void
_DEFUN (exit, (code),
	int code)
{
   1020c:	00813023          	sd	s0,0(sp)
   10210:	00113423          	sd	ra,8(sp)
   10214:	00050413          	mv	s0,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:66
#ifdef _LITE_EXIT
  /* Refer to comments in __atexit.c for more details of lite exit.  */
  void __call_exitprocs _PARAMS ((int, _PTR)) __attribute__((weak));
  if (__call_exitprocs)
#endif
    __call_exitprocs (code, NULL);
   10218:	22c000ef          	jal	10444 <__call_exitprocs>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:68

  if (_GLOBAL_REENT->__cleanup)
   1021c:	8181b503          	ld	a0,-2024(gp) # 115a8 <_global_impure_ptr>
   10220:	05853783          	ld	a5,88(a0)
   10224:	00078463          	beqz	a5,1022c <exit+0x28>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:69
    (*_GLOBAL_REENT->__cleanup) (_GLOBAL_REENT);
   10228:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:70
  _exit (code);
   1022c:	00040513          	mv	a0,s0
   10230:	75c000ef          	jal	1098c <_exit>

0000000000010234 <__libc_fini_array>:
__libc_fini_array():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:25
extern void _fini (void);

/* Run all the cleanup routines.  */
void
__libc_fini_array (void)
{
   10234:	fe010113          	addi	sp,sp,-32
   10238:	00813823          	sd	s0,16(sp)
   1023c:	00913423          	sd	s1,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:29
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
   10240:	00011437          	lui	s0,0x11
   10244:	000114b7          	lui	s1,0x11
   10248:	9c048493          	addi	s1,s1,-1600 # 109c0 <__init_array_end>
   1024c:	9c840413          	addi	s0,s0,-1592 # 109c8 <__fini_array_end>
   10250:	40940433          	sub	s0,s0,s1
   10254:	ff840793          	addi	a5,s0,-8
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:25
extern void _fini (void);

/* Run all the cleanup routines.  */
void
__libc_fini_array (void)
{
   10258:	00113c23          	sd	ra,24(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:29
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
   1025c:	40345413          	srai	s0,s0,0x3
   10260:	009784b3          	add	s1,a5,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:30
  for (i = count; i > 0; i--)
   10264:	00040c63          	beqz	s0,1027c <__libc_fini_array+0x48>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:31 (discriminator 3)
    __fini_array_start[i-1] ();
   10268:	0004b783          	ld	a5,0(s1)
   1026c:	fff40413          	addi	s0,s0,-1
   10270:	ff848493          	addi	s1,s1,-8
   10274:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:30
{
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
  for (i = count; i > 0; i--)
   10278:	fe0418e3          	bnez	s0,10268 <__libc_fini_array+0x34>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:34
    __fini_array_start[i-1] ();

  _fini ();
}
   1027c:	01813083          	ld	ra,24(sp)
   10280:	01013403          	ld	s0,16(sp)
   10284:	00813483          	ld	s1,8(sp)
   10288:	02010113          	addi	sp,sp,32
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:33
  
  count = __fini_array_end - __fini_array_start;
  for (i = count; i > 0; i--)
    __fini_array_start[i-1] ();

  _fini ();
   1028c:	dbdff06f          	j	10048 <_fini>

0000000000010290 <__libc_init_array>:
__libc_init_array():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   10290:	fe010113          	addi	sp,sp,-32
   10294:	00813823          	sd	s0,16(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   10298:	000117b7          	lui	a5,0x11
   1029c:	00011437          	lui	s0,0x11
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   102a0:	01213023          	sd	s2,0(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   102a4:	9b878793          	addi	a5,a5,-1608 # 109b8 <_etext>
   102a8:	9b840913          	addi	s2,s0,-1608 # 109b8 <_etext>
   102ac:	41278933          	sub	s2,a5,s2
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   102b0:	00913423          	sd	s1,8(sp)
   102b4:	00113c23          	sd	ra,24(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   102b8:	40395913          	srai	s2,s2,0x3
   102bc:	9b840413          	addi	s0,s0,-1608
   102c0:	00000493          	li	s1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
  for (i = 0; i < count; i++)
   102c4:	00090c63          	beqz	s2,102dc <__libc_init_array+0x4c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:35 (discriminator 3)
    __preinit_array_start[i] ();
   102c8:	00043783          	ld	a5,0(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
{
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
  for (i = 0; i < count; i++)
   102cc:	00148493          	addi	s1,s1,1
   102d0:	00840413          	addi	s0,s0,8
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:35
    __preinit_array_start[i] ();
   102d4:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
{
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
  for (i = 0; i < count; i++)
   102d8:	fe9918e3          	bne	s2,s1,102c8 <__libc_init_array+0x38>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:37
    __preinit_array_start[i] ();

  _init ();
   102dc:	d6dff0ef          	jal	10048 <_fini>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:39

  count = __init_array_end - __init_array_start;
   102e0:	00011437          	lui	s0,0x11
   102e4:	000117b7          	lui	a5,0x11
   102e8:	9b840913          	addi	s2,s0,-1608 # 109b8 <_etext>
   102ec:	9c078793          	addi	a5,a5,-1600 # 109c0 <__init_array_end>
   102f0:	41278933          	sub	s2,a5,s2
   102f4:	40395913          	srai	s2,s2,0x3
   102f8:	9b840413          	addi	s0,s0,-1608
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
  for (i = 0; i < count; i++)
   102fc:	00000493          	li	s1,0
   10300:	00090c63          	beqz	s2,10318 <__libc_init_array+0x88>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:41 (discriminator 3)
    __init_array_start[i] ();
   10304:	00043783          	ld	a5,0(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
    __preinit_array_start[i] ();

  _init ();

  count = __init_array_end - __init_array_start;
  for (i = 0; i < count; i++)
   10308:	00148493          	addi	s1,s1,1
   1030c:	00840413          	addi	s0,s0,8
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:41
    __init_array_start[i] ();
   10310:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
    __preinit_array_start[i] ();

  _init ();

  count = __init_array_end - __init_array_start;
  for (i = 0; i < count; i++)
   10314:	fe9918e3          	bne	s2,s1,10304 <__libc_init_array+0x74>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:42
    __init_array_start[i] ();
}
   10318:	01813083          	ld	ra,24(sp)
   1031c:	01013403          	ld	s0,16(sp)
   10320:	00813483          	ld	s1,8(sp)
   10324:	00013903          	ld	s2,0(sp)
   10328:	02010113          	addi	sp,sp,32
   1032c:	00008067          	ret

0000000000010330 <__register_exitproc>:
__register_exitproc():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   10330:	fd010113          	addi	sp,sp,-48
   10334:	02813023          	sd	s0,32(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   10338:	8181b403          	ld	s0,-2024(gp) # 115a8 <_global_impure_ptr>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   1033c:	00913c23          	sd	s1,24(sp)
   10340:	00050493          	mv	s1,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   10344:	1f843503          	ld	a0,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   10348:	01213823          	sd	s2,16(sp)
   1034c:	01313423          	sd	s3,8(sp)
   10350:	01413023          	sd	s4,0(sp)
   10354:	02113423          	sd	ra,40(sp)
   10358:	00058913          	mv	s2,a1
   1035c:	00060a13          	mv	s4,a2
   10360:	00068993          	mv	s3,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:81
#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
   10364:	0c050663          	beqz	a0,10430 <__register_exitproc+0x100>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:83
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
  if (p->_ind >= _ATEXIT_SIZE)
   10368:	00852703          	lw	a4,8(a0)
   1036c:	01f00793          	li	a5,31
   10370:	0017059b          	addiw	a1,a4,1
   10374:	04e7d063          	ble	a4,a5,103b4 <__register_exitproc+0x84>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:90
#ifndef _ATEXIT_DYNAMIC_ALLOC
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
   10378:	000007b7          	lui	a5,0x0
   1037c:	00078793          	mv	a5,a5
   10380:	0a078e63          	beqz	a5,1043c <__register_exitproc+0x10c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:93
	return -1;

      p = (struct _atexit *) malloc (sizeof *p);
   10384:	31800513          	li	a0,792
   10388:	ffff0317          	auipc	t1,0xffff0
   1038c:	c78300e7          	jalr	t1,-904 # 0 <_ftext-0x10000>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:94
      if (p == NULL)
   10390:	0a050663          	beqz	a0,1043c <__register_exitproc+0x10c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   10394:	1f843783          	ld	a5,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:101
#ifndef __SINGLE_THREAD__
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
   10398:	00052423          	sw	zero,8(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_next = _GLOBAL_ATEXIT;
      _GLOBAL_ATEXIT = p;
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
      p->_on_exit_args._is_cxa = 0;
   1039c:	00100593          	li	a1,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   103a0:	00f53023          	sd	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:103
      _GLOBAL_ATEXIT = p;
   103a4:	1ea43c23          	sd	a0,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:105
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
   103a8:	30052823          	sw	zero,784(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_on_exit_args._is_cxa = 0;
   103ac:	30052a23          	sw	zero,788(a0)
   103b0:	00000713          	li	a4,0
   103b4:	00070793          	mv	a5,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:113
      p->_on_exit_args_ptr = NULL;
#endif
#endif
    }

  if (type != __et_atexit)
   103b8:	02049e63          	bnez	s1,103f4 <__register_exitproc+0xc4>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:142
      args->_fntypes |= (1 << p->_ind);
      args->_dso_handle[p->_ind] = d;
      if (type == __et_cxa)
	args->_is_cxa |= (1 << p->_ind);
    }
  p->_fns[p->_ind++] = fn;
   103bc:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   103c0:	00379793          	slli	a5,a5,0x3
   103c4:	00b52423          	sw	a1,8(a0)
   103c8:	00f50533          	add	a0,a0,a5
   103cc:	01253023          	sd	s2,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:146
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif
  return 0;
   103d0:	00000513          	li	a0,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:147
}
   103d4:	02813083          	ld	ra,40(sp)
   103d8:	02013403          	ld	s0,32(sp)
   103dc:	01813483          	ld	s1,24(sp)
   103e0:	01013903          	ld	s2,16(sp)
   103e4:	00813983          	ld	s3,8(sp)
   103e8:	00013a03          	ld	s4,0(sp)
   103ec:	03010113          	addi	sp,sp,48
   103f0:	00008067          	ret
   103f4:	00371813          	slli	a6,a4,0x3
   103f8:	01050833          	add	a6,a0,a6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:136
	  p->_on_exit_args_ptr = args;
	}
#else
      args = &p->_on_exit_args;
#endif
      args->_fnargs[p->_ind] = arg;
   103fc:	11483823          	sd	s4,272(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:137
      args->_fntypes |= (1 << p->_ind);
   10400:	31052883          	lw	a7,784(a0)
   10404:	00100613          	li	a2,1
   10408:	00e6173b          	sllw	a4,a2,a4
   1040c:	00e8e633          	or	a2,a7,a4
   10410:	30c52823          	sw	a2,784(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:138
      args->_dso_handle[p->_ind] = d;
   10414:	21383823          	sd	s3,528(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:139
      if (type == __et_cxa)
   10418:	00200693          	li	a3,2
   1041c:	fad490e3          	bne	s1,a3,103bc <__register_exitproc+0x8c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:140
	args->_is_cxa |= (1 << p->_ind);
   10420:	31452683          	lw	a3,788(a0)
   10424:	00e6e733          	or	a4,a3,a4
   10428:	30e52a23          	sw	a4,788(a0)
   1042c:	f91ff06f          	j	103bc <__register_exitproc+0x8c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:82
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
   10430:	20040513          	addi	a0,s0,512
   10434:	1ea43c23          	sd	a0,504(s0)
   10438:	f31ff06f          	j	10368 <__register_exitproc+0x38>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:91
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
	return -1;
   1043c:	fff00513          	li	a0,-1
   10440:	f95ff06f          	j	103d4 <__register_exitproc+0xa4>

0000000000010444 <__call_exitprocs>:
__call_exitprocs():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   10444:	fa010113          	addi	sp,sp,-96
   10448:	03413823          	sd	s4,48(sp)
   1044c:	8181ba03          	ld	s4,-2024(gp) # 115a8 <_global_impure_ptr>
   10450:	03313c23          	sd	s3,56(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   10454:	000009b7          	lui	s3,0x0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   10458:	04913423          	sd	s1,72(sp)
   1045c:	05213023          	sd	s2,64(sp)
   10460:	03513423          	sd	s5,40(sp)
   10464:	01713c23          	sd	s7,24(sp)
   10468:	01813823          	sd	s8,16(sp)
   1046c:	04113c23          	sd	ra,88(sp)
   10470:	04813823          	sd	s0,80(sp)
   10474:	03613023          	sd	s6,32(sp)
   10478:	01913423          	sd	s9,8(sp)
   1047c:	01a13023          	sd	s10,0(sp)
   10480:	00050913          	mv	s2,a0
   10484:	00058b93          	mv	s7,a1
   10488:	1f8a0a93          	addi	s5,s4,504
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   1048c:	00100493          	li	s1,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10490:	fff00c13          	li	s8,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   10494:	00098993          	mv	s3,s3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:83
  __lock_acquire_recursive(__atexit_lock);
#endif

 restart:

  p = _GLOBAL_ATEXIT;
   10498:	1f8a3b03          	ld	s6,504(s4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   1049c:	0c0b0663          	beqz	s6,10568 <__call_exitprocs+0x124>
   104a0:	000a8d13          	mv	s10,s5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   104a4:	008b2403          	lw	s0,8(s6)
   104a8:	fff4041b          	addiw	s0,s0,-1
   104ac:	02045263          	bgez	s0,104d0 <__call_exitprocs+0x8c>
   104b0:	08c0006f          	j	1053c <__call_exitprocs+0xf8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99 (discriminator 2)
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   104b4:	02040793          	addi	a5,s0,32
   104b8:	00379793          	slli	a5,a5,0x3
   104bc:	00fb07b3          	add	a5,s6,a5
   104c0:	1107b783          	ld	a5,272(a5)
   104c4:	00fb8a63          	beq	s7,a5,104d8 <__call_exitprocs+0x94>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   104c8:	fff4041b          	addiw	s0,s0,-1
   104cc:	07840863          	beq	s0,s8,1053c <__call_exitprocs+0xf8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   104d0:	00040713          	mv	a4,s0
   104d4:	fe0b90e3          	bnez	s7,104b4 <__call_exitprocs+0x70>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
   104d8:	008b2783          	lw	a5,8(s6)
   104dc:	00371713          	slli	a4,a4,0x3
   104e0:	00eb0733          	add	a4,s6,a4
   104e4:	fff7879b          	addiw	a5,a5,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:104
	  if (d && (!args || args->_dso_handle[n] != d))
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
   104e8:	01073683          	ld	a3,16(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	  if (n == p->_ind - 1)
   104ec:	0a878e63          	beq	a5,s0,105a8 <__call_exitprocs+0x164>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:108
	    p->_ind--;
	  else
	    p->_fns[n] = NULL;
   104f0:	00073823          	sd	zero,16(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:111

	  /* Skip functions that have already been called.  */
	  if (!fn)
   104f4:	fc068ae3          	beqz	a3,104c8 <__call_exitprocs+0x84>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   104f8:	310b2783          	lw	a5,784(s6)
   104fc:	0084963b          	sllw	a2,s1,s0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:114

	  /* Skip functions that have already been called.  */
	  if (!fn)
	    continue;

	  ind = p->_ind;
   10500:	008b2c83          	lw	s9,8(s6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   10504:	00f677b3          	and	a5,a2,a5
   10508:	08078c63          	beqz	a5,105a0 <__call_exitprocs+0x15c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:119
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
   1050c:	314b2783          	lw	a5,788(s6)
   10510:	00f67633          	and	a2,a2,a5
   10514:	08061e63          	bnez	a2,105b0 <__call_exitprocs+0x16c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:120
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
   10518:	11073583          	ld	a1,272(a4)
   1051c:	00090513          	mv	a0,s2
   10520:	000680e7          	jalr	a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);

	  /* The function we called call atexit and registered another
	     function (or functions).  Call these new functions before
	     continuing with the already registered functions.  */
	  if (ind != p->_ind || *lastp != p)
   10524:	008b2783          	lw	a5,8(s6)
   10528:	f79798e3          	bne	a5,s9,10498 <__call_exitprocs+0x54>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127 (discriminator 1)
   1052c:	000d3783          	ld	a5,0(s10)
   10530:	f76794e3          	bne	a5,s6,10498 <__call_exitprocs+0x54>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10534:	fff4041b          	addiw	s0,s0,-1
   10538:	f9841ce3          	bne	s0,s8,104d0 <__call_exitprocs+0x8c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   1053c:	02098663          	beqz	s3,10568 <__call_exitprocs+0x124>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141
	break;

      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
   10540:	008b2783          	lw	a5,8(s6)
   10544:	06079c63          	bnez	a5,105bc <__call_exitprocs+0x178>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141 (discriminator 1)
   10548:	000b3783          	ld	a5,0(s6)
   1054c:	08078263          	beqz	a5,105d0 <__call_exitprocs+0x18c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
	  *lastp = p->_next;
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   10550:	000b0513          	mv	a0,s6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:144
      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
	{
	  /* Remove empty block from the list.  */
	  *lastp = p->_next;
   10554:	00fd3023          	sd	a5,0(s10)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   10558:	ffff0317          	auipc	t1,0xffff0
   1055c:	aa8300e7          	jalr	t1,-1368 # 0 <_ftext-0x10000>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:150
	  p = *lastp;
   10560:	000d3b03          	ld	s6,0(s10)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10564:	f40b10e3          	bnez	s6,104a4 <__call_exitprocs+0x60>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:163
    }
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif

}
   10568:	05813083          	ld	ra,88(sp)
   1056c:	05013403          	ld	s0,80(sp)
   10570:	04813483          	ld	s1,72(sp)
   10574:	04013903          	ld	s2,64(sp)
   10578:	03813983          	ld	s3,56(sp)
   1057c:	03013a03          	ld	s4,48(sp)
   10580:	02813a83          	ld	s5,40(sp)
   10584:	02013b03          	ld	s6,32(sp)
   10588:	01813b83          	ld	s7,24(sp)
   1058c:	01013c03          	ld	s8,16(sp)
   10590:	00813c83          	ld	s9,8(sp)
   10594:	00013d03          	ld	s10,0(sp)
   10598:	06010113          	addi	sp,sp,96
   1059c:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:118

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
   105a0:	000680e7          	jalr	a3
   105a4:	f81ff06f          	j	10524 <__call_exitprocs+0xe0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:106

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
	    p->_ind--;
   105a8:	008b2423          	sw	s0,8(s6)
   105ac:	f49ff06f          	j	104f4 <__call_exitprocs+0xb0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:122
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
	  else
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);
   105b0:	11073503          	ld	a0,272(a4)
   105b4:	000680e7          	jalr	a3
   105b8:	f6dff06f          	j	10524 <__call_exitprocs+0xe0>
   105bc:	000b3783          	ld	a5,0(s6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:154
	  free (p);
	  p = *lastp;
	}
      else
	{
	  lastp = &p->_next;
   105c0:	000b0d13          	mv	s10,s6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:155
	  p = p->_next;
   105c4:	00078b13          	mv	s6,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   105c8:	ec0b1ee3          	bnez	s6,104a4 <__call_exitprocs+0x60>
   105cc:	f9dff06f          	j	10568 <__call_exitprocs+0x124>
   105d0:	00000793          	li	a5,0
   105d4:	fedff06f          	j	105c0 <__call_exitprocs+0x17c>

00000000000105d8 <__syscall_error>:
__syscall_error():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:95

#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
   105d8:	ff010113          	addi	sp,sp,-16
   105dc:	00113423          	sd	ra,8(sp)
   105e0:	00813023          	sd	s0,0(sp)
   105e4:	00050413          	mv	s0,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
  errno = -a0;
   105e8:	3c0000ef          	jal	109a8 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   105ec:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
  errno = -a0;
   105f0:	408007bb          	negw	a5,s0
   105f4:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   105f8:	00013403          	ld	s0,0(sp)
   105fc:	fff00513          	li	a0,-1
   10600:	01010113          	addi	sp,sp,16
   10604:	00008067          	ret

0000000000010608 <open>:
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
   1060c:	40000893          	li	a7,1024
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10610:	00000073          	ecall
   10614:	fc0542e3          	bltz	a0,105d8 <__syscall_error>
open():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:103

int open(const char* name, int flags, int mode)
{
  return syscall_errno(SYS_open, name, flags, mode, 0);
}
   10618:	0005051b          	sext.w	a0,a0
   1061c:	00008067          	ret

0000000000010620 <openat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   10620:	03800893          	li	a7,56
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10624:	00000073          	ecall
   10628:	fa0548e3          	bltz	a0,105d8 <__syscall_error>
openat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:112
//------------------------------------------------------------------------
// Open file relative to given directory
int openat(int dirfd, const char* name, int flags, int mode)
{
  return syscall_errno(SYS_openat, dirfd, name, flags, mode);
}
   1062c:	0005051b          	sext.w	a0,a0
   10630:	00008067          	ret

0000000000010634 <lseek>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   10634:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10638:	03e00893          	li	a7,62
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1063c:	00000073          	ecall
   10640:	f8054ce3          	bltz	a0,105d8 <__syscall_error>
lseek():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:122
// Set position in a file.

off_t lseek(int file, off_t ptr, int dir)
{
  return syscall_errno(SYS_lseek, file, ptr, dir, 0);
}
   10644:	00008067          	ret

0000000000010648 <read>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   10648:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1064c:	03f00893          	li	a7,63
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10650:	00000073          	ecall
   10654:	f80542e3          	bltz	a0,105d8 <__syscall_error>
read():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:132
// Read from a file.

ssize_t read(int file, void* ptr, size_t len)
{
  return syscall_errno(SYS_read, file, ptr, len, 0);
}
   10658:	00008067          	ret

000000000001065c <write>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   1065c:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10660:	04000893          	li	a7,64
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10664:	00000073          	ecall
   10668:	f60548e3          	bltz	a0,105d8 <__syscall_error>
write():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:142
// Write to a file.

ssize_t write(int file, const void* ptr, size_t len)
{
  return syscall_errno(SYS_write, file, ptr, len, 0);
}
   1066c:	00008067          	ret

0000000000010670 <fstat>:
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
   10678:	05000893          	li	a7,80
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1067c:	00000073          	ecall
   10680:	f4054ce3          	bltz	a0,105d8 <__syscall_error>
fstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:153
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
}
   10684:	0005051b          	sext.w	a0,a0
   10688:	00008067          	ret

000000000001068c <stat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   1068c:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10690:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10694:	40e00893          	li	a7,1038
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10698:	00000073          	ecall
   1069c:	f2054ee3          	bltz	a0,105d8 <__syscall_error>
stat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:163
// Status of a file (by name).

int stat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_stat, file, st, 0, 0);
}
   106a0:	0005051b          	sext.w	a0,a0
   106a4:	00008067          	ret

00000000000106a8 <lstat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   106a8:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   106ac:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106b0:	40f00893          	li	a7,1039
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106b4:	00000073          	ecall
   106b8:	f20540e3          	bltz	a0,105d8 <__syscall_error>
lstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:173
// Status of a link (by name).

int lstat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_lstat, file, st, 0, 0);
}
   106bc:	0005051b          	sext.w	a0,a0
   106c0:	00008067          	ret

00000000000106c4 <fstatat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   106c4:	04f00893          	li	a7,79
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106c8:	00000073          	ecall
   106cc:	f00546e3          	bltz	a0,105d8 <__syscall_error>
fstatat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:183
// Status of a file (by name) in a given directory.

int fstatat(int dirfd, const char* file, struct stat* st, int flags)
{
  return syscall_errno(SYS_fstatat, dirfd, file, st, flags);
}
   106d0:	0005051b          	sext.w	a0,a0
   106d4:	00008067          	ret

00000000000106d8 <access>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   106d8:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   106dc:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106e0:	40900893          	li	a7,1033
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106e4:	00000073          	ecall
   106e8:	ee0548e3          	bltz	a0,105d8 <__syscall_error>
access():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:193
// Permissions of a file (by name).

int access(const char* file, int mode)
{
  return syscall_errno(SYS_access, file, mode, 0, 0);
}
   106ec:	0005051b          	sext.w	a0,a0
   106f0:	00008067          	ret

00000000000106f4 <faccessat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   106f4:	03000893          	li	a7,48
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106f8:	00000073          	ecall
   106fc:	ec054ee3          	bltz	a0,105d8 <__syscall_error>
faccessat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:203
// Permissions of a file (by name) in a given directory.

int faccessat(int dirfd, const char* file, int mode, int flags)
{
  return syscall_errno(SYS_faccessat, dirfd, file, mode, flags);
}
   10700:	0005051b          	sext.w	a0,a0
   10704:	00008067          	ret

0000000000010708 <close>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   10708:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   1070c:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10710:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10714:	03900893          	li	a7,57
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10718:	00000073          	ecall
   1071c:	ea054ee3          	bltz	a0,105d8 <__syscall_error>
close():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:213
// Close a file.

int close(int file) 
{
  return syscall_errno(SYS_close, file, 0, 0, 0);
}
   10720:	0005051b          	sext.w	a0,a0
   10724:	00008067          	ret

0000000000010728 <link>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   10728:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   1072c:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10730:	40100893          	li	a7,1025
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10734:	00000073          	ecall
   10738:	ea0540e3          	bltz	a0,105d8 <__syscall_error>
link():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:223
// Establish a new name for an existing file.

int link(const char* old_name, const char* new_name)
{
  return syscall_errno(SYS_link, old_name, new_name, 0, 0);
}
   1073c:	0005051b          	sext.w	a0,a0
   10740:	00008067          	ret

0000000000010744 <unlink>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   10744:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10748:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   1074c:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10750:	40200893          	li	a7,1026
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10754:	00000073          	ecall
   10758:	e80540e3          	bltz	a0,105d8 <__syscall_error>
unlink():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:233
// Remove a file's directory entry.

int unlink(const char* name)
{
  return syscall_errno(SYS_unlink, name, 0, 0, 0);
}
   1075c:	0005051b          	sext.w	a0,a0
   10760:	00008067          	ret

0000000000010764 <execve>:
execve():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:242
//------------------------------------------------------------------------
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
   10764:	ff010113          	addi	sp,sp,-16
   10768:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
  errno = ENOMEM;
   1076c:	23c000ef          	jal	109a8 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   10770:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
  errno = ENOMEM;
   10774:	00c00793          	li	a5,12
   10778:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   1077c:	01010113          	addi	sp,sp,16
   10780:	fff00513          	li	a0,-1
   10784:	00008067          	ret

0000000000010788 <fork>:
fork():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:254
//------------------------------------------------------------------------
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
   10788:	ff010113          	addi	sp,sp,-16
   1078c:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
  errno = EAGAIN;
   10790:	218000ef          	jal	109a8 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   10794:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
  errno = EAGAIN;
   10798:	00b00793          	li	a5,11
   1079c:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   107a0:	01010113          	addi	sp,sp,16
   107a4:	fff00513          	li	a0,-1
   107a8:	00008067          	ret

00000000000107ac <getpid>:
getpid():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:269
// system without processes just returns 1.

int getpid() 
{
  return 1;
}
   107ac:	00100513          	li	a0,1
   107b0:	00008067          	ret

00000000000107b4 <kill>:
kill():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:278
//------------------------------------------------------------------------
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
   107b4:	ff010113          	addi	sp,sp,-16
   107b8:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
  errno = EINVAL;
   107bc:	1ec000ef          	jal	109a8 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   107c0:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
  errno = EINVAL;
   107c4:	01600793          	li	a5,22
   107c8:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   107cc:	01010113          	addi	sp,sp,16
   107d0:	fff00513          	li	a0,-1
   107d4:	00008067          	ret

00000000000107d8 <wait>:
wait():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:290
//------------------------------------------------------------------------
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
   107d8:	ff010113          	addi	sp,sp,-16
   107dc:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
  errno = ECHILD;
   107e0:	1c8000ef          	jal	109a8 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   107e4:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
  errno = ECHILD;
   107e8:	00a00793          	li	a5,10
   107ec:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   107f0:	01010113          	addi	sp,sp,16
   107f4:	fff00513          	li	a0,-1
   107f8:	00008067          	ret

00000000000107fc <isatty>:
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:303
// Query whether output stream is a terminal. For consistency with the
// other minimal implementations, which only support output to stdout,
// this minimal implementation is suggested by the newlib docs.

int isatty(int file)
{
   107fc:	f8010113          	addi	sp,sp,-128
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   10800:	00010593          	mv	a1,sp
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10804:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10808:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1080c:	05000893          	li	a7,80
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10810:	00000073          	ecall
   10814:	dc0542e3          	bltz	a0,105d8 <__syscall_error>
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   10818:	fff00793          	li	a5,-1
fstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:152
// Status of an open file. The sys/stat.h header file required is
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
   1081c:	0005051b          	sext.w	a0,a0
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306

int isatty(int file)
{
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   10820:	00f50863          	beq	a0,a5,10830 <isatty+0x34>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306 (discriminator 1)
   10824:	01012503          	lw	a0,16(sp)
   10828:	40d5551b          	sraiw	a0,a0,0xd
   1082c:	00157513          	andi	a0,a0,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:307 (discriminator 4)
}
   10830:	08010113          	addi	sp,sp,128
   10834:	00008067          	ret

0000000000010838 <times>:
times():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329

clock_t times(struct tms* buf)
{
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   10838:	86818313          	addi	t1,gp,-1944 # 115f8 <t0.2343>
   1083c:	00033703          	ld	a4,0(t1)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:326
// children's times to zero. Eventually we might want to separately
// account for user vs system time, but for now we just return the total
// number of cycles since starting the program.

clock_t times(struct tms* buf)
{
   10840:	ff010113          	addi	sp,sp,-16
   10844:	00050813          	mv	a6,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   10848:	02071063          	bnez	a4,10868 <times+0x30>
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   1084c:	86818513          	addi	a0,gp,-1944 # 115f8 <t0.2343>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   10850:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10854:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10858:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1085c:	0a900893          	li	a7,169
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10860:	00000073          	ecall
   10864:	d6054ae3          	bltz	a0,105d8 <__syscall_error>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   10868:	00010513          	mv	a0,sp
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   1086c:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10870:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10874:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10878:	0a900893          	li	a7,169
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1087c:	00000073          	ecall
   10880:	d4054ce3          	bltz	a0,105d8 <__syscall_error>
times():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10884:	00033703          	ld	a4,0(t1)
   10888:	00013783          	ld	a5,0(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   1088c:	fff00513          	li	a0,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   10890:	00083823          	sd	zero,16(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10894:	40e786b3          	sub	a3,a5,a4
   10898:	000f47b7          	lui	a5,0xf4
   1089c:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xe24b0>
   108a0:	02f68733          	mul	a4,a3,a5
   108a4:	00833683          	ld	a3,8(t1)
   108a8:	00813783          	ld	a5,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   108ac:	00083c23          	sd	zero,24(a6)
   108b0:	00083423          	sd	zero,8(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   108b4:	40d787b3          	sub	a5,a5,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   108b8:	01010113          	addi	sp,sp,16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   108bc:	00f707b3          	add	a5,a4,a5
   108c0:	00f83023          	sd	a5,0(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   108c4:	00008067          	ret

00000000000108c8 <gettimeofday>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   108c8:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   108cc:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   108d0:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   108d4:	0a900893          	li	a7,169
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   108d8:	00000073          	ecall
   108dc:	ce054ee3          	bltz	a0,105d8 <__syscall_error>
gettimeofday():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:350
// Get the current time.  Only relatively correct.

int gettimeofday(struct timeval* tp, void* tzp)
{
  return syscall_errno(SYS_gettimeofday, tp, 0, 0, 0);
}
   108e0:	0005051b          	sext.w	a0,a0
   108e4:	00008067          	ret

00000000000108e8 <ftime>:
ftime():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:359
//----------------------------------------------------------------------
// Get the current time.  Only relatively correct.

int ftime(struct timeb* tp)
{
  tp->time = tp->millitm = 0;
   108e8:	00051423          	sh	zero,8(a0)
   108ec:	00053023          	sd	zero,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:361
  return 0;
}
   108f0:	00000513          	li	a0,0
   108f4:	00008067          	ret

00000000000108f8 <utime>:
utime():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:371
// Stub.

int utime(const char* path, const struct utimbuf* times)
{
  return -1;
}
   108f8:	fff00513          	li	a0,-1
   108fc:	00008067          	ret

0000000000010900 <chown>:
chown():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:381
// Stub.

int chown(const char* path, uid_t owner, gid_t group)
{
  return -1;
}
   10900:	fff00513          	li	a0,-1
   10904:	00008067          	ret

0000000000010908 <chmod>:
chmod():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:391
// Stub.

int chmod(const char* path, mode_t mode)
{
  return -1;
}
   10908:	fff00513          	li	a0,-1
   1090c:	00008067          	ret

0000000000010910 <chdir>:
chdir():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:401
// Stub.

int chdir(const char* path)
{
  return -1;
}
   10910:	fff00513          	li	a0,-1
   10914:	00008067          	ret

0000000000010918 <getcwd>:
getcwd():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:411
// Stub.

char* getcwd(char* buf, size_t size)
{
  return NULL;
}
   10918:	00000513          	li	a0,0
   1091c:	00008067          	ret

0000000000010920 <sysconf>:
sysconf():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:420
//----------------------------------------------------------------------
// Get configurable system variables

long sysconf(int name)
{
  switch(name)
   10920:	00200793          	li	a5,2
   10924:	00f51863          	bne	a0,a5,10934 <sysconf+0x14>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:423
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
   10928:	000f4537          	lui	a0,0xf4
   1092c:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xe24b0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:427
  }

  return -1;
}
   10930:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:426
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
  }

  return -1;
   10934:	fff00513          	li	a0,-1
   10938:	00008067          	ret

000000000001093c <sbrk>:
sbrk():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
void* sbrk(ptrdiff_t incr)
{
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   1093c:	8281b703          	ld	a4,-2008(gp) # 115b8 <_fbss>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:438
// on this, it is useful to have a working implementation. The following
// is suggested by the newlib docs and suffices for a standalone
// system.

void* sbrk(ptrdiff_t incr)
{
   10940:	00050793          	mv	a5,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   10944:	00071663          	bnez	a4,10950 <sbrk+0x14>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:443
    heap_end = (long)_end;
   10948:	87818713          	addi	a4,gp,-1928 # 11608 <_end>
   1094c:	82e1b423          	sd	a4,-2008(gp) # 115b8 <_fbss>
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   10950:	00e78533          	add	a0,a5,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
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
   10960:	0d600893          	li	a7,214
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10964:	00000073          	ecall
   10968:	c60548e3          	bltz	a0,105d8 <__syscall_error>
sbrk():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   1096c:	8281b683          	ld	a3,-2008(gp) # 115b8 <_fbss>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:445
    return (void*)-1;
   10970:	fff00713          	li	a4,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
    heap_end = (long)_end;
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   10974:	00d787b3          	add	a5,a5,a3
   10978:	00f51663          	bne	a0,a5,10984 <sbrk+0x48>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:447
    return (void*)-1;

  heap_end += incr;
   1097c:	82a1b423          	sd	a0,-2008(gp) # 115b8 <_fbss>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:448
  return heap_end - incr;
   10980:	00068713          	mv	a4,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:449
}
   10984:	00070513          	mv	a0,a4
   10988:	00008067          	ret

000000000001098c <_exit>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   1098c:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10990:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10994:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10998:	05d00893          	li	a7,93
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1099c:	00000073          	ecall
   109a0:	c2054ce3          	bltz	a0,105d8 <__syscall_error>
   109a4:	0000006f          	j	109a4 <_exit+0x18>

00000000000109a8 <__errno>:
__errno():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/errno/errno.c:14

int *
__errno ()
{
  return &_REENT->_errno;
}
   109a8:	8201b503          	ld	a0,-2016(gp) # 115b0 <_impure_ptr>
   109ac:	00008067          	ret
