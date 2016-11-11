
test:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
_ftext():
   10000:	00002197          	auipc	gp,0x2
   10004:	d1018193          	addi	gp,gp,-752 # 11d10 <_gp>
   10008:	00001297          	auipc	t0,0x1
   1000c:	52828293          	addi	t0,t0,1320 # 11530 <_fbss>
   10010:	00001317          	auipc	t1,0x1
   10014:	57830313          	addi	t1,t1,1400 # 11588 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	1ac50513          	addi	a0,a0,428 # 101d0 <__libc_fini_array>
   1002c:	160000ef          	jal	1018c <atexit>
   10030:	1fc000ef          	jal	1022c <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	15c0006f          	j	101a0 <exit>

0000000000010048 <_fini>:
_init():
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
deregister_tm_clones():
   1004c:	00011537          	lui	a0,0x11
   10050:	000117b7          	lui	a5,0x11
   10054:	50850713          	addi	a4,a0,1288 # 11508 <__TMC_END__>
   10058:	50f78793          	addi	a5,a5,1295 # 1150f <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	50850513          	addi	a0,a0,1288
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
register_tm_clones():
   10080:	00011537          	lui	a0,0x11
   10084:	000117b7          	lui	a5,0x11
   10088:	50850593          	addi	a1,a0,1288 # 11508 <__TMC_END__>
   1008c:	50878793          	addi	a5,a5,1288 # 11508 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	50850513          	addi	a0,a0,1288
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8281c783          	lbu	a5,-2008(gp) # 11538 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00011537          	lui	a0,0x11
   100e8:	96850513          	addi	a0,a0,-1688 # 10968 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	82f18423          	sb	a5,-2008(gp) # 11538 <_bss_start>
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
   10124:	83018593          	addi	a1,gp,-2000 # 11540 <object.3092>
   10128:	96850513          	addi	a0,a0,-1688 # 10968 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	000117b7          	lui	a5,0x11
   10138:	db878513          	addi	a0,a5,-584 # 10db8 <__JCR_END__>
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
/home/davidguan/Lab2.1/test.c:12

// set .rodata section
const int z = 1;

int main()
{
   10164:	ff010113          	addi	sp,sp,-16
   10168:	00813423          	sd	s0,8(sp)
   1016c:	01010413          	addi	s0,sp,16
/home/davidguan/Lab2.1/test.c:13
    x = 1;
   10170:	00100713          	li	a4,1
   10174:	80e1a423          	sw	a4,-2040(gp) # 11518 <x>
/home/davidguan/Lab2.1/test.c:14
    return 0;
   10178:	00000793          	li	a5,0
/home/davidguan/Lab2.1/test.c:15
}
   1017c:	00078513          	mv	a0,a5
   10180:	00813403          	ld	s0,8(sp)
   10184:	01010113          	addi	sp,sp,16
   10188:	00008067          	ret

