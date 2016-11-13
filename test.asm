
test:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
_ftext():
   10000:	00002197          	auipc	gp,0x2
   10004:	e2018193          	addi	gp,gp,-480 # 11e20 <_gp>
   10008:	00001297          	auipc	t0,0x1
   1000c:	63028293          	addi	t0,t0,1584 # 11638 <_fbss>
   10010:	00001317          	auipc	t1,0x1
   10014:	7b030313          	addi	t1,t1,1968 # 117c0 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	2b450513          	addi	a0,a0,692 # 102d8 <__libc_fini_array>
   1002c:	268000ef          	jal	10294 <atexit>
   10030:	304000ef          	jal	10334 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	2640006f          	j	102a8 <exit>

0000000000010048 <_fini>:
_init():
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
deregister_tm_clones():
   1004c:	00011537          	lui	a0,0x11
   10050:	000117b7          	lui	a5,0x11
   10054:	61850713          	addi	a4,a0,1560 # 11618 <__TMC_END__>
   10058:	61f78793          	addi	a5,a5,1567 # 1161f <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	61850513          	addi	a0,a0,1560
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
register_tm_clones():
   10080:	00011537          	lui	a0,0x11
   10084:	000117b7          	lui	a5,0x11
   10088:	61850593          	addi	a1,a0,1560 # 11618 <__TMC_END__>
   1008c:	61878793          	addi	a5,a5,1560 # 11618 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	61850513          	addi	a0,a0,1560
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8201c783          	lbu	a5,-2016(gp) # 11640 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00011537          	lui	a0,0x11
   100e8:	a7050513          	addi	a0,a0,-1424 # 10a70 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	82f18023          	sb	a5,-2016(gp) # 11640 <_bss_start>
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
   10124:	82818593          	addi	a1,gp,-2008 # 11648 <object.3092>
   10128:	a7050513          	addi	a0,a0,-1424 # 10a70 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	000117b7          	lui	a5,0x11
   10138:	ec078513          	addi	a0,a5,-320 # 10ec0 <__JCR_END__>
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
/home/davidguan/a-simple-riscv-simulator/matrix.c:7
#include <string.h>
int a[5][5];
int b[5][5];
int c[5][5];
int main()
{
   10164:	fe010113          	addi	sp,sp,-32
   10168:	00813c23          	sd	s0,24(sp)
   1016c:	02010413          	addi	s0,sp,32
/home/davidguan/a-simple-riscv-simulator/matrix.c:10
	int num,i,j,k;
	double lala;
	num = 5;
   10170:	00500793          	li	a5,5
   10174:	fef42023          	sw	a5,-32(s0)
/home/davidguan/a-simple-riscv-simulator/matrix.c:11
	for(i = 0; i < num; ++i)
   10178:	fe042623          	sw	zero,-20(s0)
   1017c:	0f80006f          	j	10274 <main+0x110>
/home/davidguan/a-simple-riscv-simulator/matrix.c:12
		for(j = 0; j < num; ++j)
   10180:	fe042423          	sw	zero,-24(s0)
   10184:	0d80006f          	j	1025c <main+0xf8>
/home/davidguan/a-simple-riscv-simulator/matrix.c:13
			for(k = 0; k < num; ++k)
   10188:	fe042223          	sw	zero,-28(s0)
   1018c:	0b80006f          	j	10244 <main+0xe0>
/home/davidguan/a-simple-riscv-simulator/matrix.c:14 (discriminator 3)
				c[i][j] += a[i][k]*b[k][j];
   10190:	fe842603          	lw	a2,-24(s0)
   10194:	fec42703          	lw	a4,-20(s0)
   10198:	00070793          	mv	a5,a4
   1019c:	00279793          	slli	a5,a5,0x2
   101a0:	00e787b3          	add	a5,a5,a4
   101a4:	00c787b3          	add	a5,a5,a2
   101a8:	00279713          	slli	a4,a5,0x2
   101ac:	8d018793          	addi	a5,gp,-1840 # 116f0 <c>
   101b0:	00f707b3          	add	a5,a4,a5
   101b4:	0007a683          	lw	a3,0(a5) # 0 <_ftext-0x10000>
   101b8:	fe442583          	lw	a1,-28(s0)
   101bc:	fec42703          	lw	a4,-20(s0)
   101c0:	00070793          	mv	a5,a4
   101c4:	00279793          	slli	a5,a5,0x2
   101c8:	00e787b3          	add	a5,a5,a4
   101cc:	00b787b3          	add	a5,a5,a1
   101d0:	00279713          	slli	a4,a5,0x2
   101d4:	93818793          	addi	a5,gp,-1736 # 11758 <a>
   101d8:	00f707b3          	add	a5,a4,a5
   101dc:	0007a603          	lw	a2,0(a5)
   101e0:	fe842503          	lw	a0,-24(s0)
   101e4:	fe442703          	lw	a4,-28(s0)
   101e8:	00070793          	mv	a5,a4
   101ec:	00279793          	slli	a5,a5,0x2
   101f0:	00e787b3          	add	a5,a5,a4
   101f4:	00a787b3          	add	a5,a5,a0
   101f8:	00279713          	slli	a4,a5,0x2
   101fc:	86818793          	addi	a5,gp,-1944 # 11688 <b>
   10200:	00f707b3          	add	a5,a4,a5
   10204:	0007a783          	lw	a5,0(a5)
   10208:	02f607bb          	mulw	a5,a2,a5
   1020c:	00f686bb          	addw	a3,a3,a5
   10210:	fe842583          	lw	a1,-24(s0)
   10214:	fec42703          	lw	a4,-20(s0)
   10218:	00070793          	mv	a5,a4
   1021c:	00279793          	slli	a5,a5,0x2
   10220:	00e787b3          	add	a5,a5,a4
   10224:	00b787b3          	add	a5,a5,a1
   10228:	00279713          	slli	a4,a5,0x2
   1022c:	8d018793          	addi	a5,gp,-1840 # 116f0 <c>
   10230:	00f707b3          	add	a5,a4,a5
   10234:	00d7a023          	sw	a3,0(a5)
/home/davidguan/a-simple-riscv-simulator/matrix.c:13
	int num,i,j,k;
	double lala;
	num = 5;
	for(i = 0; i < num; ++i)
		for(j = 0; j < num; ++j)
			for(k = 0; k < num; ++k)
   10238:	fe442783          	lw	a5,-28(s0)
   1023c:	0017879b          	addiw	a5,a5,1
   10240:	fef42223          	sw	a5,-28(s0)
/home/davidguan/a-simple-riscv-simulator/matrix.c:13 (discriminator 1)
   10244:	fe442703          	lw	a4,-28(s0)
   10248:	fe042783          	lw	a5,-32(s0)
   1024c:	f4f742e3          	blt	a4,a5,10190 <main+0x2c>
/home/davidguan/a-simple-riscv-simulator/matrix.c:12 (discriminator 2)
{
	int num,i,j,k;
	double lala;
	num = 5;
	for(i = 0; i < num; ++i)
		for(j = 0; j < num; ++j)
   10250:	fe842783          	lw	a5,-24(s0)
   10254:	0017879b          	addiw	a5,a5,1
   10258:	fef42423          	sw	a5,-24(s0)
/home/davidguan/a-simple-riscv-simulator/matrix.c:12 (discriminator 1)
   1025c:	fe842703          	lw	a4,-24(s0)
   10260:	fe042783          	lw	a5,-32(s0)
   10264:	f2f742e3          	blt	a4,a5,10188 <main+0x24>
/home/davidguan/a-simple-riscv-simulator/matrix.c:11 (discriminator 2)
int main()
{
	int num,i,j,k;
	double lala;
	num = 5;
	for(i = 0; i < num; ++i)
   10268:	fec42783          	lw	a5,-20(s0)
   1026c:	0017879b          	addiw	a5,a5,1
   10270:	fef42623          	sw	a5,-20(s0)
/home/davidguan/a-simple-riscv-simulator/matrix.c:11 (discriminator 1)
   10274:	fec42703          	lw	a4,-20(s0)
   10278:	fe042783          	lw	a5,-32(s0)
   1027c:	f0f742e3          	blt	a4,a5,10180 <main+0x1c>
/home/davidguan/a-simple-riscv-simulator/matrix.c:15
		for(j = 0; j < num; ++j)
			for(k = 0; k < num; ++k)
				c[i][j] += a[i][k]*b[k][j];
	return 0;
   10280:	00000793          	li	a5,0
/home/davidguan/a-simple-riscv-simulator/matrix.c:16
}
   10284:	00078513          	mv	a0,a5
   10288:	01813403          	ld	s0,24(sp)
   1028c:	02010113          	addi	sp,sp,32
   10290:	00008067          	ret

0000000000010294 <atexit>:
atexit():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/atexit.c:65
int
_DEFUN (atexit,
	(fn),
	_VOID _EXFNPTR(fn, (_VOID)))
{
  return __register_exitproc (__et_atexit, fn, NULL, NULL);
   10294:	00050593          	mv	a1,a0
   10298:	00000693          	li	a3,0
   1029c:	00000613          	li	a2,0
   102a0:	00000513          	li	a0,0
   102a4:	1300006f          	j	103d4 <__register_exitproc>

00000000000102a8 <exit>:
exit():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:60
 */

void
_DEFUN (exit, (code),
	int code)
{
   102a8:	ff010113          	addi	sp,sp,-16
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:66
#ifdef _LITE_EXIT
  /* Refer to comments in __atexit.c for more details of lite exit.  */
  void __call_exitprocs _PARAMS ((int, _PTR)) __attribute__((weak));
  if (__call_exitprocs)
#endif
    __call_exitprocs (code, NULL);
   102ac:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:60
 */

void
_DEFUN (exit, (code),
	int code)
{
   102b0:	00813023          	sd	s0,0(sp)
   102b4:	00113423          	sd	ra,8(sp)
   102b8:	00050413          	mv	s0,a0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:66
#ifdef _LITE_EXIT
  /* Refer to comments in __atexit.c for more details of lite exit.  */
  void __call_exitprocs _PARAMS ((int, _PTR)) __attribute__((weak));
  if (__call_exitprocs)
#endif
    __call_exitprocs (code, NULL);
   102bc:	22c000ef          	jal	104e8 <__call_exitprocs>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:68

  if (_GLOBAL_REENT->__cleanup)
   102c0:	8081b503          	ld	a0,-2040(gp) # 11628 <_global_impure_ptr>
   102c4:	05853783          	ld	a5,88(a0)
   102c8:	00078463          	beqz	a5,102d0 <exit+0x28>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:69
    (*_GLOBAL_REENT->__cleanup) (_GLOBAL_REENT);
   102cc:	000780e7          	jalr	a5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:70
  _exit (code);
   102d0:	00040513          	mv	a0,s0
   102d4:	75c000ef          	jal	10a30 <_exit>

00000000000102d8 <__libc_fini_array>:
__libc_fini_array():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:25
extern void _fini (void);

/* Run all the cleanup routines.  */
void
__libc_fini_array (void)
{
   102d8:	fe010113          	addi	sp,sp,-32
   102dc:	00813823          	sd	s0,16(sp)
   102e0:	00913423          	sd	s1,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:29
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
   102e4:	00011437          	lui	s0,0x11
   102e8:	000114b7          	lui	s1,0x11
   102ec:	a6848493          	addi	s1,s1,-1432 # 10a68 <__init_array_end>
   102f0:	a7040413          	addi	s0,s0,-1424 # 10a70 <__fini_array_end>
   102f4:	40940433          	sub	s0,s0,s1
   102f8:	ff840793          	addi	a5,s0,-8
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:25
extern void _fini (void);

/* Run all the cleanup routines.  */
void
__libc_fini_array (void)
{
   102fc:	00113c23          	sd	ra,24(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:29
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
   10300:	40345413          	srai	s0,s0,0x3
   10304:	009784b3          	add	s1,a5,s1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:30
  for (i = count; i > 0; i--)
   10308:	00040c63          	beqz	s0,10320 <__libc_fini_array+0x48>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:31 (discriminator 3)
    __fini_array_start[i-1] ();
   1030c:	0004b783          	ld	a5,0(s1)
   10310:	fff40413          	addi	s0,s0,-1
   10314:	ff848493          	addi	s1,s1,-8
   10318:	000780e7          	jalr	a5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:30
{
  size_t count;
  size_t i;
  
  count = __fini_array_end - __fini_array_start;
  for (i = count; i > 0; i--)
   1031c:	fe0418e3          	bnez	s0,1030c <__libc_fini_array+0x34>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:34
    __fini_array_start[i-1] ();

  _fini ();
}
   10320:	01813083          	ld	ra,24(sp)
   10324:	01013403          	ld	s0,16(sp)
   10328:	00813483          	ld	s1,8(sp)
   1032c:	02010113          	addi	sp,sp,32
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/fini.c:33
  
  count = __fini_array_end - __fini_array_start;
  for (i = count; i > 0; i--)
    __fini_array_start[i-1] ();

  _fini ();
   10330:	d19ff06f          	j	10048 <_fini>

0000000000010334 <__libc_init_array>:
__libc_init_array():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   10334:	fe010113          	addi	sp,sp,-32
   10338:	00813823          	sd	s0,16(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   1033c:	000117b7          	lui	a5,0x11
   10340:	00011437          	lui	s0,0x11
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   10344:	01213023          	sd	s2,0(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   10348:	a6078793          	addi	a5,a5,-1440 # 10a60 <_etext>
   1034c:	a6040913          	addi	s2,s0,-1440 # 10a60 <_etext>
   10350:	41278933          	sub	s2,a5,s2
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:29
extern void _init (void);

/* Iterate over all the init routines.  */
void
__libc_init_array (void)
{
   10354:	00913423          	sd	s1,8(sp)
   10358:	00113c23          	sd	ra,24(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:33
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
   1035c:	40395913          	srai	s2,s2,0x3
   10360:	a6040413          	addi	s0,s0,-1440
   10364:	00000493          	li	s1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
  for (i = 0; i < count; i++)
   10368:	00090c63          	beqz	s2,10380 <__libc_init_array+0x4c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:35 (discriminator 3)
    __preinit_array_start[i] ();
   1036c:	00043783          	ld	a5,0(s0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
{
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
  for (i = 0; i < count; i++)
   10370:	00148493          	addi	s1,s1,1
   10374:	00840413          	addi	s0,s0,8
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:35
    __preinit_array_start[i] ();
   10378:	000780e7          	jalr	a5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:34
{
  size_t count;
  size_t i;

  count = __preinit_array_end - __preinit_array_start;
  for (i = 0; i < count; i++)
   1037c:	fe9918e3          	bne	s2,s1,1036c <__libc_init_array+0x38>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:37
    __preinit_array_start[i] ();

  _init ();
   10380:	cc9ff0ef          	jal	10048 <_fini>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:39

  count = __init_array_end - __init_array_start;
   10384:	00011437          	lui	s0,0x11
   10388:	000117b7          	lui	a5,0x11
   1038c:	a6040913          	addi	s2,s0,-1440 # 10a60 <_etext>
   10390:	a6878793          	addi	a5,a5,-1432 # 10a68 <__init_array_end>
   10394:	41278933          	sub	s2,a5,s2
   10398:	40395913          	srai	s2,s2,0x3
   1039c:	a6040413          	addi	s0,s0,-1440
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
  for (i = 0; i < count; i++)
   103a0:	00000493          	li	s1,0
   103a4:	00090c63          	beqz	s2,103bc <__libc_init_array+0x88>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:41 (discriminator 3)
    __init_array_start[i] ();
   103a8:	00043783          	ld	a5,0(s0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
    __preinit_array_start[i] ();

  _init ();

  count = __init_array_end - __init_array_start;
  for (i = 0; i < count; i++)
   103ac:	00148493          	addi	s1,s1,1
   103b0:	00840413          	addi	s0,s0,8
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:41
    __init_array_start[i] ();
   103b4:	000780e7          	jalr	a5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:40
    __preinit_array_start[i] ();

  _init ();

  count = __init_array_end - __init_array_start;
  for (i = 0; i < count; i++)
   103b8:	fe9918e3          	bne	s2,s1,103a8 <__libc_init_array+0x74>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/misc/init.c:42
    __init_array_start[i] ();
}
   103bc:	01813083          	ld	ra,24(sp)
   103c0:	01013403          	ld	s0,16(sp)
   103c4:	00813483          	ld	s1,8(sp)
   103c8:	00013903          	ld	s2,0(sp)
   103cc:	02010113          	addi	sp,sp,32
   103d0:	00008067          	ret

00000000000103d4 <__register_exitproc>:
__register_exitproc():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   103d4:	fd010113          	addi	sp,sp,-48
   103d8:	02813023          	sd	s0,32(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   103dc:	8081b403          	ld	s0,-2040(gp) # 11628 <_global_impure_ptr>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   103e0:	00913c23          	sd	s1,24(sp)
   103e4:	00050493          	mv	s1,a0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   103e8:	1f843503          	ld	a0,504(s0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   103ec:	01213823          	sd	s2,16(sp)
   103f0:	01313423          	sd	s3,8(sp)
   103f4:	01413023          	sd	s4,0(sp)
   103f8:	02113423          	sd	ra,40(sp)
   103fc:	00058913          	mv	s2,a1
   10400:	00060a13          	mv	s4,a2
   10404:	00068993          	mv	s3,a3
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:81
#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
   10408:	0c050663          	beqz	a0,104d4 <__register_exitproc+0x100>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:83
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
  if (p->_ind >= _ATEXIT_SIZE)
   1040c:	00852703          	lw	a4,8(a0)
   10410:	01f00793          	li	a5,31
   10414:	0017059b          	addiw	a1,a4,1
   10418:	04e7d063          	ble	a4,a5,10458 <__register_exitproc+0x84>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:90
#ifndef _ATEXIT_DYNAMIC_ALLOC
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
   1041c:	000007b7          	lui	a5,0x0
   10420:	00078793          	mv	a5,a5
   10424:	0a078e63          	beqz	a5,104e0 <__register_exitproc+0x10c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:93
	return -1;

      p = (struct _atexit *) malloc (sizeof *p);
   10428:	31800513          	li	a0,792
   1042c:	ffff0317          	auipc	t1,0xffff0
   10430:	bd4300e7          	jalr	t1,-1068 # 0 <_ftext-0x10000>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:94
      if (p == NULL)
   10434:	0a050663          	beqz	a0,104e0 <__register_exitproc+0x10c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   10438:	1f843783          	ld	a5,504(s0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:101
#ifndef __SINGLE_THREAD__
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
   1043c:	00052423          	sw	zero,8(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_next = _GLOBAL_ATEXIT;
      _GLOBAL_ATEXIT = p;
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
      p->_on_exit_args._is_cxa = 0;
   10440:	00100593          	li	a1,1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   10444:	00f53023          	sd	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:103
      _GLOBAL_ATEXIT = p;
   10448:	1ea43c23          	sd	a0,504(s0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:105
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
   1044c:	30052823          	sw	zero,784(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_on_exit_args._is_cxa = 0;
   10450:	30052a23          	sw	zero,788(a0)
   10454:	00000713          	li	a4,0
   10458:	00070793          	mv	a5,a4
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:113
      p->_on_exit_args_ptr = NULL;
#endif
#endif
    }

  if (type != __et_atexit)
   1045c:	02049e63          	bnez	s1,10498 <__register_exitproc+0xc4>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:142
      args->_fntypes |= (1 << p->_ind);
      args->_dso_handle[p->_ind] = d;
      if (type == __et_cxa)
	args->_is_cxa |= (1 << p->_ind);
    }
  p->_fns[p->_ind++] = fn;
   10460:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   10464:	00379793          	slli	a5,a5,0x3
   10468:	00b52423          	sw	a1,8(a0)
   1046c:	00f50533          	add	a0,a0,a5
   10470:	01253023          	sd	s2,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:146
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif
  return 0;
   10474:	00000513          	li	a0,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:147
}
   10478:	02813083          	ld	ra,40(sp)
   1047c:	02013403          	ld	s0,32(sp)
   10480:	01813483          	ld	s1,24(sp)
   10484:	01013903          	ld	s2,16(sp)
   10488:	00813983          	ld	s3,8(sp)
   1048c:	00013a03          	ld	s4,0(sp)
   10490:	03010113          	addi	sp,sp,48
   10494:	00008067          	ret
   10498:	00371813          	slli	a6,a4,0x3
   1049c:	01050833          	add	a6,a0,a6
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:136
	  p->_on_exit_args_ptr = args;
	}
#else
      args = &p->_on_exit_args;
#endif
      args->_fnargs[p->_ind] = arg;
   104a0:	11483823          	sd	s4,272(a6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:137
      args->_fntypes |= (1 << p->_ind);
   104a4:	31052883          	lw	a7,784(a0)
   104a8:	00100613          	li	a2,1
   104ac:	00e6173b          	sllw	a4,a2,a4
   104b0:	00e8e633          	or	a2,a7,a4
   104b4:	30c52823          	sw	a2,784(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:138
      args->_dso_handle[p->_ind] = d;
   104b8:	21383823          	sd	s3,528(a6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:139
      if (type == __et_cxa)
   104bc:	00200693          	li	a3,2
   104c0:	fad490e3          	bne	s1,a3,10460 <__register_exitproc+0x8c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:140
	args->_is_cxa |= (1 << p->_ind);
   104c4:	31452683          	lw	a3,788(a0)
   104c8:	00e6e733          	or	a4,a3,a4
   104cc:	30e52a23          	sw	a4,788(a0)
   104d0:	f91ff06f          	j	10460 <__register_exitproc+0x8c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:82
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
   104d4:	20040513          	addi	a0,s0,512
   104d8:	1ea43c23          	sd	a0,504(s0)
   104dc:	f31ff06f          	j	1040c <__register_exitproc+0x38>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:91
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
	return -1;
   104e0:	fff00513          	li	a0,-1
   104e4:	f95ff06f          	j	10478 <__register_exitproc+0xa4>

00000000000104e8 <__call_exitprocs>:
__call_exitprocs():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   104e8:	fa010113          	addi	sp,sp,-96
   104ec:	03413823          	sd	s4,48(sp)
   104f0:	8081ba03          	ld	s4,-2040(gp) # 11628 <_global_impure_ptr>
   104f4:	03313c23          	sd	s3,56(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   104f8:	000009b7          	lui	s3,0x0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   104fc:	04913423          	sd	s1,72(sp)
   10500:	05213023          	sd	s2,64(sp)
   10504:	03513423          	sd	s5,40(sp)
   10508:	01713c23          	sd	s7,24(sp)
   1050c:	01813823          	sd	s8,16(sp)
   10510:	04113c23          	sd	ra,88(sp)
   10514:	04813823          	sd	s0,80(sp)
   10518:	03613023          	sd	s6,32(sp)
   1051c:	01913423          	sd	s9,8(sp)
   10520:	01a13023          	sd	s10,0(sp)
   10524:	00050913          	mv	s2,a0
   10528:	00058b93          	mv	s7,a1
   1052c:	1f8a0a93          	addi	s5,s4,504
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   10530:	00100493          	li	s1,1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10534:	fff00c13          	li	s8,-1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   10538:	00098993          	mv	s3,s3
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:83
  __lock_acquire_recursive(__atexit_lock);
#endif

 restart:

  p = _GLOBAL_ATEXIT;
   1053c:	1f8a3b03          	ld	s6,504(s4)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10540:	0c0b0663          	beqz	s6,1060c <__call_exitprocs+0x124>
   10544:	000a8d13          	mv	s10,s5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10548:	008b2403          	lw	s0,8(s6)
   1054c:	fff4041b          	addiw	s0,s0,-1
   10550:	02045263          	bgez	s0,10574 <__call_exitprocs+0x8c>
   10554:	08c0006f          	j	105e0 <__call_exitprocs+0xf8>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99 (discriminator 2)
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   10558:	02040793          	addi	a5,s0,32
   1055c:	00379793          	slli	a5,a5,0x3
   10560:	00fb07b3          	add	a5,s6,a5
   10564:	1107b783          	ld	a5,272(a5)
   10568:	00fb8a63          	beq	s7,a5,1057c <__call_exitprocs+0x94>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   1056c:	fff4041b          	addiw	s0,s0,-1
   10570:	07840863          	beq	s0,s8,105e0 <__call_exitprocs+0xf8>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   10574:	00040713          	mv	a4,s0
   10578:	fe0b90e3          	bnez	s7,10558 <__call_exitprocs+0x70>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
   1057c:	008b2783          	lw	a5,8(s6)
   10580:	00371713          	slli	a4,a4,0x3
   10584:	00eb0733          	add	a4,s6,a4
   10588:	fff7879b          	addiw	a5,a5,-1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:104
	  if (d && (!args || args->_dso_handle[n] != d))
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
   1058c:	01073683          	ld	a3,16(a4)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	  if (n == p->_ind - 1)
   10590:	0a878e63          	beq	a5,s0,1064c <__call_exitprocs+0x164>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:108
	    p->_ind--;
	  else
	    p->_fns[n] = NULL;
   10594:	00073823          	sd	zero,16(a4)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:111

	  /* Skip functions that have already been called.  */
	  if (!fn)
   10598:	fc068ae3          	beqz	a3,1056c <__call_exitprocs+0x84>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   1059c:	310b2783          	lw	a5,784(s6)
   105a0:	0084963b          	sllw	a2,s1,s0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:114

	  /* Skip functions that have already been called.  */
	  if (!fn)
	    continue;

	  ind = p->_ind;
   105a4:	008b2c83          	lw	s9,8(s6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   105a8:	00f677b3          	and	a5,a2,a5
   105ac:	08078c63          	beqz	a5,10644 <__call_exitprocs+0x15c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:119
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
   105b0:	314b2783          	lw	a5,788(s6)
   105b4:	00f67633          	and	a2,a2,a5
   105b8:	08061e63          	bnez	a2,10654 <__call_exitprocs+0x16c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:120
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
   105bc:	11073583          	ld	a1,272(a4)
   105c0:	00090513          	mv	a0,s2
   105c4:	000680e7          	jalr	a3
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);

	  /* The function we called call atexit and registered another
	     function (or functions).  Call these new functions before
	     continuing with the already registered functions.  */
	  if (ind != p->_ind || *lastp != p)
   105c8:	008b2783          	lw	a5,8(s6)
   105cc:	f79798e3          	bne	a5,s9,1053c <__call_exitprocs+0x54>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127 (discriminator 1)
   105d0:	000d3783          	ld	a5,0(s10)
   105d4:	f76794e3          	bne	a5,s6,1053c <__call_exitprocs+0x54>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   105d8:	fff4041b          	addiw	s0,s0,-1
   105dc:	f9841ce3          	bne	s0,s8,10574 <__call_exitprocs+0x8c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   105e0:	02098663          	beqz	s3,1060c <__call_exitprocs+0x124>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141
	break;

      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
   105e4:	008b2783          	lw	a5,8(s6)
   105e8:	06079c63          	bnez	a5,10660 <__call_exitprocs+0x178>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141 (discriminator 1)
   105ec:	000b3783          	ld	a5,0(s6)
   105f0:	08078263          	beqz	a5,10674 <__call_exitprocs+0x18c>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
	  *lastp = p->_next;
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   105f4:	000b0513          	mv	a0,s6
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:144
      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
	{
	  /* Remove empty block from the list.  */
	  *lastp = p->_next;
   105f8:	00fd3023          	sd	a5,0(s10)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   105fc:	ffff0317          	auipc	t1,0xffff0
   10600:	a04300e7          	jalr	t1,-1532 # 0 <_ftext-0x10000>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:150
	  p = *lastp;
   10604:	000d3b03          	ld	s6,0(s10)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10608:	f40b10e3          	bnez	s6,10548 <__call_exitprocs+0x60>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:163
    }
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif

}
   1060c:	05813083          	ld	ra,88(sp)
   10610:	05013403          	ld	s0,80(sp)
   10614:	04813483          	ld	s1,72(sp)
   10618:	04013903          	ld	s2,64(sp)
   1061c:	03813983          	ld	s3,56(sp)
   10620:	03013a03          	ld	s4,48(sp)
   10624:	02813a83          	ld	s5,40(sp)
   10628:	02013b03          	ld	s6,32(sp)
   1062c:	01813b83          	ld	s7,24(sp)
   10630:	01013c03          	ld	s8,16(sp)
   10634:	00813c83          	ld	s9,8(sp)
   10638:	00013d03          	ld	s10,0(sp)
   1063c:	06010113          	addi	sp,sp,96
   10640:	00008067          	ret
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:118

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
   10644:	000680e7          	jalr	a3
   10648:	f81ff06f          	j	105c8 <__call_exitprocs+0xe0>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:106

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
	    p->_ind--;
   1064c:	008b2423          	sw	s0,8(s6)
   10650:	f49ff06f          	j	10598 <__call_exitprocs+0xb0>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:122
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
	  else
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);
   10654:	11073503          	ld	a0,272(a4)
   10658:	000680e7          	jalr	a3
   1065c:	f6dff06f          	j	105c8 <__call_exitprocs+0xe0>
   10660:	000b3783          	ld	a5,0(s6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:154
	  free (p);
	  p = *lastp;
	}
      else
	{
	  lastp = &p->_next;
   10664:	000b0d13          	mv	s10,s6
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:155
	  p = p->_next;
   10668:	00078b13          	mv	s6,a5
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   1066c:	ec0b1ee3          	bnez	s6,10548 <__call_exitprocs+0x60>
   10670:	f9dff06f          	j	1060c <__call_exitprocs+0x124>
   10674:	00000793          	li	a5,0
   10678:	fedff06f          	j	10664 <__call_exitprocs+0x17c>

000000000001067c <__syscall_error>:
__syscall_error():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:95

#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
   1067c:	ff010113          	addi	sp,sp,-16
   10680:	00113423          	sd	ra,8(sp)
   10684:	00813023          	sd	s0,0(sp)
   10688:	00050413          	mv	s0,a0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
  errno = -a0;
   1068c:	3c0000ef          	jal	10a4c <__errno>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   10690:	00813083          	ld	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
  errno = -a0;
   10694:	408007bb          	negw	a5,s0
   10698:	00f52023          	sw	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   1069c:	00013403          	ld	s0,0(sp)
   106a0:	fff00513          	li	a0,-1
   106a4:	01010113          	addi	sp,sp,16
   106a8:	00008067          	ret

00000000000106ac <open>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   106ac:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106b0:	40000893          	li	a7,1024
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106b4:	00000073          	ecall
   106b8:	fc0542e3          	bltz	a0,1067c <__syscall_error>
open():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:103

int open(const char* name, int flags, int mode)
{
  return syscall_errno(SYS_open, name, flags, mode, 0);
}
   106bc:	0005051b          	sext.w	a0,a0
   106c0:	00008067          	ret

00000000000106c4 <openat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   106c4:	03800893          	li	a7,56
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106c8:	00000073          	ecall
   106cc:	fa0548e3          	bltz	a0,1067c <__syscall_error>
openat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:112
//------------------------------------------------------------------------
// Open file relative to given directory
int openat(int dirfd, const char* name, int flags, int mode)
{
  return syscall_errno(SYS_openat, dirfd, name, flags, mode);
}
   106d0:	0005051b          	sext.w	a0,a0
   106d4:	00008067          	ret

00000000000106d8 <lseek>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   106d8:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106dc:	03e00893          	li	a7,62
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106e0:	00000073          	ecall
   106e4:	f8054ce3          	bltz	a0,1067c <__syscall_error>
lseek():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:122
// Set position in a file.

off_t lseek(int file, off_t ptr, int dir)
{
  return syscall_errno(SYS_lseek, file, ptr, dir, 0);
}
   106e8:	00008067          	ret

00000000000106ec <read>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   106ec:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   106f0:	03f00893          	li	a7,63
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   106f4:	00000073          	ecall
   106f8:	f80542e3          	bltz	a0,1067c <__syscall_error>
read():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:132
// Read from a file.

ssize_t read(int file, void* ptr, size_t len)
{
  return syscall_errno(SYS_read, file, ptr, len, 0);
}
   106fc:	00008067          	ret

0000000000010700 <write>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   10700:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10704:	04000893          	li	a7,64
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10708:	00000073          	ecall
   1070c:	f60548e3          	bltz	a0,1067c <__syscall_error>
write():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:142
// Write to a file.

ssize_t write(int file, const void* ptr, size_t len)
{
  return syscall_errno(SYS_write, file, ptr, len, 0);
}
   10710:	00008067          	ret

0000000000010714 <fstat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   10714:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10718:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1071c:	05000893          	li	a7,80
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10720:	00000073          	ecall
   10724:	f4054ce3          	bltz	a0,1067c <__syscall_error>
fstat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:153
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
}
   10728:	0005051b          	sext.w	a0,a0
   1072c:	00008067          	ret

0000000000010730 <stat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   10730:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10734:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10738:	40e00893          	li	a7,1038
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1073c:	00000073          	ecall
   10740:	f2054ee3          	bltz	a0,1067c <__syscall_error>
stat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:163
// Status of a file (by name).

int stat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_stat, file, st, 0, 0);
}
   10744:	0005051b          	sext.w	a0,a0
   10748:	00008067          	ret

000000000001074c <lstat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   1074c:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10750:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10754:	40f00893          	li	a7,1039
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10758:	00000073          	ecall
   1075c:	f20540e3          	bltz	a0,1067c <__syscall_error>
lstat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:173
// Status of a link (by name).

int lstat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_lstat, file, st, 0, 0);
}
   10760:	0005051b          	sext.w	a0,a0
   10764:	00008067          	ret

0000000000010768 <fstatat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   10768:	04f00893          	li	a7,79
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1076c:	00000073          	ecall
   10770:	f00546e3          	bltz	a0,1067c <__syscall_error>
fstatat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:183
// Status of a file (by name) in a given directory.

int fstatat(int dirfd, const char* file, struct stat* st, int flags)
{
  return syscall_errno(SYS_fstatat, dirfd, file, st, flags);
}
   10774:	0005051b          	sext.w	a0,a0
   10778:	00008067          	ret

000000000001077c <access>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   1077c:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10780:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10784:	40900893          	li	a7,1033
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10788:	00000073          	ecall
   1078c:	ee0548e3          	bltz	a0,1067c <__syscall_error>
access():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:193
// Permissions of a file (by name).

int access(const char* file, int mode)
{
  return syscall_errno(SYS_access, file, mode, 0, 0);
}
   10790:	0005051b          	sext.w	a0,a0
   10794:	00008067          	ret

0000000000010798 <faccessat>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   10798:	03000893          	li	a7,48
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1079c:	00000073          	ecall
   107a0:	ec054ee3          	bltz	a0,1067c <__syscall_error>
faccessat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:203
// Permissions of a file (by name) in a given directory.

int faccessat(int dirfd, const char* file, int mode, int flags)
{
  return syscall_errno(SYS_faccessat, dirfd, file, mode, flags);
}
   107a4:	0005051b          	sext.w	a0,a0
   107a8:	00008067          	ret

00000000000107ac <close>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   107ac:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   107b0:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   107b4:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   107b8:	03900893          	li	a7,57
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   107bc:	00000073          	ecall
   107c0:	ea054ee3          	bltz	a0,1067c <__syscall_error>
close():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:213
// Close a file.

int close(int file) 
{
  return syscall_errno(SYS_close, file, 0, 0, 0);
}
   107c4:	0005051b          	sext.w	a0,a0
   107c8:	00008067          	ret

00000000000107cc <link>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   107cc:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   107d0:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   107d4:	40100893          	li	a7,1025
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   107d8:	00000073          	ecall
   107dc:	ea0540e3          	bltz	a0,1067c <__syscall_error>
link():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:223
// Establish a new name for an existing file.

int link(const char* old_name, const char* new_name)
{
  return syscall_errno(SYS_link, old_name, new_name, 0, 0);
}
   107e0:	0005051b          	sext.w	a0,a0
   107e4:	00008067          	ret

00000000000107e8 <unlink>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   107e8:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   107ec:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   107f0:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   107f4:	40200893          	li	a7,1026
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   107f8:	00000073          	ecall
   107fc:	e80540e3          	bltz	a0,1067c <__syscall_error>
unlink():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:233
// Remove a file's directory entry.

int unlink(const char* name)
{
  return syscall_errno(SYS_unlink, name, 0, 0, 0);
}
   10800:	0005051b          	sext.w	a0,a0
   10804:	00008067          	ret

0000000000010808 <execve>:
execve():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:242
//------------------------------------------------------------------------
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
   10808:	ff010113          	addi	sp,sp,-16
   1080c:	00113423          	sd	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
  errno = ENOMEM;
   10810:	23c000ef          	jal	10a4c <__errno>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   10814:	00813083          	ld	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
  errno = ENOMEM;
   10818:	00c00793          	li	a5,12
   1081c:	00f52023          	sw	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   10820:	01010113          	addi	sp,sp,16
   10824:	fff00513          	li	a0,-1
   10828:	00008067          	ret

000000000001082c <fork>:
fork():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:254
//------------------------------------------------------------------------
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
   1082c:	ff010113          	addi	sp,sp,-16
   10830:	00113423          	sd	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
  errno = EAGAIN;
   10834:	218000ef          	jal	10a4c <__errno>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   10838:	00813083          	ld	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
  errno = EAGAIN;
   1083c:	00b00793          	li	a5,11
   10840:	00f52023          	sw	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   10844:	01010113          	addi	sp,sp,16
   10848:	fff00513          	li	a0,-1
   1084c:	00008067          	ret

0000000000010850 <getpid>:
getpid():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:269
// system without processes just returns 1.

int getpid() 
{
  return 1;
}
   10850:	00100513          	li	a0,1
   10854:	00008067          	ret

0000000000010858 <kill>:
kill():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:278
//------------------------------------------------------------------------
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
   10858:	ff010113          	addi	sp,sp,-16
   1085c:	00113423          	sd	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
  errno = EINVAL;
   10860:	1ec000ef          	jal	10a4c <__errno>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   10864:	00813083          	ld	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
  errno = EINVAL;
   10868:	01600793          	li	a5,22
   1086c:	00f52023          	sw	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   10870:	01010113          	addi	sp,sp,16
   10874:	fff00513          	li	a0,-1
   10878:	00008067          	ret

000000000001087c <wait>:
wait():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:290
//------------------------------------------------------------------------
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
   1087c:	ff010113          	addi	sp,sp,-16
   10880:	00113423          	sd	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
  errno = ECHILD;
   10884:	1c8000ef          	jal	10a4c <__errno>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   10888:	00813083          	ld	ra,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
  errno = ECHILD;
   1088c:	00a00793          	li	a5,10
   10890:	00f52023          	sw	a5,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   10894:	01010113          	addi	sp,sp,16
   10898:	fff00513          	li	a0,-1
   1089c:	00008067          	ret

00000000000108a0 <isatty>:
isatty():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:303
// Query whether output stream is a terminal. For consistency with the
// other minimal implementations, which only support output to stdout,
// this minimal implementation is suggested by the newlib docs.

int isatty(int file)
{
   108a0:	f8010113          	addi	sp,sp,-128
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   108a4:	00010593          	mv	a1,sp
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   108a8:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   108ac:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   108b0:	05000893          	li	a7,80
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   108b4:	00000073          	ecall
   108b8:	dc0542e3          	bltz	a0,1067c <__syscall_error>
isatty():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   108bc:	fff00793          	li	a5,-1
fstat():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:152
// Status of an open file. The sys/stat.h header file required is
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
   108c0:	0005051b          	sext.w	a0,a0
isatty():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306

int isatty(int file)
{
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   108c4:	00f50863          	beq	a0,a5,108d4 <isatty+0x34>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306 (discriminator 1)
   108c8:	01012503          	lw	a0,16(sp)
   108cc:	40d5551b          	sraiw	a0,a0,0xd
   108d0:	00157513          	andi	a0,a0,1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:307 (discriminator 4)
}
   108d4:	08010113          	addi	sp,sp,128
   108d8:	00008067          	ret

00000000000108dc <times>:
times():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329

clock_t times(struct tms* buf)
{
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   108dc:	85818313          	addi	t1,gp,-1960 # 11678 <t0.2343>
   108e0:	00033703          	ld	a4,0(t1)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:326
// children's times to zero. Eventually we might want to separately
// account for user vs system time, but for now we just return the total
// number of cycles since starting the program.

clock_t times(struct tms* buf)
{
   108e4:	ff010113          	addi	sp,sp,-16
   108e8:	00050813          	mv	a6,a0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   108ec:	02071063          	bnez	a4,1090c <times+0x30>
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   108f0:	85818513          	addi	a0,gp,-1960 # 11678 <t0.2343>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   108f4:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   108f8:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   108fc:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10900:	0a900893          	li	a7,169
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10904:	00000073          	ecall
   10908:	d6054ae3          	bltz	a0,1067c <__syscall_error>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   1090c:	00010513          	mv	a0,sp
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   10910:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10914:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10918:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1091c:	0a900893          	li	a7,169
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10920:	00000073          	ecall
   10924:	d4054ce3          	bltz	a0,1067c <__syscall_error>
times():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10928:	00033703          	ld	a4,0(t1)
   1092c:	00013783          	ld	a5,0(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   10930:	fff00513          	li	a0,-1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   10934:	00083823          	sd	zero,16(a6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10938:	40e786b3          	sub	a3,a5,a4
   1093c:	000f47b7          	lui	a5,0xf4
   10940:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xe2420>
   10944:	02f68733          	mul	a4,a3,a5
   10948:	00833683          	ld	a3,8(t1)
   1094c:	00813783          	ld	a5,8(sp)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   10950:	00083c23          	sd	zero,24(a6)
   10954:	00083423          	sd	zero,8(a6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10958:	40d787b3          	sub	a5,a5,a3
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   1095c:	01010113          	addi	sp,sp,16
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   10960:	00f707b3          	add	a5,a4,a5
   10964:	00f83023          	sd	a5,0(a6)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   10968:	00008067          	ret

000000000001096c <gettimeofday>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   1096c:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10970:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10974:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10978:	0a900893          	li	a7,169
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1097c:	00000073          	ecall
   10980:	ce054ee3          	bltz	a0,1067c <__syscall_error>
gettimeofday():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:350
// Get the current time.  Only relatively correct.

int gettimeofday(struct timeval* tp, void* tzp)
{
  return syscall_errno(SYS_gettimeofday, tp, 0, 0, 0);
}
   10984:	0005051b          	sext.w	a0,a0
   10988:	00008067          	ret

000000000001098c <ftime>:
ftime():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:359
//----------------------------------------------------------------------
// Get the current time.  Only relatively correct.

int ftime(struct timeb* tp)
{
  tp->time = tp->millitm = 0;
   1098c:	00051423          	sh	zero,8(a0)
   10990:	00053023          	sd	zero,0(a0)
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:361
  return 0;
}
   10994:	00000513          	li	a0,0
   10998:	00008067          	ret

000000000001099c <utime>:
utime():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:371
// Stub.

int utime(const char* path, const struct utimbuf* times)
{
  return -1;
}
   1099c:	fff00513          	li	a0,-1
   109a0:	00008067          	ret

00000000000109a4 <chown>:
chown():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:381
// Stub.

int chown(const char* path, uid_t owner, gid_t group)
{
  return -1;
}
   109a4:	fff00513          	li	a0,-1
   109a8:	00008067          	ret

00000000000109ac <chmod>:
chmod():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:391
// Stub.

int chmod(const char* path, mode_t mode)
{
  return -1;
}
   109ac:	fff00513          	li	a0,-1
   109b0:	00008067          	ret

00000000000109b4 <chdir>:
chdir():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:401
// Stub.

int chdir(const char* path)
{
  return -1;
}
   109b4:	fff00513          	li	a0,-1
   109b8:	00008067          	ret

00000000000109bc <getcwd>:
getcwd():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:411
// Stub.

char* getcwd(char* buf, size_t size)
{
  return NULL;
}
   109bc:	00000513          	li	a0,0
   109c0:	00008067          	ret

00000000000109c4 <sysconf>:
sysconf():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:420
//----------------------------------------------------------------------
// Get configurable system variables

long sysconf(int name)
{
  switch(name)
   109c4:	00200793          	li	a5,2
   109c8:	00f51863          	bne	a0,a5,109d8 <sysconf+0x14>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:423
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
   109cc:	000f4537          	lui	a0,0xf4
   109d0:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xe2420>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:427
  }

  return -1;
}
   109d4:	00008067          	ret
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:426
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
  }

  return -1;
   109d8:	fff00513          	li	a0,-1
   109dc:	00008067          	ret

00000000000109e0 <sbrk>:
sbrk():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
void* sbrk(ptrdiff_t incr)
{
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   109e0:	8181b703          	ld	a4,-2024(gp) # 11638 <_fbss>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:438
// on this, it is useful to have a working implementation. The following
// is suggested by the newlib docs and suffices for a standalone
// system.

void* sbrk(ptrdiff_t incr)
{
   109e4:	00050793          	mv	a5,a0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   109e8:	00071663          	bnez	a4,109f4 <sbrk+0x14>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:443
    heap_end = (long)_end;
   109ec:	9a018713          	addi	a4,gp,-1632 # 117c0 <_end>
   109f0:	80e1bc23          	sd	a4,-2024(gp) # 11638 <_fbss>
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   109f4:	00e78533          	add	a0,a5,a4
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   109f8:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   109fc:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10a00:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10a04:	0d600893          	li	a7,214
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10a08:	00000073          	ecall
   10a0c:	c60548e3          	bltz	a0,1067c <__syscall_error>
sbrk():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   10a10:	8181b683          	ld	a3,-2024(gp) # 11638 <_fbss>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:445
    return (void*)-1;
   10a14:	fff00713          	li	a4,-1
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
    heap_end = (long)_end;
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   10a18:	00d787b3          	add	a5,a5,a3
   10a1c:	00f51663          	bne	a0,a5,10a28 <sbrk+0x48>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:447
    return (void*)-1;

  heap_end += incr;
   10a20:	80a1bc23          	sd	a0,-2024(gp) # 11638 <_fbss>
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:448
  return heap_end - incr;
   10a24:	00068713          	mv	a4,a3
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:449
}
   10a28:	00070513          	mv	a0,a4
   10a2c:	00008067          	ret

0000000000010a30 <_exit>:
__internal_syscall():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   10a30:	00000593          	li	a1,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   10a34:	00000613          	li	a2,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   10a38:	00000693          	li	a3,0
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   10a3c:	05d00893          	li	a7,93
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   10a40:	00000073          	ecall
   10a44:	c2054ce3          	bltz	a0,1067c <__syscall_error>
   10a48:	0000006f          	j	10a48 <_exit+0x18>

0000000000010a4c <__errno>:
__errno():
/home/davidguan/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/errno/errno.c:14

int *
__errno ()
{
  return &_REENT->_errno;
}
   10a4c:	8101b503          	ld	a0,-2032(gp) # 11630 <_impure_ptr>
   10a50:	00008067          	ret