000000000001018c <atexit>:
atexit():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/atexit.c:65
int
_DEFUN (atexit,
	(fn),
	_VOID _EXFNPTR(fn, (_VOID)))
{
  return __register_exitproc (__et_atexit, fn, NULL, NULL);
   1018c:	00050593          	mv	a1,a0
   10190:	00000693          	li	a3,0
   10194:	00000613          	li	a2,0
   10198:	00000513          	li	a0,0
   1019c:	1300006f          	j	102cc <__register_exitproc>

00000000000101a0 <exit>:
exit():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:60
 */

void
_DEFUN (exit, (code),
	int code)
{
   101a0:	ff010113          	addi	sp,sp,-16
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:66
#ifdef _LITE_EXIT
  /* Refer to comments in __atexit.c for more details of lite exit.  */
  void __call_exitprocs _PARAMS ((int, _PTR)) __attribute__((weak));
  if (__call_exitprocs)
#endif
    __call_exitprocs (code, NULL);
   101a4:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:60
 */

void
_DEFUN (exit, (code),
	int code)
{
   101a8:	00813023          	sd	s0,0(sp)
   101ac:	00113423          	sd	ra,8(sp)
   101b0:	00050413          	mv	s0,a0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:66
#ifdef _LITE_EXIT
  /* Refer to comments in __atexit.c for more details of lite exit.  */
  void __call_exitprocs _PARAMS ((int, _PTR)) __attribute__((weak));
  if (__call_exitprocs)
#endif
    __call_exitprocs (code, NULL);
   101b4:	22c000ef          	jal	103e0 <__call_exitprocs>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:68

  if (_GLOBAL_REENT->__cleanup)
   101b8:	8101b503          	ld	a0,-2032(gp) # 11520 <_global_impure_ptr>
   101bc:	05853783          	ld	a5,88(a0)
   101c0:	00078463          	beqz	a5,101c8 <exit+0x28>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:69
    (*_GLOBAL_REENT->__cleanup) (_GLOBAL_REENT);
   101c4:	000780e7          	jalr	a5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:70
  _exit (code);
   101c8:	00040513          	mv	a0,s0
   101cc:	75c000ef          	jal	10928 <_exit>

00000000000101d0 <__libc_fini_array>:
__libc_fini_array():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:25
extern void _fini (void);

/* Run all the cleanup routines.  */
void
__libc_fini_array (void)
{
   101d0:	fe010113          	addi	sp,sp,-32
   101d4:	00813823          	sd	s0,16(sp)
   101d8:	00913423          	sd	s1,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:29
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
   101dc:	00011437          	lui	s0,0x11
   101e0:	000114b7          	lui	s1,0x11
   101e4:	96048493          	addi	s1,s1,-1696 # 10960 <__init_array_end>
   101e8:	96840413          	addi	s0,s0,-1688 # 10968 <__fini_array_end>
   101ec:	40940433          	sub	s0,s0,s1
   101f0:	ff840793          	addi	a5,s0,-8
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:25
extern void _fini (void);

/* Run all the cleanup routines.  */
void
__libc_fini_array (void)
{
   101f4:	00113c23          	sd	ra,24(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:29
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
   101f8:	40345413          	srai	s0,s0,0x3
   101fc:	009784b3          	add	s1,a5,s1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:30
  for (i = count; i > 0; i--)
   10200:	00040c63          	beqz	s0,10218 <__libc_fini_array+0x48>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:31 (discriminator 3)
    __fini_array_start[i-1] ();
   10204:	0004b783          	ld	a5,0(s1)
   10208:	fff40413          	addi	s0,s0,-1
   1020c:	ff848493          	addi	s1,s1,-8
   10210:	000780e7          	jalr	a5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:30
{
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
  for (i = count; i > 0; i--)
   10214:	fe0418e3          	bnez	s0,10204 <__libc_fini_array+0x34>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:34
    __fini_array_start[i-1] ();

  _fini ();
}
   10218:	01813083          	ld	ra,24(sp)
   1021c:	01013403          	ld	s0,16(sp)
   10220:	00813483          	ld	s1,8(sp)
   10224:	02010113          	addi	sp,sp,32
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:33
  
  count = __fini_array_end - __fini_array_start;
  for (i = count; i > 0; i--)
    __fini_array_start[i-1] ();

  _fini ();
   10228:	e21ff06f          	j	10048 <_fini>

000000000001022c <__libc_init_array>:
__libc_init_array():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   1022c:	fe010113          	addi	sp,sp,-32
   10230:	00813823          	sd	s0,16(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   10234:	000117b7          	lui	a5,0x11
   10238:	00011437          	lui	s0,0x11
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   1023c:	01213023          	sd	s2,0(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   10240:	95878793          	addi	a5,a5,-1704 # 10958 <_etext>
   10244:	95840913          	addi	s2,s0,-1704 # 10958 <_etext>
   10248:	41278933          	sub	s2,a5,s2
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   1024c:	00913423          	sd	s1,8(sp)
   10250:	00113c23          	sd	ra,24(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   10254:	40395913          	srai	s2,s2,0x3
   10258:	95840413          	addi	s0,s0,-1704
   1025c:	00000493          	li	s1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
  for (i = 0; i < count; i++)
   10260:	00090c63          	beqz	s2,10278 <__libc_init_array+0x4c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:35 (discriminator 3)
    __preinit_array_start[i] ();
   10264:	00043783          	ld	a5,0(s0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
{
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
  for (i = 0; i < count; i++)
   10268:	00148493          	addi	s1,s1,1
   1026c:	00840413          	addi	s0,s0,8
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:35
    __preinit_array_start[i] ();
   10270:	000780e7          	jalr	a5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
{
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
  for (i = 0; i < count; i++)
   10274:	fe9918e3          	bne	s2,s1,10264 <__libc_init_array+0x38>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:37
    __preinit_array_start[i] ();

  _init ();
   10278:	dd1ff0ef          	jal	10048 <_fini>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:39

  count = __init_array_end - __init_array_start;
   1027c:	00011437          	lui	s0,0x11
   10280:	000117b7          	lui	a5,0x11
   10284:	95840913          	addi	s2,s0,-1704 # 10958 <_etext>
   10288:	96078793          	addi	a5,a5,-1696 # 10960 <__init_array_end>
   1028c:	41278933          	sub	s2,a5,s2
   10290:	40395913          	srai	s2,s2,0x3
   10294:	95840413          	addi	s0,s0,-1704
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
  for (i = 0; i < count; i++)
   10298:	00000493          	li	s1,0
   1029c:	00090c63          	beqz	s2,102b4 <__libc_init_array+0x88>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:41 (discriminator 3)
    __init_array_start[i] ();
   102a0:	00043783          	ld	a5,0(s0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
    __preinit_array_start[i] ();

  _init ();

  count = __init_array_end - __init_array_start;
  for (i = 0; i < count; i++)
   102a4:	00148493          	addi	s1,s1,1
   102a8:	00840413          	addi	s0,s0,8
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:41
    __init_array_start[i] ();
   102ac:	000780e7          	jalr	a5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
    __preinit_array_start[i] ();

  _init ();

  count = __init_array_end - __init_array_start;
  for (i = 0; i < count; i++)
   102b0:	fe9918e3          	bne	s2,s1,102a0 <__libc_init_array+0x74>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:42
    __init_array_start[i] ();
}
   102b4:	01813083          	ld	ra,24(sp)
   102b8:	01013403          	ld	s0,16(sp)
   102bc:	00813483          	ld	s1,8(sp)
   102c0:	00013903          	ld	s2,0(sp)
   102c4:	02010113          	addi	sp,sp,32
   102c8:	00008067          	ret

00000000000102cc <__register_exitproc>:
__register_exitproc():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   102cc:	fd010113          	addi	sp,sp,-48
   102d0:	02813023          	sd	s0,32(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   102d4:	8101b403          	ld	s0,-2032(gp) # 11520 <_global_impure_ptr>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   102d8:	00913c23          	sd	s1,24(sp)
   102dc:	00050493          	mv	s1,a0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   102e0:	1f843503          	ld	a0,504(s0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   102e4:	01213823          	sd	s2,16(sp)
   102e8:	01313423          	sd	s3,8(sp)
   102ec:	01413023          	sd	s4,0(sp)
   102f0:	02113423          	sd	ra,40(sp)
   102f4:	00058913          	mv	s2,a1
   102f8:	00060a13          	mv	s4,a2
   102fc:	00068993          	mv	s3,a3
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:81
#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
   10300:	0c050663          	beqz	a0,103cc <__register_exitproc+0x100>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:83
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
  if (p->_ind >= _ATEXIT_SIZE)
   10304:	00852703          	lw	a4,8(a0)
   10308:	01f00793          	li	a5,31
   1030c:	0017059b          	addiw	a1,a4,1
   10310:	04e7d063          	ble	a4,a5,10350 <__register_exitproc+0x84>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:90
#ifndef _ATEXIT_DYNAMIC_ALLOC
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
   10314:	000007b7          	lui	a5,0x0
   10318:	00078793          	mv	a5,a5
   1031c:	0a078e63          	beqz	a5,103d8 <__register_exitproc+0x10c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:93
	return -1;

      p = (struct _atexit *) malloc (sizeof *p);
   10320:	31800513          	li	a0,792
   10324:	ffff0317          	auipc	t1,0xffff0
   10328:	cdc300e7          	jalr	t1,-804 # 0 <_ftext-0x10000>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:94
      if (p == NULL)
   1032c:	0a050663          	beqz	a0,103d8 <__register_exitproc+0x10c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   10330:	1f843783          	ld	a5,504(s0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:101
#ifndef __SINGLE_THREAD__
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
   10334:	00052423          	sw	zero,8(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_next = _GLOBAL_ATEXIT;
      _GLOBAL_ATEXIT = p;
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
      p->_on_exit_args._is_cxa = 0;
   10338:	00100593          	li	a1,1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   1033c:	00f53023          	sd	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:103
      _GLOBAL_ATEXIT = p;
   10340:	1ea43c23          	sd	a0,504(s0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:105
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
   10344:	30052823          	sw	zero,784(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_on_exit_args._is_cxa = 0;
   10348:	30052a23          	sw	zero,788(a0)
   1034c:	00000713          	li	a4,0
   10350:	00070793          	mv	a5,a4
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:113
      p->_on_exit_args_ptr = NULL;
#endif
#endif
    }

  if (type != __et_atexit)
   10354:	02049e63          	bnez	s1,10390 <__register_exitproc+0xc4>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:142
      args->_fntypes |= (1 << p->_ind);
      args->_dso_handle[p->_ind] = d;
      if (type == __et_cxa)
	args->_is_cxa |= (1 << p->_ind);
    }
  p->_fns[p->_ind++] = fn;
   10358:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   1035c:	00379793          	slli	a5,a5,0x3
   10360:	00b52423          	sw	a1,8(a0)
   10364:	00f50533          	add	a0,a0,a5
   10368:	01253023          	sd	s2,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:146
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif
  return 0;
   1036c:	00000513          	li	a0,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:147
}
   10370:	02813083          	ld	ra,40(sp)
   10374:	02013403          	ld	s0,32(sp)
   10378:	01813483          	ld	s1,24(sp)
   1037c:	01013903          	ld	s2,16(sp)
   10380:	00813983          	ld	s3,8(sp)
   10384:	00013a03          	ld	s4,0(sp)
   10388:	03010113          	addi	sp,sp,48
   1038c:	00008067          	ret
   10390:	00371813          	slli	a6,a4,0x3
   10394:	01050833          	add	a6,a0,a6
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:136
	  p->_on_exit_args_ptr = args;
	}
#else
      args = &p->_on_exit_args;
#endif
      args->_fnargs[p->_ind] = arg;
   10398:	11483823          	sd	s4,272(a6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:137
      args->_fntypes |= (1 << p->_ind);
   1039c:	31052883          	lw	a7,784(a0)
   103a0:	00100613          	li	a2,1
   103a4:	00e6173b          	sllw	a4,a2,a4
   103a8:	00e8e633          	or	a2,a7,a4
   103ac:	30c52823          	sw	a2,784(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:138
      args->_dso_handle[p->_ind] = d;
   103b0:	21383823          	sd	s3,528(a6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:139
      if (type == __et_cxa)
   103b4:	00200693          	li	a3,2
   103b8:	fad490e3          	bne	s1,a3,10358 <__register_exitproc+0x8c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:140
	args->_is_cxa |= (1 << p->_ind);
   103bc:	31452683          	lw	a3,788(a0)
   103c0:	00e6e733          	or	a4,a3,a4
   103c4:	30e52a23          	sw	a4,788(a0)
   103c8:	f91ff06f          	j	10358 <__register_exitproc+0x8c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:82
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
   103cc:	20040513          	addi	a0,s0,512
   103d0:	1ea43c23          	sd	a0,504(s0)
   103d4:	f31ff06f          	j	10304 <__register_exitproc+0x38>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:91
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
	return -1;
   103d8:	fff00513          	li	a0,-1
   103dc:	f95ff06f          	j	10370 <__register_exitproc+0xa4>

00000000000103e0 <__call_exitprocs>:
__call_exitprocs():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   103e0:	fa010113          	addi	sp,sp,-96
   103e4:	03413823          	sd	s4,48(sp)
   103e8:	8101ba03          	ld	s4,-2032(gp) # 11520 <_global_impure_ptr>
   103ec:	03313c23          	sd	s3,56(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   103f0:	000009b7          	lui	s3,0x0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   103f4:	04913423          	sd	s1,72(sp)
   103f8:	05213023          	sd	s2,64(sp)
   103fc:	03513423          	sd	s5,40(sp)
   10400:	01713c23          	sd	s7,24(sp)
   10404:	01813823          	sd	s8,16(sp)
   10408:	04113c23          	sd	ra,88(sp)
   1040c:	04813823          	sd	s0,80(sp)
   10410:	03613023          	sd	s6,32(sp)
   10414:	01913423          	sd	s9,8(sp)
   10418:	01a13023          	sd	s10,0(sp)
   1041c:	00050913          	mv	s2,a0
   10420:	00058b93          	mv	s7,a1
   10424:	1f8a0a93          	addi	s5,s4,504
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   10428:	00100493          	li	s1,1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   1042c:	fff00c13          	li	s8,-1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   10430:	00098993          	mv	s3,s3
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:83
  __lock_acquire_recursive(__atexit_lock);
#endif

 restart:

  p = _GLOBAL_ATEXIT;
   10434:	1f8a3b03          	ld	s6,504(s4)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10438:	0c0b0663          	beqz	s6,10504 <__call_exitprocs+0x124>
   1043c:	000a8d13          	mv	s10,s5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10440:	008b2403          	lw	s0,8(s6)
   10444:	fff4041b          	addiw	s0,s0,-1
   10448:	02045263          	bgez	s0,1046c <__call_exitprocs+0x8c>
   1044c:	08c0006f          	j	104d8 <__call_exitprocs+0xf8>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99 (discriminator 2)
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   10450:	02040793          	addi	a5,s0,32
   10454:	00379793          	slli	a5,a5,0x3
   10458:	00fb07b3          	add	a5,s6,a5
   1045c:	1107b783          	ld	a5,272(a5)
   10460:	00fb8a63          	beq	s7,a5,10474 <__call_exitprocs+0x94>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10464:	fff4041b          	addiw	s0,s0,-1
   10468:	07840863          	beq	s0,s8,104d8 <__call_exitprocs+0xf8>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   1046c:	00040713          	mv	a4,s0
   10470:	fe0b90e3          	bnez	s7,10450 <__call_exitprocs+0x70>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
   10474:	008b2783          	lw	a5,8(s6)
   10478:	00371713          	slli	a4,a4,0x3
   1047c:	00eb0733          	add	a4,s6,a4
   10480:	fff7879b          	addiw	a5,a5,-1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:104
	  if (d && (!args || args->_dso_handle[n] != d))
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
   10484:	01073683          	ld	a3,16(a4)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	  if (n == p->_ind - 1)
   10488:	0a878e63          	beq	a5,s0,10544 <__call_exitprocs+0x164>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:108
	    p->_ind--;
	  else
	    p->_fns[n] = NULL;
   1048c:	00073823          	sd	zero,16(a4)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:111

	  /* Skip functions that have already been called.  */
	  if (!fn)
   10490:	fc068ae3          	beqz	a3,10464 <__call_exitprocs+0x84>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   10494:	310b2783          	lw	a5,784(s6)
   10498:	0084963b          	sllw	a2,s1,s0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:114

	  /* Skip functions that have already been called.  */
	  if (!fn)
	    continue;

	  ind = p->_ind;
   1049c:	008b2c83          	lw	s9,8(s6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   104a0:	00f677b3          	and	a5,a2,a5
   104a4:	08078c63          	beqz	a5,1053c <__call_exitprocs+0x15c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:119
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
   104a8:	314b2783          	lw	a5,788(s6)
   104ac:	00f67633          	and	a2,a2,a5
   104b0:	08061e63          	bnez	a2,1054c <__call_exitprocs+0x16c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:120
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
   104b4:	11073583          	ld	a1,272(a4)
   104b8:	00090513          	mv	a0,s2
   104bc:	000680e7          	jalr	a3
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);

	  /* The function we called call atexit and registered another
	     function (or functions).  Call these new functions before
	     continuing with the already registered functions.  */
	  if (ind != p->_ind || *lastp != p)
   104c0:	008b2783          	lw	a5,8(s6)
   104c4:	f79798e3          	bne	a5,s9,10434 <__call_exitprocs+0x54>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127 (discriminator 1)
   104c8:	000d3783          	ld	a5,0(s10)
   104cc:	f76794e3          	bne	a5,s6,10434 <__call_exitprocs+0x54>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   104d0:	fff4041b          	addiw	s0,s0,-1
   104d4:	f9841ce3          	bne	s0,s8,1046c <__call_exitprocs+0x8c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   104d8:	02098663          	beqz	s3,10504 <__call_exitprocs+0x124>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141
	break;

      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
   104dc:	008b2783          	lw	a5,8(s6)
   104e0:	06079c63          	bnez	a5,10558 <__call_exitprocs+0x178>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141 (discriminator 1)
   104e4:	000b3783          	ld	a5,0(s6)
   104e8:	08078263          	beqz	a5,1056c <__call_exitprocs+0x18c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
	  *lastp = p->_next;
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   104ec:	000b0513          	mv	a0,s6
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:144
      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
	{
	  /* Remove empty block from the list.  */
	  *lastp = p->_next;
   104f0:	00fd3023          	sd	a5,0(s10)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   104f4:	ffff0317          	auipc	t1,0xffff0
   104f8:	b0c300e7          	jalr	t1,-1268 # 0 <_ftext-0x10000>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:150
	  p = *lastp;
   104fc:	000d3b03          	ld	s6,0(s10)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10500:	f40b10e3          	bnez	s6,10440 <__call_exitprocs+0x60>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:163
    }
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif

}
   10504:	05813083          	ld	ra,88(sp)
   10508:	05013403          	ld	s0,80(sp)
   1050c:	04813483          	ld	s1,72(sp)
   10510:	04013903          	ld	s2,64(sp)
   10514:	03813983          	ld	s3,56(sp)
   10518:	03013a03          	ld	s4,48(sp)
   1051c:	02813a83          	ld	s5,40(sp)
   10520:	02013b03          	ld	s6,32(sp)
   10524:	01813b83          	ld	s7,24(sp)
   10528:	01013c03          	ld	s8,16(sp)
   1052c:	00813c83          	ld	s9,8(sp)
   10530:	00013d03          	ld	s10,0(sp)
   10534:	06010113          	addi	sp,sp,96
   10538:	00008067          	ret
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:118

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
   1053c:	000680e7          	jalr	a3
   10540:	f81ff06f          	j	104c0 <__call_exitprocs+0xe0>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:106

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
	    p->_ind--;
   10544:	008b2423          	sw	s0,8(s6)
   10548:	f49ff06f          	j	10490 <__call_exitprocs+0xb0>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:122
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
	  else
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);
   1054c:	11073503          	ld	a0,272(a4)
   10550:	000680e7          	jalr	a3
   10554:	f6dff06f          	j	104c0 <__call_exitprocs+0xe0>
   10558:	000b3783          	ld	a5,0(s6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:154
	  free (p);
	  p = *lastp;
	}
      else
	{
	  lastp = &p->_next;
   1055c:	000b0d13          	mv	s10,s6
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:155
	  p = p->_next;
   10560:	00078b13          	mv	s6,a5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10564:	ec0b1ee3          	bnez	s6,10440 <__call_exitprocs+0x60>
   10568:	f9dff06f          	j	10504 <__call_exitprocs+0x124>
   1056c:	00000793          	li	a5,0
   10570:	fedff06f          	j	1055c <__call_exitprocs+0x17c>

0000000000010574 <__syscall_error>:
__syscall_error():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:95

#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
   10574:	ff010113          	addi	sp,sp,-16
   10578:	00113423          	sd	ra,8(sp)
   1057c:	00813023          	sd	s0,0(sp)
   10580:	00050413          	mv	s0,a0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
  errno = -a0;
   10584:	3c0000ef          	jal	10944 <__errno>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   10588:	00813083          	ld	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
  errno = -a0;
   1058c:	408007bb          	negw	a5,s0
   10590:	00f52023          	sw	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   10594:	00013403          	ld	s0,0(sp)
   10598:	fff00513          	li	a0,-1
   1059c:	01010113          	addi	sp,sp,16
   105a0:	00008067          	ret

00000000000105a4 <open>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   105a4:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   105a8:	40000893          	li	a7,1024
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   105ac:	00000073          	ecall
   105b0:	fc0542e3          	bltz	a0,10574 <__syscall_error>
open():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:103

int open(const char* name, int flags, int mode)
{
  return syscall_errno(SYS_open, name, flags, mode, 0);
}
   105b4:	0005051b          	sext.w	a0,a0
   105b8:	00008067          	ret

00000000000105bc <openat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   105bc:	03800893          	li	a7,56
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   105c0:	00000073          	ecall
   105c4:	fa0548e3          	bltz	a0,10574 <__syscall_error>
openat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:112
//------------------------------------------------------------------------
// Open file relative to given directory
int openat(int dirfd, const char* name, int flags, int mode)
{
  return syscall_errno(SYS_openat, dirfd, name, flags, mode);
}
   105c8:	0005051b          	sext.w	a0,a0
   105cc:	00008067          	ret

00000000000105d0 <lseek>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   105d0:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   105d4:	03e00893          	li	a7,62
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   105d8:	00000073          	ecall
   105dc:	f8054ce3          	bltz	a0,10574 <__syscall_error>
lseek():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:122
// Set position in a file.

off_t lseek(int file, off_t ptr, int dir)
{
  return syscall_errno(SYS_lseek, file, ptr, dir, 0);
}
   105e0:	00008067          	ret

00000000000105e4 <read>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   105e4:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   105e8:	03f00893          	li	a7,63
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   105ec:	00000073          	ecall
   105f0:	f80542e3          	bltz	a0,10574 <__syscall_error>
read():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:132
// Read from a file.

ssize_t read(int file, void* ptr, size_t len)
{
  return syscall_errno(SYS_read, file, ptr, len, 0);
}
   105f4:	00008067          	ret

00000000000105f8 <write>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   105f8:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   105fc:	04000893          	li	a7,64
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10600:	00000073          	ecall
   10604:	f60548e3          	bltz	a0,10574 <__syscall_error>
write():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:142
// Write to a file.

ssize_t write(int file, const void* ptr, size_t len)
{
  return syscall_errno(SYS_write, file, ptr, len, 0);
}
   10608:	00008067          	ret

000000000001060c <fstat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   1060c:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10610:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10614:	05000893          	li	a7,80
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10618:	00000073          	ecall
   1061c:	f4054ce3          	bltz	a0,10574 <__syscall_error>
fstat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:153
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
}
   10620:	0005051b          	sext.w	a0,a0
   10624:	00008067          	ret

0000000000010628 <stat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   10628:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   1062c:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10630:	40e00893          	li	a7,1038
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10634:	00000073          	ecall
   10638:	f2054ee3          	bltz	a0,10574 <__syscall_error>
stat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:163
// Status of a file (by name).

int stat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_stat, file, st, 0, 0);
}
   1063c:	0005051b          	sext.w	a0,a0
   10640:	00008067          	ret

0000000000010644 <lstat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   10644:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10648:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1064c:	40f00893          	li	a7,1039
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10650:	00000073          	ecall
   10654:	f20540e3          	bltz	a0,10574 <__syscall_error>
lstat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:173
// Status of a link (by name).

int lstat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_lstat, file, st, 0, 0);
}
   10658:	0005051b          	sext.w	a0,a0
   1065c:	00008067          	ret

0000000000010660 <fstatat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   10660:	04f00893          	li	a7,79
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10664:	00000073          	ecall
   10668:	f00546e3          	bltz	a0,10574 <__syscall_error>
fstatat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:183
// Status of a file (by name) in a given directory.

int fstatat(int dirfd, const char* file, struct stat* st, int flags)
{
  return syscall_errno(SYS_fstatat, dirfd, file, st, flags);
}
   1066c:	0005051b          	sext.w	a0,a0
   10670:	00008067          	ret

0000000000010674 <access>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   10674:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10678:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1067c:	40900893          	li	a7,1033
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10680:	00000073          	ecall
   10684:	ee0548e3          	bltz	a0,10574 <__syscall_error>
access():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:193
// Permissions of a file (by name).

int access(const char* file, int mode)
{
  return syscall_errno(SYS_access, file, mode, 0, 0);
}
   10688:	0005051b          	sext.w	a0,a0
   1068c:	00008067          	ret

0000000000010690 <faccessat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   10690:	03000893          	li	a7,48
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10694:	00000073          	ecall
   10698:	ec054ee3          	bltz	a0,10574 <__syscall_error>
faccessat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:203
// Permissions of a file (by name) in a given directory.

int faccessat(int dirfd, const char* file, int mode, int flags)
{
  return syscall_errno(SYS_faccessat, dirfd, file, mode, flags);
}
   1069c:	0005051b          	sext.w	a0,a0
   106a0:	00008067          	ret

00000000000106a4 <close>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   106a4:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   106a8:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   106ac:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106b0:	03900893          	li	a7,57
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106b4:	00000073          	ecall
   106b8:	ea054ee3          	bltz	a0,10574 <__syscall_error>
close():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:213
// Close a file.

int close(int file) 
{
  return syscall_errno(SYS_close, file, 0, 0, 0);
}
   106bc:	0005051b          	sext.w	a0,a0
   106c0:	00008067          	ret

00000000000106c4 <link>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   106c4:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   106c8:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106cc:	40100893          	li	a7,1025
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106d0:	00000073          	ecall
   106d4:	ea0540e3          	bltz	a0,10574 <__syscall_error>
link():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:223
// Establish a new name for an existing file.

int link(const char* old_name, const char* new_name)
{
  return syscall_errno(SYS_link, old_name, new_name, 0, 0);
}
   106d8:	0005051b          	sext.w	a0,a0
   106dc:	00008067          	ret

00000000000106e0 <unlink>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   106e0:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   106e4:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   106e8:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106ec:	40200893          	li	a7,1026
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106f0:	00000073          	ecall
   106f4:	e80540e3          	bltz	a0,10574 <__syscall_error>
unlink():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:233
// Remove a file's directory entry.

int unlink(const char* name)
{
  return syscall_errno(SYS_unlink, name, 0, 0, 0);
}
   106f8:	0005051b          	sext.w	a0,a0
   106fc:	00008067          	ret

0000000000010700 <execve>:
execve():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:242
//------------------------------------------------------------------------
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
   10700:	ff010113          	addi	sp,sp,-16
   10704:	00113423          	sd	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
  errno = ENOMEM;
   10708:	23c000ef          	jal	10944 <__errno>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   1070c:	00813083          	ld	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
  errno = ENOMEM;
   10710:	00c00793          	li	a5,12
   10714:	00f52023          	sw	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   10718:	01010113          	addi	sp,sp,16
   1071c:	fff00513          	li	a0,-1
   10720:	00008067          	ret

0000000000010724 <fork>:
fork():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:254
//------------------------------------------------------------------------
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
   10724:	ff010113          	addi	sp,sp,-16
   10728:	00113423          	sd	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
  errno = EAGAIN;
   1072c:	218000ef          	jal	10944 <__errno>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   10730:	00813083          	ld	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
  errno = EAGAIN;
   10734:	00b00793          	li	a5,11
   10738:	00f52023          	sw	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   1073c:	01010113          	addi	sp,sp,16
   10740:	fff00513          	li	a0,-1
   10744:	00008067          	ret

0000000000010748 <getpid>:
getpid():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:269
// system without processes just returns 1.

int getpid() 
{
  return 1;
}
   10748:	00100513          	li	a0,1
   1074c:	00008067          	ret

0000000000010750 <kill>:
kill():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:278
//------------------------------------------------------------------------
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
   10750:	ff010113          	addi	sp,sp,-16
   10754:	00113423          	sd	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
  errno = EINVAL;
   10758:	1ec000ef          	jal	10944 <__errno>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   1075c:	00813083          	ld	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
  errno = EINVAL;
   10760:	01600793          	li	a5,22
   10764:	00f52023          	sw	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   10768:	01010113          	addi	sp,sp,16
   1076c:	fff00513          	li	a0,-1
   10770:	00008067          	ret

0000000000010774 <wait>:
wait():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:290
//------------------------------------------------------------------------
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
   10774:	ff010113          	addi	sp,sp,-16
   10778:	00113423          	sd	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
  errno = ECHILD;
   1077c:	1c8000ef          	jal	10944 <__errno>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   10780:	00813083          	ld	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
  errno = ECHILD;
   10784:	00a00793          	li	a5,10
   10788:	00f52023          	sw	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   1078c:	01010113          	addi	sp,sp,16
   10790:	fff00513          	li	a0,-1
   10794:	00008067          	ret

0000000000010798 <isatty>:
isatty():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:303
// Query whether output stream is a terminal. For consistency with the
// other minimal implementations, which only support output to stdout,
// this minimal implementation is suggested by the newlib docs.

int isatty(int file)
{
   10798:	f8010113          	addi	sp,sp,-128
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   1079c:	00010593          	mv	a1,sp
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   107a0:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   107a4:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   107a8:	05000893          	li	a7,80
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   107ac:	00000073          	ecall
   107b0:	dc0542e3          	bltz	a0,10574 <__syscall_error>
isatty():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   107b4:	fff00793          	li	a5,-1
fstat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:152
// Status of an open file. The sys/stat.h header file required is
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
   107b8:	0005051b          	sext.w	a0,a0
isatty():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306

int isatty(int file)
{
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   107bc:	00f50863          	beq	a0,a5,107cc <isatty+0x34>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306 (discriminator 1)
   107c0:	01012503          	lw	a0,16(sp)
   107c4:	40d5551b          	sraiw	a0,a0,0xd
   107c8:	00157513          	andi	a0,a0,1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:307 (discriminator 4)
}
   107cc:	08010113          	addi	sp,sp,128
   107d0:	00008067          	ret

00000000000107d4 <times>:
times():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329

clock_t times(struct tms* buf)
{
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   107d4:	86018313          	addi	t1,gp,-1952 # 11570 <t0.2343>
   107d8:	00033703          	ld	a4,0(t1)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:326
// children's times to zero. Eventually we might want to separately
// account for user vs system time, but for now we just return the total
// number of cycles since starting the program.

clock_t times(struct tms* buf)
{
   107dc:	ff010113          	addi	sp,sp,-16
   107e0:	00050813          	mv	a6,a0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   107e4:	02071063          	bnez	a4,10804 <times+0x30>
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   107e8:	86018513          	addi	a0,gp,-1952 # 11570 <t0.2343>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   107ec:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   107f0:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   107f4:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   107f8:	0a900893          	li	a7,169
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   107fc:	00000073          	ecall
   10800:	d6054ae3          	bltz	a0,10574 <__syscall_error>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   10804:	00010513          	mv	a0,sp
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   10808:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   1080c:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10810:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10814:	0a900893          	li	a7,169
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10818:	00000073          	ecall
   1081c:	d4054ce3          	bltz	a0,10574 <__syscall_error>
times():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10820:	00033703          	ld	a4,0(t1)
   10824:	00013783          	ld	a5,0(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   10828:	fff00513          	li	a0,-1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   1082c:	00083823          	sd	zero,16(a6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10830:	40e786b3          	sub	a3,a5,a4
   10834:	000f47b7          	lui	a5,0xf4
   10838:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xe2530>
   1083c:	02f68733          	mul	a4,a3,a5
   10840:	00833683          	ld	a3,8(t1)
   10844:	00813783          	ld	a5,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   10848:	00083c23          	sd	zero,24(a6)
   1084c:	00083423          	sd	zero,8(a6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10850:	40d787b3          	sub	a5,a5,a3
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   10854:	01010113          	addi	sp,sp,16
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10858:	00f707b3          	add	a5,a4,a5
   1085c:	00f83023          	sd	a5,0(a6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   10860:	00008067          	ret

0000000000010864 <gettimeofday>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   10864:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10868:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   1086c:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10870:	0a900893          	li	a7,169
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10874:	00000073          	ecall
   10878:	ce054ee3          	bltz	a0,10574 <__syscall_error>
gettimeofday():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:350
// Get the current time.  Only relatively correct.

int gettimeofday(struct timeval* tp, void* tzp)
{
  return syscall_errno(SYS_gettimeofday, tp, 0, 0, 0);
}
   1087c:	0005051b          	sext.w	a0,a0
   10880:	00008067          	ret

0000000000010884 <ftime>:
ftime():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:359
//----------------------------------------------------------------------
// Get the current time.  Only relatively correct.

int ftime(struct timeb* tp)
{
  tp->time = tp->millitm = 0;
   10884:	00051423          	sh	zero,8(a0)
   10888:	00053023          	sd	zero,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:361
  return 0;
}
   1088c:	00000513          	li	a0,0
   10890:	00008067          	ret

0000000000010894 <utime>:
utime():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:371
// Stub.

int utime(const char* path, const struct utimbuf* times)
{
  return -1;
}
   10894:	fff00513          	li	a0,-1
   10898:	00008067          	ret

000000000001089c <chown>:
chown():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:381
// Stub.

int chown(const char* path, uid_t owner, gid_t group)
{
  return -1;
}
   1089c:	fff00513          	li	a0,-1
   108a0:	00008067          	ret

00000000000108a4 <chmod>:
chmod():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:391
// Stub.

int chmod(const char* path, mode_t mode)
{
  return -1;
}
   108a4:	fff00513          	li	a0,-1
   108a8:	00008067          	ret

00000000000108ac <chdir>:
chdir():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:401
// Stub.

int chdir(const char* path)
{
  return -1;
}
   108ac:	fff00513          	li	a0,-1
   108b0:	00008067          	ret

00000000000108b4 <getcwd>:
getcwd():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:411
// Stub.

char* getcwd(char* buf, size_t size)
{
  return NULL;
}
   108b4:	00000513          	li	a0,0
   108b8:	00008067          	ret

00000000000108bc <sysconf>:
sysconf():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:420
//----------------------------------------------------------------------
// Get configurable system variables

long sysconf(int name)
{
  switch(name)
   108bc:	00200793          	li	a5,2
   108c0:	00f51863          	bne	a0,a5,108d0 <sysconf+0x14>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:423
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
   108c4:	000f4537          	lui	a0,0xf4
   108c8:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xe2530>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:427
  }

  return -1;
}
   108cc:	00008067          	ret
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:426
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
  }

  return -1;
   108d0:	fff00513          	li	a0,-1
   108d4:	00008067          	ret

00000000000108d8 <sbrk>:
sbrk():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
void* sbrk(ptrdiff_t incr)
{
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   108d8:	8201b703          	ld	a4,-2016(gp) # 11530 <_fbss>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:438
// on this, it is useful to have a working implementation. The following
// is suggested by the newlib docs and suffices for a standalone
// system.

void* sbrk(ptrdiff_t incr)
{
   108dc:	00050793          	mv	a5,a0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   108e0:	00071663          	bnez	a4,108ec <sbrk+0x14>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:443
    heap_end = (long)_end;
   108e4:	87818713          	addi	a4,gp,-1928 # 11588 <_end>
   108e8:	82e1b023          	sd	a4,-2016(gp) # 11530 <_fbss>
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   108ec:	00e78533          	add	a0,a5,a4
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   108f0:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   108f4:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   108f8:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   108fc:	0d600893          	li	a7,214
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10900:	00000073          	ecall
   10904:	c60548e3          	bltz	a0,10574 <__syscall_error>
sbrk():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   10908:	8201b683          	ld	a3,-2016(gp) # 11530 <_fbss>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:445
    return (void*)-1;
   1090c:	fff00713          	li	a4,-1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
    heap_end = (long)_end;
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   10910:	00d787b3          	add	a5,a5,a3
   10914:	00f51663          	bne	a0,a5,10920 <sbrk+0x48>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:447
    return (void*)-1;

  heap_end += incr;
   10918:	82a1b023          	sd	a0,-2016(gp) # 11530 <_fbss>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:448
  return heap_end - incr;
   1091c:	00068713          	mv	a4,a3
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:449
}
   10920:	00070513          	mv	a0,a4
   10924:	00008067          	ret

0000000000010928 <_exit>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   10928:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   1092c:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10930:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10934:	05d00893          	li	a7,93
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10938:	00000073          	ecall
   1093c:	c2054ce3          	bltz	a0,10574 <__syscall_error>
   10940:	0000006f          	j	10940 <_exit+0x18>

0000000000010944 <__errno>:
__errno():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/errno/errno.c:14

int *
__errno ()
{
  return &_REENT->_errno;
}
   10944:	8181b503          	ld	a0,-2024(gp) # 11528 <_impure_ptr>
   10948:	00008067          	ret
