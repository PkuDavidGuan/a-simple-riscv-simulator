
malloc_test:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
_ftext():
   10000:	00003197          	auipc	gp,0x3
   10004:	1e018193          	addi	gp,gp,480 # 131e0 <_gp>
   10008:	00003297          	auipc	t0,0x3
   1000c:	a0028293          	addi	t0,t0,-1536 # 12a08 <__malloc_max_total_mem>
   10010:	00003317          	auipc	t1,0x3
   10014:	a8830313          	addi	t1,t1,-1400 # 12a98 <_end>
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
   1004c:	00013537          	lui	a0,0x13
   10050:	000137b7          	lui	a5,0x13
   10054:	9d850713          	addi	a4,a0,-1576 # 129d8 <__TMC_END__>
   10058:	9df78793          	addi	a5,a5,-1569 # 129df <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	9d850513          	addi	a0,a0,-1576
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
register_tm_clones():
   10080:	00013537          	lui	a0,0x13
   10084:	000137b7          	lui	a5,0x13
   10088:	9d850593          	addi	a1,a0,-1576 # 129d8 <__TMC_END__>
   1008c:	9d878793          	addi	a5,a5,-1576 # 129d8 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	9d850513          	addi	a0,a0,-1576
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8481c783          	lbu	a5,-1976(gp) # 12a28 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00011537          	lui	a0,0x11
   100e8:	52850513          	addi	a0,a0,1320 # 11528 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	84f18423          	sb	a5,-1976(gp) # 12a28 <_bss_start>
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
   10124:	85018593          	addi	a1,gp,-1968 # 12a30 <object.3092>
   10128:	52850513          	addi	a0,a0,1320 # 11528 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	000127b7          	lui	a5,0x12
   10138:	a7078513          	addi	a0,a5,-1424 # 11a70 <__JCR_END__>
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
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/syscall/testfile/malloc_test.c:9
// -- see the corresponding .asm file 

#include <stdlib.h>

int main()
{
   10164:	fe010113          	addi	sp,sp,-32
   10168:	00113c23          	sd	ra,24(sp)
   1016c:	00813823          	sd	s0,16(sp)
   10170:	02010413          	addi	s0,sp,32
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/syscall/testfile/malloc_test.c:10
    void *p = malloc(8);
   10174:	00800513          	li	a0,8
   10178:	164000ef          	jal	102dc <malloc>
   1017c:	00050793          	mv	a5,a0
   10180:	fef43423          	sd	a5,-24(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/syscall/testfile/malloc_test.c:11
    return 0;
   10184:	00000793          	li	a5,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/syscall/testfile/malloc_test.c:12
   10188:	00078513          	mv	a0,a5
   1018c:	01813083          	ld	ra,24(sp)
   10190:	01013403          	ld	s0,16(sp)
   10194:	02010113          	addi	sp,sp,32
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
   101ac:	0c10006f          	j	10a6c <__register_exitproc>

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
   101c4:	1b9000ef          	jal	10b7c <__call_exitprocs>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:68

  if (_GLOBAL_REENT->__cleanup)
   101c8:	8081b503          	ld	a0,-2040(gp) # 129e8 <_global_impure_ptr>
   101cc:	05853783          	ld	a5,88(a0)
   101d0:	00078463          	beqz	a5,101d8 <exit+0x28>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:69
    (*_GLOBAL_REENT->__cleanup) (_GLOBAL_REENT);
   101d4:	000780e7          	jalr	a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/exit.c:70
  _exit (code);
   101d8:	00040513          	mv	a0,s0
   101dc:	30c010ef          	jal	114e8 <_exit>

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
   101f4:	52048493          	addi	s1,s1,1312 # 11520 <__init_array_end>
   101f8:	52840413          	addi	s0,s0,1320 # 11528 <__fini_array_end>
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
   10250:	51878793          	addi	a5,a5,1304 # 11518 <_etext>
   10254:	51840913          	addi	s2,s0,1304 # 11518 <_etext>
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
   10268:	51840413          	addi	s0,s0,1304
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
   10294:	51840913          	addi	s2,s0,1304 # 11518 <_etext>
   10298:	52078793          	addi	a5,a5,1312 # 11520 <__init_array_end>
   1029c:	41278933          	sub	s2,a5,s2
   102a0:	40395913          	srai	s2,s2,0x3
   102a4:	51840413          	addi	s0,s0,1304
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

00000000000102dc <malloc>:
malloc():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/malloc.c:215

_PTR
_DEFUN (malloc, (nbytes),
	size_t nbytes)		/* get a block */
{
  return _malloc_r (_REENT, nbytes);
   102dc:	00050593          	mv	a1,a0
   102e0:	8101b503          	ld	a0,-2032(gp) # 129f0 <_impure_ptr>
   102e4:	0100006f          	j	102f4 <_malloc_r>

00000000000102e8 <free>:
free():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/malloc.c:222

void
_DEFUN (free, (aptr),
	_PTR aptr)
{
  _free_r (_REENT, aptr);
   102e8:	00050593          	mv	a1,a0
   102ec:	8101b503          	ld	a0,-2032(gp) # 129f0 <_impure_ptr>
   102f0:	3350006f          	j	10e24 <_free_r>

00000000000102f4 <_malloc_r>:
_malloc_r():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2328
#if __STD_C
Void_t* mALLOc(RARG size_t bytes)
#else
Void_t* mALLOc(RARG bytes) RDECL size_t bytes;
#endif
{
   102f4:	fa010113          	addi	sp,sp,-96
   102f8:	04913423          	sd	s1,72(sp)
   102fc:	03313c23          	sd	s3,56(sp)
   10300:	04113c23          	sd	ra,88(sp)
   10304:	04813823          	sd	s0,80(sp)
   10308:	05213023          	sd	s2,64(sp)
   1030c:	03413823          	sd	s4,48(sp)
   10310:	03513423          	sd	s5,40(sp)
   10314:	03613023          	sd	s6,32(sp)
   10318:	01713c23          	sd	s7,24(sp)
   1031c:	01813823          	sd	s8,16(sp)
   10320:	01913423          	sd	s9,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2348
  int       startidx;                /* first bin of a traversed block */
  mchunkptr fwd;                     /* misc temp for linking */
  mchunkptr bck;                     /* misc temp for linking */
  mbinptr q;                         /* misc temp */

  INTERNAL_SIZE_T nb  = request2size(bytes);  /* padded request size; */
   10324:	01758493          	addi	s1,a1,23
   10328:	02e00793          	li	a5,46
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2328
#if __STD_C
Void_t* mALLOc(RARG size_t bytes)
#else
Void_t* mALLOc(RARG bytes) RDECL size_t bytes;
#endif
{
   1032c:	00050993          	mv	s3,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2348
  int       startidx;                /* first bin of a traversed block */
  mchunkptr fwd;                     /* misc temp for linking */
  mchunkptr bck;                     /* misc temp for linking */
  mbinptr q;                         /* misc temp */

  INTERNAL_SIZE_T nb  = request2size(bytes);  /* padded request size; */
   10330:	1c97fa63          	bleu	s1,a5,10504 <_malloc_r+0x210>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2351 (discriminator 1)

  /* Check for overflow and just fail, if so. */
  if (nb > INT_MAX || nb < bytes)
   10334:	800007b7          	lui	a5,0x80000
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2348
  int       startidx;                /* first bin of a traversed block */
  mchunkptr fwd;                     /* misc temp for linking */
  mchunkptr bck;                     /* misc temp for linking */
  mbinptr q;                         /* misc temp */

  INTERNAL_SIZE_T nb  = request2size(bytes);  /* padded request size; */
   10338:	ff04f493          	andi	s1,s1,-16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2351

  /* Check for overflow and just fail, if so. */
  if (nb > INT_MAX || nb < bytes)
   1033c:	fff7c793          	not	a5,a5
   10340:	2497ee63          	bltu	a5,s1,1059c <_malloc_r+0x2a8>
   10344:	24b4ec63          	bltu	s1,a1,1059c <_malloc_r+0x2a8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2357
  {
    RERRNO = ENOMEM;
    return 0;
  }

  MALLOC_LOCK;
   10348:	71c000ef          	jal	10a64 <__malloc_lock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2361

  /* Check for exact match in a bin */

  if (is_small_request(nb))  /* Faster version for small requests */
   1034c:	1f700793          	li	a5,503
   10350:	7097f063          	bleu	s1,a5,10a50 <_malloc_r+0x75c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2393
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
   10354:	0094d793          	srli	a5,s1,0x9
   10358:	08000693          	li	a3,128
   1035c:	04000513          	li	a0,64
   10360:	03f00593          	li	a1,63
   10364:	24079463          	bnez	a5,105ac <_malloc_r+0x2b8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2394 (discriminator 24)
    bin = bin_at(idx);
   10368:	00012937          	lui	s2,0x12
   1036c:	1c890913          	addi	s2,s2,456 # 121c8 <__malloc_av_>
   10370:	00369693          	slli	a3,a3,0x3
   10374:	00d906b3          	add	a3,s2,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2396

    for (victim = last(bin); victim != bin; victim = victim->bk)
   10378:	0086b403          	ld	s0,8(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2394

  }
  else
  {
    idx = bin_index(nb);
    bin = bin_at(idx);
   1037c:	ff068693          	addi	a3,a3,-16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2396

    for (victim = last(bin); victim != bin; victim = victim->bk)
   10380:	24868663          	beq	a3,s0,105cc <_malloc_r+0x2d8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2398
    {
      victim_size = chunksize(victim);
   10384:	00843783          	ld	a5,8(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2401
      remainder_size = long_sub_size_t(victim_size, nb);
      
      if (remainder_size >= (long)MINSIZE) /* too big */
   10388:	01f00613          	li	a2,31
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2398
    idx = bin_index(nb);
    bin = bin_at(idx);

    for (victim = last(bin); victim != bin; victim = victim->bk)
    {
      victim_size = chunksize(victim);
   1038c:	ffc7f793          	andi	a5,a5,-4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2399
      remainder_size = long_sub_size_t(victim_size, nb);
   10390:	40978733          	sub	a4,a5,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2401
      
      if (remainder_size >= (long)MINSIZE) /* too big */
   10394:	02e64063          	blt	a2,a4,103b4 <_malloc_r+0xc0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2407
      {
        --idx; /* adjust to rescan below after checking last remainder */
        break;   
      }

      else if (remainder_size >= 0) /* exact fit */
   10398:	22075e63          	bgez	a4,105d4 <_malloc_r+0x2e0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2396 (discriminator 2)
  else
  {
    idx = bin_index(nb);
    bin = bin_at(idx);

    for (victim = last(bin); victim != bin; victim = victim->bk)
   1039c:	01843403          	ld	s0,24(s0)
   103a0:	22868663          	beq	a3,s0,105cc <_malloc_r+0x2d8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2398
    {
      victim_size = chunksize(victim);
   103a4:	00843783          	ld	a5,8(s0)
   103a8:	ffc7f793          	andi	a5,a5,-4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2399
      remainder_size = long_sub_size_t(victim_size, nb);
   103ac:	40978733          	sub	a4,a5,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2401
      
      if (remainder_size >= (long)MINSIZE) /* too big */
   103b0:	fee654e3          	ble	a4,a2,10398 <_malloc_r+0xa4>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2404
      {
        --idx; /* adjust to rescan below after checking last remainder */
        break;   
   103b4:	00058693          	mv	a3,a1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2423

  }

  /* Try to use the last split-off remainder */

  if ( (victim = last_remainder->fd) != last_remainder)
   103b8:	02093403          	ld	s0,32(s2)
   103bc:	01090813          	addi	a6,s2,16
   103c0:	47040a63          	beq	s0,a6,10834 <_malloc_r+0x540>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2425
  {
    victim_size = chunksize(victim);
   103c4:	00843783          	ld	a5,8(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2428
    remainder_size = long_sub_size_t(victim_size, nb);

    if (remainder_size >= (long)MINSIZE) /* re-split */
   103c8:	01f00613          	li	a2,31
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2425

  /* Try to use the last split-off remainder */

  if ( (victim = last_remainder->fd) != last_remainder)
  {
    victim_size = chunksize(victim);
   103cc:	ffc7f793          	andi	a5,a5,-4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2426
    remainder_size = long_sub_size_t(victim_size, nb);
   103d0:	40978733          	sub	a4,a5,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2428

    if (remainder_size >= (long)MINSIZE) /* re-split */
   103d4:	44e64a63          	blt	a2,a4,10828 <_malloc_r+0x534>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2440
      check_malloced_chunk(victim, nb);
      MALLOC_UNLOCK;
      return chunk2mem(victim);
    }

    clear_last_remainder;
   103d8:	03093423          	sd	a6,40(s2)
   103dc:	03093023          	sd	a6,32(s2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2442

    if (remainder_size >= 0)  /* exhaust */
   103e0:	20075063          	bgez	a4,105e0 <_malloc_r+0x2ec>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
   103e4:	1ff00713          	li	a4,511
   103e8:	3cf76c63          	bltu	a4,a5,107c0 <_malloc_r+0x4cc>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 1)
   103ec:	0037d793          	srli	a5,a5,0x3
   103f0:	0007879b          	sext.w	a5,a5
   103f4:	0017861b          	addiw	a2,a5,1
   103f8:	0016161b          	slliw	a2,a2,0x1
   103fc:	00361613          	slli	a2,a2,0x3
   10400:	00893703          	ld	a4,8(s2)
   10404:	00c90633          	add	a2,s2,a2
   10408:	00063503          	ld	a0,0(a2)
   1040c:	4027d79b          	sraiw	a5,a5,0x2
   10410:	00100593          	li	a1,1
   10414:	00f597b3          	sll	a5,a1,a5
   10418:	00e7e7b3          	or	a5,a5,a4
   1041c:	ff060713          	addi	a4,a2,-16
   10420:	00e43c23          	sd	a4,24(s0)
   10424:	00a43823          	sd	a0,16(s0)
   10428:	00f93423          	sd	a5,8(s2)
   1042c:	00863023          	sd	s0,0(a2)
   10430:	00853c23          	sd	s0,24(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2460
  /* 
     If there are any possibly nonempty big-enough blocks, 
     search for best fitting chunk by scanning bins in blockwidth units.
  */

  if ( (block = idx2binblock(idx)) <= binblocks)  
   10434:	4026d61b          	sraiw	a2,a3,0x2
   10438:	00100713          	li	a4,1
   1043c:	00c71633          	sll	a2,a4,a2
   10440:	1cc7e063          	bltu	a5,a2,10600 <_malloc_r+0x30c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2465
  {

    /* Get to the first marked block */

    if ( (block & binblocks) == 0) 
   10444:	00f67733          	and	a4,a2,a5
   10448:	02071463          	bnez	a4,10470 <_malloc_r+0x17c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2469
    {
      /* force to an even block boundary */
      idx = (idx & ~(BINBLOCKWIDTH - 1)) + BINBLOCKWIDTH;
      block <<= 1;
   1044c:	00161613          	slli	a2,a2,0x1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2468
    /* Get to the first marked block */

    if ( (block & binblocks) == 0) 
    {
      /* force to an even block boundary */
      idx = (idx & ~(BINBLOCKWIDTH - 1)) + BINBLOCKWIDTH;
   10450:	ffc6f693          	andi	a3,a3,-4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2470
      block <<= 1;
      while ((block & binblocks) == 0)
   10454:	00f67733          	and	a4,a2,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2468
    /* Get to the first marked block */

    if ( (block & binblocks) == 0) 
    {
      /* force to an even block boundary */
      idx = (idx & ~(BINBLOCKWIDTH - 1)) + BINBLOCKWIDTH;
   10458:	0046869b          	addiw	a3,a3,4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2470
      block <<= 1;
      while ((block & binblocks) == 0)
   1045c:	00071a63          	bnez	a4,10470 <_malloc_r+0x17c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2473
      {
        idx += BINBLOCKWIDTH;
        block <<= 1;
   10460:	00161613          	slli	a2,a2,0x1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2470
    if ( (block & binblocks) == 0) 
    {
      /* force to an even block boundary */
      idx = (idx & ~(BINBLOCKWIDTH - 1)) + BINBLOCKWIDTH;
      block <<= 1;
      while ((block & binblocks) == 0)
   10464:	00f67733          	and	a4,a2,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2472
      {
        idx += BINBLOCKWIDTH;
   10468:	0046869b          	addiw	a3,a3,4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2470
    if ( (block & binblocks) == 0) 
    {
      /* force to an even block boundary */
      idx = (idx & ~(BINBLOCKWIDTH - 1)) + BINBLOCKWIDTH;
      block <<= 1;
      while ((block & binblocks) == 0)
   1046c:	fe070ae3          	beqz	a4,10460 <_malloc_r+0x16c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2493
        for (victim = last(bin); victim != bin; victim = victim->bk)
        {
          victim_size = chunksize(victim);
          remainder_size = long_sub_size_t(victim_size, nb);

          if (remainder_size >= (long)MINSIZE) /* split */
   10470:	01f00513          	li	a0,31
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2481
      
    /* For each possibly nonempty block ... */
    for (;;)  
    {
      startidx = idx;          /* (track incomplete blocks) */
      q = bin = bin_at(idx);
   10474:	0016889b          	addiw	a7,a3,1
   10478:	0018989b          	slliw	a7,a7,0x1
   1047c:	00389893          	slli	a7,a7,0x3
   10480:	011908b3          	add	a7,s2,a7
   10484:	ff088893          	addi	a7,a7,-16
   10488:	00088593          	mv	a1,a7
   1048c:	00068313          	mv	t1,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2488
      /* For each bin in this block ... */
      do
      {
        /* Find and use first big enough chunk ... */

        for (victim = last(bin); victim != bin; victim = victim->bk)
   10490:	0185b403          	ld	s0,24(a1)
   10494:	00859a63          	bne	a1,s0,104a8 <_malloc_r+0x1b4>
   10498:	3a40006f          	j	1083c <_malloc_r+0x548>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2506
            check_malloced_chunk(victim, nb);
	    MALLOC_UNLOCK;
            return chunk2mem(victim);
          }

          else if (remainder_size >= 0)  /* take */
   1049c:	3c075263          	bgez	a4,10860 <_malloc_r+0x56c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2488 (discriminator 2)
      /* For each bin in this block ... */
      do
      {
        /* Find and use first big enough chunk ... */

        for (victim = last(bin); victim != bin; victim = victim->bk)
   104a0:	01843403          	ld	s0,24(s0)
   104a4:	38858c63          	beq	a1,s0,1083c <_malloc_r+0x548>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2490
        {
          victim_size = chunksize(victim);
   104a8:	00843783          	ld	a5,8(s0)
   104ac:	ffc7f793          	andi	a5,a5,-4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2491
          remainder_size = long_sub_size_t(victim_size, nb);
   104b0:	40978733          	sub	a4,a5,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2493

          if (remainder_size >= (long)MINSIZE) /* split */
   104b4:	fee554e3          	ble	a4,a0,1049c <_malloc_r+0x1a8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2497
          {
            remainder = chunk_at_offset(victim, nb);
            set_head(victim, nb | PREV_INUSE);
            unlink(victim, bck, fwd);
   104b8:	01843783          	ld	a5,24(s0)
   104bc:	01043683          	ld	a3,16(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2496
          remainder_size = long_sub_size_t(victim_size, nb);

          if (remainder_size >= (long)MINSIZE) /* split */
          {
            remainder = chunk_at_offset(victim, nb);
            set_head(victim, nb | PREV_INUSE);
   104c0:	0014e613          	ori	a2,s1,1
   104c4:	00c43423          	sd	a2,8(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2497
            unlink(victim, bck, fwd);
   104c8:	00f6bc23          	sd	a5,24(a3)
   104cc:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_gp+0xffffffff7ffece30>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2495
          victim_size = chunksize(victim);
          remainder_size = long_sub_size_t(victim_size, nb);

          if (remainder_size >= (long)MINSIZE) /* split */
          {
            remainder = chunk_at_offset(victim, nb);
   104d0:	009404b3          	add	s1,s0,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2498
            set_head(victim, nb | PREV_INUSE);
            unlink(victim, bck, fwd);
            link_last_remainder(remainder);
   104d4:	02993423          	sd	s1,40(s2)
   104d8:	02993023          	sd	s1,32(s2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2499
            set_head(remainder, remainder_size | PREV_INUSE);
   104dc:	00176793          	ori	a5,a4,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2498
          if (remainder_size >= (long)MINSIZE) /* split */
          {
            remainder = chunk_at_offset(victim, nb);
            set_head(victim, nb | PREV_INUSE);
            unlink(victim, bck, fwd);
            link_last_remainder(remainder);
   104e0:	0104bc23          	sd	a6,24(s1)
   104e4:	0104b823          	sd	a6,16(s1)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2499
            set_head(remainder, remainder_size | PREV_INUSE);
   104e8:	00f4b423          	sd	a5,8(s1)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2500
            set_foot(remainder, remainder_size);
   104ec:	00e484b3          	add	s1,s1,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2502
            check_malloced_chunk(victim, nb);
	    MALLOC_UNLOCK;
   104f0:	00098513          	mv	a0,s3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2500
            remainder = chunk_at_offset(victim, nb);
            set_head(victim, nb | PREV_INUSE);
            unlink(victim, bck, fwd);
            link_last_remainder(remainder);
            set_head(remainder, remainder_size | PREV_INUSE);
            set_foot(remainder, remainder_size);
   104f4:	00e4b023          	sd	a4,0(s1)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2502
            check_malloced_chunk(victim, nb);
	    MALLOC_UNLOCK;
   104f8:	570000ef          	jal	10a68 <__malloc_unlock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2503
            return chunk2mem(victim);
   104fc:	01040513          	addi	a0,s0,16
   10500:	0680006f          	j	10568 <_malloc_r+0x274>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2351
  mbinptr q;                         /* misc temp */

  INTERNAL_SIZE_T nb  = request2size(bytes);  /* padded request size; */

  /* Check for overflow and just fail, if so. */
  if (nb > INT_MAX || nb < bytes)
   10504:	02000493          	li	s1,32
   10508:	08b4ea63          	bltu	s1,a1,1059c <_malloc_r+0x2a8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2357
  {
    RERRNO = ENOMEM;
    return 0;
  }

  MALLOC_LOCK;
   1050c:	558000ef          	jal	10a64 <__malloc_lock>
   10510:	00a00793          	li	a5,10
   10514:	00400693          	li	a3,4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2367
  {
    idx = smallbin_index(nb); 

    /* No traversal or size check necessary for small bins.  */

    q = bin_at(idx);
   10518:	00012937          	lui	s2,0x12
   1051c:	1c890913          	addi	s2,s2,456 # 121c8 <__malloc_av_>
   10520:	00379793          	slli	a5,a5,0x3
   10524:	00f907b3          	add	a5,s2,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2368
    victim = last(q);
   10528:	0087b403          	ld	s0,8(a5)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2372

#if MALLOC_ALIGN != 16
    /* Also scan the next one, since it would have a remainder < MINSIZE */
    if (victim == q)
   1052c:	ff078713          	addi	a4,a5,-16
   10530:	32e40063          	beq	s0,a4,10850 <_malloc_r+0x55c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2380
      victim = last(q);
    }
#endif
    if (victim != q)
    {
      victim_size = chunksize(victim);
   10534:	00843783          	ld	a5,8(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2381
      unlink(victim, bck, fwd);
   10538:	01843683          	ld	a3,24(s0)
   1053c:	01043603          	ld	a2,16(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2380
      victim = last(q);
    }
#endif
    if (victim != q)
    {
      victim_size = chunksize(victim);
   10540:	ffc7f793          	andi	a5,a5,-4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2410
      }

      else if (remainder_size >= 0) /* exact fit */
      {
        unlink(victim, bck, fwd);
        set_inuse_bit_at_offset(victim, victim_size);
   10544:	00f407b3          	add	a5,s0,a5
   10548:	0087b703          	ld	a4,8(a5)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2409
        break;   
      }

      else if (remainder_size >= 0) /* exact fit */
      {
        unlink(victim, bck, fwd);
   1054c:	00d63c23          	sd	a3,24(a2)
   10550:	00c6b823          	sd	a2,16(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2410
        set_inuse_bit_at_offset(victim, victim_size);
   10554:	00176713          	ori	a4,a4,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2412
        check_malloced_chunk(victim, nb);
	MALLOC_UNLOCK;
   10558:	00098513          	mv	a0,s3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2410
      }

      else if (remainder_size >= 0) /* exact fit */
      {
        unlink(victim, bck, fwd);
        set_inuse_bit_at_offset(victim, victim_size);
   1055c:	00e7b423          	sd	a4,8(a5)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2412
        check_malloced_chunk(victim, nb);
	MALLOC_UNLOCK;
   10560:	508000ef          	jal	10a68 <__malloc_unlock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2413
        return chunk2mem(victim);
   10564:	01040513          	addi	a0,s0,16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2593
  check_malloced_chunk(victim, nb);
  MALLOC_UNLOCK;
  return chunk2mem(victim);

#endif /* MALLOC_PROVIDED */
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
   10594:	06010113          	addi	sp,sp,96
   10598:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2353
  INTERNAL_SIZE_T nb  = request2size(bytes);  /* padded request size; */

  /* Check for overflow and just fail, if so. */
  if (nb > INT_MAX || nb < bytes)
  {
    RERRNO = ENOMEM;
   1059c:	00c00793          	li	a5,12
   105a0:	00f9a023          	sw	a5,0(s3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2354
    return 0;
   105a4:	00000513          	li	a0,0
   105a8:	fc1ff06f          	j	10568 <_malloc_r+0x274>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2393 (discriminator 2)
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
   105ac:	00400713          	li	a4,4
   105b0:	1ef76463          	bltu	a4,a5,10798 <_malloc_r+0x4a4>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2393 (discriminator 4)
   105b4:	0064d593          	srli	a1,s1,0x6
   105b8:	0005859b          	sext.w	a1,a1
   105bc:	0395851b          	addiw	a0,a1,57
   105c0:	0015169b          	slliw	a3,a0,0x1
   105c4:	0385859b          	addiw	a1,a1,56
   105c8:	da1ff06f          	j	10368 <_malloc_r+0x74>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2396
    bin = bin_at(idx);

    for (victim = last(bin); victim != bin; victim = victim->bk)
   105cc:	00050693          	mv	a3,a0
   105d0:	de9ff06f          	j	103b8 <_malloc_r+0xc4>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2409
        break;   
      }

      else if (remainder_size >= 0) /* exact fit */
      {
        unlink(victim, bck, fwd);
   105d4:	01843683          	ld	a3,24(s0)
   105d8:	01043603          	ld	a2,16(s0)
   105dc:	f69ff06f          	j	10544 <_malloc_r+0x250>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2444

    clear_last_remainder;

    if (remainder_size >= 0)  /* exhaust */
    {
      set_inuse_bit_at_offset(victim, victim_size);
   105e0:	00f407b3          	add	a5,s0,a5
   105e4:	0087b703          	ld	a4,8(a5)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2446
      check_malloced_chunk(victim, nb);
      MALLOC_UNLOCK;
   105e8:	00098513          	mv	a0,s3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2444

    clear_last_remainder;

    if (remainder_size >= 0)  /* exhaust */
    {
      set_inuse_bit_at_offset(victim, victim_size);
   105ec:	00176713          	ori	a4,a4,1
   105f0:	00e7b423          	sd	a4,8(a5)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2446
      check_malloced_chunk(victim, nb);
      MALLOC_UNLOCK;
   105f4:	474000ef          	jal	10a68 <__malloc_unlock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2447
      return chunk2mem(victim);
   105f8:	01040513          	addi	a0,s0,16
   105fc:	f6dff06f          	j	10568 <_malloc_r+0x274>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2560


  /* Try to use top chunk */

  /* Require that there be a remainder, ensuring top always exists  */
  remainder_size = long_sub_size_t(chunksize(top), nb);
   10600:	01093403          	ld	s0,16(s2)
   10604:	00843703          	ld	a4,8(s0)
   10608:	ffc77b93          	andi	s7,a4,-4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2561
  if (chunksize(top) < nb || remainder_size < (long)MINSIZE)
   1060c:	009be863          	bltu	s7,s1,1061c <_malloc_r+0x328>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2560 (discriminator 1)


  /* Try to use top chunk */

  /* Require that there be a remainder, ensuring top always exists  */
  remainder_size = long_sub_size_t(chunksize(top), nb);
   10610:	409b87b3          	sub	a5,s7,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2561
  if (chunksize(top) < nb || remainder_size < (long)MINSIZE)
   10614:	01f00713          	li	a4,31
   10618:	14f74c63          	blt	a4,a5,10770 <_malloc_r+0x47c>
malloc_extend_top():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2155
  INTERNAL_SIZE_T old_top_size = chunksize(old_top);
  char*     old_end      = (char*)(chunk_at_offset(old_top, old_top_size));

  /* Pad request with top_pad plus minimal overhead */
  
  INTERNAL_SIZE_T    sbrk_size     = nb + top_pad + MINSIZE;
   1061c:	8381b783          	ld	a5,-1992(gp) # 12a18 <__malloc_top_pad>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2162

  /* If not the first time through, round to preserve page boundary */
  /* Otherwise, we need to correct to a page size below anyway. */
  /* (We also correct below if an intervening foreign sbrk call.) */

  if (sbrk_base != (char*)(-1))
   10620:	8181b683          	ld	a3,-2024(gp) # 129f8 <__malloc_sbrk_base>
   10624:	fff00713          	li	a4,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2155
  INTERNAL_SIZE_T old_top_size = chunksize(old_top);
  char*     old_end      = (char*)(chunk_at_offset(old_top, old_top_size));

  /* Pad request with top_pad plus minimal overhead */
  
  INTERNAL_SIZE_T    sbrk_size     = nb + top_pad + MINSIZE;
   10628:	00f487b3          	add	a5,s1,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2151
  char*     new_brk;              /* return of 2nd sbrk call */
  INTERNAL_SIZE_T top_size;       /* new size of top chunk */

  mchunkptr old_top     = top;  /* Record state of old top */
  INTERNAL_SIZE_T old_top_size = chunksize(old_top);
  char*     old_end      = (char*)(chunk_at_offset(old_top, old_top_size));
   1062c:	01740a33          	add	s4,s0,s7
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2155

  /* Pad request with top_pad plus minimal overhead */
  
  INTERNAL_SIZE_T    sbrk_size     = nb + top_pad + MINSIZE;
   10630:	02078b13          	addi	s6,a5,32
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2162

  /* If not the first time through, round to preserve page boundary */
  /* Otherwise, we need to correct to a page size below anyway. */
  /* (We also correct below if an intervening foreign sbrk call.) */

  if (sbrk_base != (char*)(-1))
   10634:	00e68c63          	beq	a3,a4,1064c <_malloc_r+0x358>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2163
    sbrk_size = (sbrk_size + (pagesz - 1)) & ~(pagesz - 1);
   10638:	00001b37          	lui	s6,0x1
   1063c:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   10640:	01678b33          	add	s6,a5,s6
   10644:	fffff7b7          	lui	a5,0xfffff
   10648:	00fb7b33          	and	s6,s6,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2165

  brk = (char*)(MORECORE (sbrk_size));
   1064c:	000b0513          	mv	a0,s6
   10650:	649000ef          	jal	11498 <sbrk>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2168

  /* Fail if sbrk failed or if a foreign sbrk call killed our space */
  if (brk == (char*)(MORECORE_FAILURE) || 
   10654:	fff00793          	li	a5,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2165
  /* (We also correct below if an intervening foreign sbrk call.) */

  if (sbrk_base != (char*)(-1))
    sbrk_size = (sbrk_size + (pagesz - 1)) & ~(pagesz - 1);

  brk = (char*)(MORECORE (sbrk_size));
   10658:	00050a93          	mv	s5,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2168

  /* Fail if sbrk failed or if a foreign sbrk call killed our space */
  if (brk == (char*)(MORECORE_FAILURE) || 
   1065c:	26f50263          	beq	a0,a5,108c0 <_malloc_r+0x5cc>
   10660:	25456e63          	bltu	a0,s4,108bc <_malloc_r+0x5c8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2172
      (brk < old_end && old_top != initial_top))
    return;

  sbrked_mem += sbrk_size;
   10664:	88018c13          	addi	s8,gp,-1920 # 12a60 <__malloc_current_mallinfo>
   10668:	000c2783          	lw	a5,0(s8)
   1066c:	00fb07bb          	addw	a5,s6,a5
   10670:	00fc2023          	sw	a5,0(s8)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2174

  if (brk == old_end /* can just add bytes to current top, unless
   10674:	355a0463          	beq	s4,s5,109bc <_malloc_r+0x6c8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2183
    top_size = sbrk_size + old_top_size;
    set_head(top, top_size | PREV_INUSE);
  }
  else
  {
    if (sbrk_base == (char*)(-1))  /* First time through. Record base */
   10678:	8181b683          	ld	a3,-2024(gp) # 129f8 <__malloc_sbrk_base>
   1067c:	fff00713          	li	a4,-1
   10680:	36e68263          	beq	a3,a4,109e4 <_malloc_r+0x6f0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2186
      sbrk_base = brk;
    else  /* Someone else called sbrk().  Count those bytes as sbrked_mem. */
      sbrked_mem += brk - (char*)old_end;
   10684:	414a8a33          	sub	s4,s5,s4
   10688:	00fa07bb          	addw	a5,s4,a5
   1068c:	00fc2023          	sw	a5,0(s8)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2189

    /* Guarantee alignment of first new chunk made from this space */
    front_misalign = (POINTER_UINT)chunk2mem(brk) & MALLOC_ALIGN_MASK;
   10690:	00faf713          	andi	a4,s5,15
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2190
    if (front_misalign > 0) 
   10694:	000017b7          	lui	a5,0x1
   10698:	00070a63          	beqz	a4,106ac <_malloc_r+0x3b8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2193
    {
      correction = (MALLOC_ALIGNMENT) - front_misalign;
      brk += correction;
   1069c:	40ea8ab3          	sub	s5,s5,a4
   106a0:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   106a4:	010a8a93          	addi	s5,s5,16
   106a8:	40ea07b3          	sub	a5,s4,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2199
    }
    else
      correction = 0;

    /* Guarantee the next brk will be at a page boundary */
    correction += pagesz - ((POINTER_UINT)(brk + sbrk_size) & (pagesz - 1));
   106ac:	00001a37          	lui	s4,0x1
   106b0:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   106b4:	016a8b33          	add	s6,s5,s6
   106b8:	014b7b33          	and	s6,s6,s4
   106bc:	41678a33          	sub	s4,a5,s6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2202

    /* Allocate correction */
    new_brk = (char*)(MORECORE (correction));
   106c0:	000a0513          	mv	a0,s4
   106c4:	5d5000ef          	jal	11498 <sbrk>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2203
    if (new_brk == (char*)(MORECORE_FAILURE))
   106c8:	fff00793          	li	a5,-1
   106cc:	30f50663          	beq	a0,a5,109d8 <_malloc_r+0x6e4>
   106d0:	41550733          	sub	a4,a0,s5
   106d4:	01470733          	add	a4,a4,s4
   106d8:	00176713          	ori	a4,a4,1
   106dc:	000a0a1b          	sext.w	s4,s4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2210
	correction = 0;
	correction_failed = 1;
	new_brk = brk;
      }

    sbrked_mem += correction;
   106e0:	000c2783          	lw	a5,0(s8)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2212

    top = (mchunkptr)brk;
   106e4:	01593823          	sd	s5,16(s2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2214
    top_size = new_brk - brk + correction;
    set_head(top, top_size | PREV_INUSE);
   106e8:	00eab423          	sd	a4,8(s5)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2210
	correction = 0;
	correction_failed = 1;
	new_brk = brk;
      }

    sbrked_mem += correction;
   106ec:	00fa07bb          	addw	a5,s4,a5
   106f0:	00fc2023          	sw	a5,0(s8)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2216

    top = (mchunkptr)brk;
    top_size = new_brk - brk + correction;
    set_head(top, top_size | PREV_INUSE);

    if (old_top != initial_top)
   106f4:	03240c63          	beq	s0,s2,1072c <_malloc_r+0x438>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2223

      /* There must have been an intervening foreign sbrk call. */
      /* A double fencepost is necessary to prevent consolidation */

      /* If not enough space to do this, then user did something very wrong */
      if (old_top_size < MINSIZE) 
   106f8:	01f00613          	li	a2,31
   106fc:	27767463          	bleu	s7,a2,10964 <_malloc_r+0x670>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2231
        return;
      }

      /* Also keep size a multiple of MALLOC_ALIGNMENT */
      old_top_size = (old_top_size - 3*SIZE_SZ) & ~MALLOC_ALIGN_MASK;
      set_head_size(old_top, old_top_size);
   10700:	00843683          	ld	a3,8(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2230
        set_head(top, PREV_INUSE); /* will force null return from malloc */
        return;
      }

      /* Also keep size a multiple of MALLOC_ALIGNMENT */
      old_top_size = (old_top_size - 3*SIZE_SZ) & ~MALLOC_ALIGN_MASK;
   10704:	fe8b8713          	addi	a4,s7,-24
   10708:	ff077713          	andi	a4,a4,-16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2231
      set_head_size(old_top, old_top_size);
   1070c:	0016f693          	andi	a3,a3,1
   10710:	00e6e6b3          	or	a3,a3,a4
   10714:	00d43423          	sd	a3,8(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2232
      chunk_at_offset(old_top, old_top_size          )->size =
   10718:	00900593          	li	a1,9
   1071c:	00e406b3          	add	a3,s0,a4
   10720:	00b6b423          	sd	a1,8(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2234
        SIZE_SZ|PREV_INUSE;
      chunk_at_offset(old_top, old_top_size + SIZE_SZ)->size =
   10724:	00b6b823          	sd	a1,16(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2237
        SIZE_SZ|PREV_INUSE;
      /* If possible, release the rest. */
      if (old_top_size >= MINSIZE) 
   10728:	2ce66263          	bltu	a2,a4,109ec <_malloc_r+0x6f8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2242
        fREe(RCALL chunk2mem(old_top));
    }
  }

  if ((unsigned long)sbrked_mem > (unsigned long)max_sbrked_mem) 
   1072c:	8301b683          	ld	a3,-2000(gp) # 12a10 <__malloc_max_sbrked_mem>
   10730:	00f6f463          	bleu	a5,a3,10738 <_malloc_r+0x444>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2243
    max_sbrked_mem = sbrked_mem;
   10734:	82f1b823          	sd	a5,-2000(gp) # 12a10 <__malloc_max_sbrked_mem>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2248
#if HAVE_MMAP
  if ((unsigned long)(mmapped_mem + sbrked_mem) > (unsigned long)max_total_mem) 
    max_total_mem = mmapped_mem + sbrked_mem;
#else
  if ((unsigned long)(sbrked_mem) > (unsigned long)max_total_mem) 
   10738:	8281b683          	ld	a3,-2008(gp) # 12a08 <__malloc_max_total_mem>
   1073c:	01093403          	ld	s0,16(s2)
   10740:	00f6f463          	bleu	a5,a3,10748 <_malloc_r+0x454>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2249
    max_total_mem = sbrked_mem;
   10744:	82f1b423          	sd	a5,-2008(gp) # 12a08 <__malloc_max_total_mem>
   10748:	00843703          	ld	a4,8(s0)
   1074c:	ffc77713          	andi	a4,a4,-4
_malloc_r():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2576
    }
#endif

    /* Try to extend */
    malloc_extend_top(RCALL nb);
    remainder_size = long_sub_size_t(chunksize(top), nb);
   10750:	409707b3          	sub	a5,a4,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2577
    if (chunksize(top) < nb || remainder_size < (long)MINSIZE)
   10754:	00976663          	bltu	a4,s1,10760 <_malloc_r+0x46c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2577 (discriminator 1)
   10758:	01f00713          	li	a4,31
   1075c:	00f74a63          	blt	a4,a5,10770 <_malloc_r+0x47c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2579
    {
      MALLOC_UNLOCK;
   10760:	00098513          	mv	a0,s3
   10764:	304000ef          	jal	10a68 <__malloc_unlock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2580
      return 0; /* propagate failure */
   10768:	00000513          	li	a0,0
   1076c:	dfdff06f          	j	10568 <_malloc_r+0x274>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2585
    }
  }

  victim = top;
  set_head(victim, nb | PREV_INUSE);
   10770:	0014e713          	ori	a4,s1,1
   10774:	00e43423          	sd	a4,8(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2586
  top = chunk_at_offset(victim, nb);
   10778:	009404b3          	add	s1,s0,s1
   1077c:	00993823          	sd	s1,16(s2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2587
  set_head(top, remainder_size | PREV_INUSE);
   10780:	0017e793          	ori	a5,a5,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2589
  check_malloced_chunk(victim, nb);
  MALLOC_UNLOCK;
   10784:	00098513          	mv	a0,s3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2587
  }

  victim = top;
  set_head(victim, nb | PREV_INUSE);
  top = chunk_at_offset(victim, nb);
  set_head(top, remainder_size | PREV_INUSE);
   10788:	00f4b423          	sd	a5,8(s1)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2589
  check_malloced_chunk(victim, nb);
  MALLOC_UNLOCK;
   1078c:	2dc000ef          	jal	10a68 <__malloc_unlock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2590
  return chunk2mem(victim);
   10790:	01040513          	addi	a0,s0,16
   10794:	dd5ff06f          	j	10568 <_malloc_r+0x274>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2393 (discriminator 5)
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
   10798:	01400713          	li	a4,20
   1079c:	0ef77a63          	bleu	a5,a4,10890 <_malloc_r+0x59c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2393 (discriminator 8)
   107a0:	05400713          	li	a4,84
   107a4:	18f76063          	bltu	a4,a5,10924 <_malloc_r+0x630>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2393 (discriminator 10)
   107a8:	00c4d593          	srli	a1,s1,0xc
   107ac:	0005859b          	sext.w	a1,a1
   107b0:	06f5851b          	addiw	a0,a1,111
   107b4:	0015169b          	slliw	a3,a0,0x1
   107b8:	06e5859b          	addiw	a1,a1,110
   107bc:	badff06f          	j	10368 <_malloc_r+0x74>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 2)
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
   107c0:	0097d713          	srli	a4,a5,0x9
   107c4:	00400613          	li	a2,4
   107c8:	0ce67e63          	bleu	a4,a2,108a4 <_malloc_r+0x5b0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 7)
   107cc:	01400613          	li	a2,20
   107d0:	1ce66663          	bltu	a2,a4,1099c <_malloc_r+0x6a8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 9)
   107d4:	0007071b          	sext.w	a4,a4
   107d8:	05c7059b          	addiw	a1,a4,92
   107dc:	05b7061b          	addiw	a2,a4,91
   107e0:	0015959b          	slliw	a1,a1,0x1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 26)
   107e4:	00359593          	slli	a1,a1,0x3
   107e8:	00b905b3          	add	a1,s2,a1
   107ec:	0005b703          	ld	a4,0(a1)
   107f0:	ff058593          	addi	a1,a1,-16
   107f4:	14e58863          	beq	a1,a4,10944 <_malloc_r+0x650>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 30)
   107f8:	00873603          	ld	a2,8(a4)
   107fc:	ffc67613          	andi	a2,a2,-4
   10800:	00c7f663          	bleu	a2,a5,1080c <_malloc_r+0x518>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 32)
   10804:	01073703          	ld	a4,16(a4)
   10808:	fee598e3          	bne	a1,a4,107f8 <_malloc_r+0x504>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 33)
   1080c:	01873583          	ld	a1,24(a4)
   10810:	00893783          	ld	a5,8(s2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 34)
   10814:	00b43c23          	sd	a1,24(s0)
   10818:	00e43823          	sd	a4,16(s0)
   1081c:	0085b823          	sd	s0,16(a1)
   10820:	00873c23          	sd	s0,24(a4)
   10824:	c11ff06f          	j	10434 <_malloc_r+0x140>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2431
    remainder_size = long_sub_size_t(victim_size, nb);

    if (remainder_size >= (long)MINSIZE) /* re-split */
    {
      remainder = chunk_at_offset(victim, nb);
      set_head(victim, nb | PREV_INUSE);
   10828:	0014e793          	ori	a5,s1,1
   1082c:	00f43423          	sd	a5,8(s0)
   10830:	ca1ff06f          	j	104d0 <_malloc_r+0x1dc>
   10834:	00893783          	ld	a5,8(s2)
   10838:	bfdff06f          	j	10434 <_malloc_r+0x140>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2526
         {
           bin = next_bin(bin);
           ++idx;
         }
#endif
      } while ((++idx & (BINBLOCKWIDTH - 1)) != 0);
   1083c:	0013031b          	addiw	t1,t1,1
   10840:	00337793          	andi	a5,t1,3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2517
            return chunk2mem(victim);
          }

        }

       bin = next_bin(bin);
   10844:	01058593          	addi	a1,a1,16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2526
         {
           bin = next_bin(bin);
           ++idx;
         }
#endif
      } while ((++idx & (BINBLOCKWIDTH - 1)) != 0);
   10848:	c40794e3          	bnez	a5,10490 <_malloc_r+0x19c>
   1084c:	0900006f          	j	108dc <_malloc_r+0x5e8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2375
#if MALLOC_ALIGN != 16
    /* Also scan the next one, since it would have a remainder < MINSIZE */
    if (victim == q)
    {
      q = next_bin(q);
      victim = last(q);
   10850:	0187b403          	ld	s0,24(a5)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2388
      check_malloced_chunk(victim, nb);
      MALLOC_UNLOCK;
      return chunk2mem(victim);
    }

    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */
   10854:	0026869b          	addiw	a3,a3,2
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2378
    {
      q = next_bin(q);
      victim = last(q);
    }
#endif
    if (victim != q)
   10858:	b68780e3          	beq	a5,s0,103b8 <_malloc_r+0xc4>
   1085c:	cd9ff06f          	j	10534 <_malloc_r+0x240>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2508
            return chunk2mem(victim);
          }

          else if (remainder_size >= 0)  /* take */
          {
            set_inuse_bit_at_offset(victim, victim_size);
   10860:	00f407b3          	add	a5,s0,a5
   10864:	0087b703          	ld	a4,8(a5)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2509
            unlink(victim, bck, fwd);
   10868:	01843683          	ld	a3,24(s0)
   1086c:	01043603          	ld	a2,16(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2508
            return chunk2mem(victim);
          }

          else if (remainder_size >= 0)  /* take */
          {
            set_inuse_bit_at_offset(victim, victim_size);
   10870:	00176713          	ori	a4,a4,1
   10874:	00e7b423          	sd	a4,8(a5)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2509
            unlink(victim, bck, fwd);
   10878:	00d63c23          	sd	a3,24(a2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2511
            check_malloced_chunk(victim, nb);
	    MALLOC_UNLOCK;
   1087c:	00098513          	mv	a0,s3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2509
          }

          else if (remainder_size >= 0)  /* take */
          {
            set_inuse_bit_at_offset(victim, victim_size);
            unlink(victim, bck, fwd);
   10880:	00c6b823          	sd	a2,16(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2511
            check_malloced_chunk(victim, nb);
	    MALLOC_UNLOCK;
   10884:	1e4000ef          	jal	10a68 <__malloc_unlock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2512
            return chunk2mem(victim);
   10888:	01040513          	addi	a0,s0,16
   1088c:	cddff06f          	j	10568 <_malloc_r+0x274>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2393 (discriminator 7)
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
   10890:	0007879b          	sext.w	a5,a5
   10894:	05c7851b          	addiw	a0,a5,92
   10898:	05b7859b          	addiw	a1,a5,91
   1089c:	0015169b          	slliw	a3,a0,0x1
   108a0:	ac9ff06f          	j	10368 <_malloc_r+0x74>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 6)
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
   108a4:	0067d713          	srli	a4,a5,0x6
   108a8:	0007071b          	sext.w	a4,a4
   108ac:	0397059b          	addiw	a1,a4,57
   108b0:	0387061b          	addiw	a2,a4,56
   108b4:	0015959b          	slliw	a1,a1,0x1
   108b8:	f2dff06f          	j	107e4 <_malloc_r+0x4f0>
malloc_extend_top():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2169

  brk = (char*)(MORECORE (sbrk_size));

  /* Fail if sbrk failed or if a foreign sbrk call killed our space */
  if (brk == (char*)(MORECORE_FAILURE) || 
      (brk < old_end && old_top != initial_top))
   108bc:	db2404e3          	beq	s0,s2,10664 <_malloc_r+0x370>
   108c0:	01093403          	ld	s0,16(s2)
   108c4:	00843703          	ld	a4,8(s0)
   108c8:	ffc77713          	andi	a4,a4,-4
   108cc:	e85ff06f          	j	10750 <_malloc_r+0x45c>
_malloc_r():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2539
          binblocks &= ~block;
          break;
        }
        --startidx;
       q = prev_bin(q);
      } while (first(q) == q);
   108d0:	0108b783          	ld	a5,16(a7)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2537
        if ((startidx & (BINBLOCKWIDTH - 1)) == 0)
        {
          binblocks &= ~block;
          break;
        }
        --startidx;
   108d4:	fff6869b          	addiw	a3,a3,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2539
       q = prev_bin(q);
      } while (first(q) == q);
   108d8:	16f89863          	bne	a7,a5,10a48 <_malloc_r+0x754>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2532

      /* Clear out the block bit. */

      do   /* Possibly backtrack to try to clear a partial block */
      {
        if ((startidx & (BINBLOCKWIDTH - 1)) == 0)
   108dc:	0036f793          	andi	a5,a3,3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2538
        {
          binblocks &= ~block;
          break;
        }
        --startidx;
       q = prev_bin(q);
   108e0:	ff088893          	addi	a7,a7,-16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2532

      /* Clear out the block bit. */

      do   /* Possibly backtrack to try to clear a partial block */
      {
        if ((startidx & (BINBLOCKWIDTH - 1)) == 0)
   108e4:	fe0796e3          	bnez	a5,108d0 <_malloc_r+0x5dc>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2534
        {
          binblocks &= ~block;
   108e8:	00893783          	ld	a5,8(s2)
   108ec:	fff64713          	not	a4,a2
   108f0:	00f777b3          	and	a5,a4,a5
   108f4:	00f93423          	sd	a5,8(s2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2543
       q = prev_bin(q);
      } while (first(q) == q);

      /* Get to the next possibly nonempty block */

      if ( (block <<= 1) <= binblocks && (block != 0) ) 
   108f8:	00161613          	slli	a2,a2,0x1
   108fc:	d0c7e2e3          	bltu	a5,a2,10600 <_malloc_r+0x30c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2543 (discriminator 1)
   10900:	d00600e3          	beqz	a2,10600 <_malloc_r+0x30c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2545
      {
        while ((block & binblocks) == 0)
   10904:	00f67733          	and	a4,a2,a5
   10908:	00030693          	mv	a3,t1
   1090c:	b60714e3          	bnez	a4,10474 <_malloc_r+0x180>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2548
        {
          idx += BINBLOCKWIDTH;
          block <<= 1;
   10910:	00161613          	slli	a2,a2,0x1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2545

      /* Get to the next possibly nonempty block */

      if ( (block <<= 1) <= binblocks && (block != 0) ) 
      {
        while ((block & binblocks) == 0)
   10914:	00f67733          	and	a4,a2,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2547
        {
          idx += BINBLOCKWIDTH;
   10918:	0046869b          	addiw	a3,a3,4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2545

      /* Get to the next possibly nonempty block */

      if ( (block <<= 1) <= binblocks && (block != 0) ) 
      {
        while ((block & binblocks) == 0)
   1091c:	fe070ae3          	beqz	a4,10910 <_malloc_r+0x61c>
   10920:	b55ff06f          	j	10474 <_malloc_r+0x180>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2393 (discriminator 11)
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
   10924:	15400713          	li	a4,340
   10928:	04f76463          	bltu	a4,a5,10970 <_malloc_r+0x67c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2393 (discriminator 13)
   1092c:	00f4d593          	srli	a1,s1,0xf
   10930:	0005859b          	sext.w	a1,a1
   10934:	0785851b          	addiw	a0,a1,120
   10938:	0015169b          	slliw	a3,a0,0x1
   1093c:	0775859b          	addiw	a1,a1,119
   10940:	a29ff06f          	j	10368 <_malloc_r+0x74>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 27)
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
   10944:	00893783          	ld	a5,8(s2)
   10948:	4026571b          	sraiw	a4,a2,0x2
   1094c:	00100613          	li	a2,1
   10950:	00e61733          	sll	a4,a2,a4
   10954:	00f767b3          	or	a5,a4,a5
   10958:	00f93423          	sd	a5,8(s2)
   1095c:	00058713          	mv	a4,a1
   10960:	eb5ff06f          	j	10814 <_malloc_r+0x520>
malloc_extend_top():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2225
      /* A double fencepost is necessary to prevent consolidation */

      /* If not enough space to do this, then user did something very wrong */
      if (old_top_size < MINSIZE) 
      {
        set_head(top, PREV_INUSE); /* will force null return from malloc */
   10964:	00100793          	li	a5,1
   10968:	00fab423          	sd	a5,8(s5)
   1096c:	df5ff06f          	j	10760 <_malloc_r+0x46c>
_malloc_r():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2393 (discriminator 14)
    idx += 2; /* Set for bin scan below. We've already scanned 2 bins. */

  }
  else
  {
    idx = bin_index(nb);
   10970:	55400713          	li	a4,1364
   10974:	0fe00693          	li	a3,254
   10978:	07f00513          	li	a0,127
   1097c:	07e00593          	li	a1,126
   10980:	9ef764e3          	bltu	a4,a5,10368 <_malloc_r+0x74>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2393 (discriminator 16)
   10984:	0124d593          	srli	a1,s1,0x12
   10988:	0005859b          	sext.w	a1,a1
   1098c:	07d5851b          	addiw	a0,a1,125
   10990:	0015169b          	slliw	a3,a0,0x1
   10994:	07c5859b          	addiw	a1,a1,124
   10998:	9d1ff06f          	j	10368 <_malloc_r+0x74>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 10)
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
   1099c:	05400613          	li	a2,84
   109a0:	06e66063          	bltu	a2,a4,10a00 <_malloc_r+0x70c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 12)
   109a4:	00c7d713          	srli	a4,a5,0xc
   109a8:	0007071b          	sext.w	a4,a4
   109ac:	06f7059b          	addiw	a1,a4,111
   109b0:	06e7061b          	addiw	a2,a4,110
   109b4:	0015959b          	slliw	a1,a1,0x1
   109b8:	e2dff06f          	j	107e4 <_malloc_r+0x4f0>
malloc_extend_top():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2176

  sbrked_mem += sbrk_size;

  if (brk == old_end /* can just add bytes to current top, unless
			previous correction failed */
      && ((POINTER_UINT)old_end & (pagesz - 1)) == 0)
   109bc:	034a1713          	slli	a4,s4,0x34
   109c0:	ca071ce3          	bnez	a4,10678 <_malloc_r+0x384>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2179
  {
    top_size = sbrk_size + old_top_size;
    set_head(top, top_size | PREV_INUSE);
   109c4:	01093683          	ld	a3,16(s2)
   109c8:	016b8733          	add	a4,s7,s6
   109cc:	00176713          	ori	a4,a4,1
   109d0:	00e6b423          	sd	a4,8(a3)
   109d4:	d59ff06f          	j	1072c <_malloc_r+0x438>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2203
    /* Guarantee the next brk will be at a page boundary */
    correction += pagesz - ((POINTER_UINT)(brk + sbrk_size) & (pagesz - 1));

    /* Allocate correction */
    new_brk = (char*)(MORECORE (correction));
    if (new_brk == (char*)(MORECORE_FAILURE))
   109d8:	00100713          	li	a4,1
   109dc:	00000a13          	li	s4,0
   109e0:	d01ff06f          	j	106e0 <_malloc_r+0x3ec>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2184
    set_head(top, top_size | PREV_INUSE);
  }
  else
  {
    if (sbrk_base == (char*)(-1))  /* First time through. Record base */
      sbrk_base = brk;
   109e4:	8151bc23          	sd	s5,-2024(gp) # 129f8 <__malloc_sbrk_base>
   109e8:	ca9ff06f          	j	10690 <_malloc_r+0x39c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2238
        SIZE_SZ|PREV_INUSE;
      chunk_at_offset(old_top, old_top_size + SIZE_SZ)->size =
        SIZE_SZ|PREV_INUSE;
      /* If possible, release the rest. */
      if (old_top_size >= MINSIZE) 
        fREe(RCALL chunk2mem(old_top));
   109ec:	01040593          	addi	a1,s0,16
   109f0:	00098513          	mv	a0,s3
   109f4:	430000ef          	jal	10e24 <_free_r>
   109f8:	000c2783          	lw	a5,0(s8)
   109fc:	d31ff06f          	j	1072c <_malloc_r+0x438>
_malloc_r():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 13)
      return chunk2mem(victim);
    }

    /* Else place in bin */

    frontlink(victim, victim_size, remainder_index, bck, fwd);
   10a00:	15400613          	li	a2,340
   10a04:	00e66e63          	bltu	a2,a4,10a20 <_malloc_r+0x72c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 15)
   10a08:	00f7d713          	srli	a4,a5,0xf
   10a0c:	0007071b          	sext.w	a4,a4
   10a10:	0787059b          	addiw	a1,a4,120
   10a14:	0777061b          	addiw	a2,a4,119
   10a18:	0015959b          	slliw	a1,a1,0x1
   10a1c:	dc9ff06f          	j	107e4 <_malloc_r+0x4f0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 16)
   10a20:	55400513          	li	a0,1364
   10a24:	0fe00593          	li	a1,254
   10a28:	07e00613          	li	a2,126
   10a2c:	dae56ce3          	bltu	a0,a4,107e4 <_malloc_r+0x4f0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2452 (discriminator 18)
   10a30:	0127d713          	srli	a4,a5,0x12
   10a34:	0007071b          	sext.w	a4,a4
   10a38:	07d7059b          	addiw	a1,a4,125
   10a3c:	07c7061b          	addiw	a2,a4,124
   10a40:	0015959b          	slliw	a1,a1,0x1
   10a44:	da1ff06f          	j	107e4 <_malloc_r+0x4f0>
   10a48:	00893783          	ld	a5,8(s2)
   10a4c:	eadff06f          	j	108f8 <_malloc_r+0x604>
   10a50:	0034d693          	srli	a3,s1,0x3
   10a54:	0006869b          	sext.w	a3,a3
   10a58:	0016879b          	addiw	a5,a3,1
   10a5c:	0017979b          	slliw	a5,a5,0x1
   10a60:	ab9ff06f          	j	10518 <_malloc_r+0x224>

0000000000010a64 <__malloc_lock>:
__malloc_lock():
   10a64:	00008067          	ret

0000000000010a68 <__malloc_unlock>:
__malloc_unlock():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mlock.c:58
}

void
__malloc_unlock (ptr)
     struct _reent *ptr;
{
   10a68:	00008067          	ret

0000000000010a6c <__register_exitproc>:
__register_exitproc():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   10a6c:	fd010113          	addi	sp,sp,-48
   10a70:	02813023          	sd	s0,32(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   10a74:	8081b403          	ld	s0,-2040(gp) # 129e8 <_global_impure_ptr>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   10a78:	00913c23          	sd	s1,24(sp)
   10a7c:	00050493          	mv	s1,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:80

#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
   10a80:	1f843503          	ld	a0,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:72
	(type, fn, arg, d),
	int type _AND
	void (*fn) (void) _AND
	void *arg _AND
	void *d)
{
   10a84:	01213823          	sd	s2,16(sp)
   10a88:	01313423          	sd	s3,8(sp)
   10a8c:	01413023          	sd	s4,0(sp)
   10a90:	02113423          	sd	ra,40(sp)
   10a94:	00058913          	mv	s2,a1
   10a98:	00060a13          	mv	s4,a2
   10a9c:	00068993          	mv	s3,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:81
#ifndef __SINGLE_THREAD__
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
   10aa0:	0c050463          	beqz	a0,10b68 <__register_exitproc+0xfc>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:83
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
  if (p->_ind >= _ATEXIT_SIZE)
   10aa4:	00852703          	lw	a4,8(a0)
   10aa8:	01f00793          	li	a5,31
   10aac:	0017059b          	addiw	a1,a4,1
   10ab0:	02e7de63          	ble	a4,a5,10aec <__register_exitproc+0x80>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:90
#ifndef _ATEXIT_DYNAMIC_ALLOC
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
   10ab4:	000107b7          	lui	a5,0x10
   10ab8:	2dc78793          	addi	a5,a5,732 # 102dc <malloc>
   10abc:	0a078c63          	beqz	a5,10b74 <__register_exitproc+0x108>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:93
	return -1;

      p = (struct _atexit *) malloc (sizeof *p);
   10ac0:	31800513          	li	a0,792
   10ac4:	819ff0ef          	jal	102dc <malloc>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:94
      if (p == NULL)
   10ac8:	0a050663          	beqz	a0,10b74 <__register_exitproc+0x108>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   10acc:	1f843783          	ld	a5,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:101
#ifndef __SINGLE_THREAD__
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
   10ad0:	00052423          	sw	zero,8(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_next = _GLOBAL_ATEXIT;
      _GLOBAL_ATEXIT = p;
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
      p->_on_exit_args._is_cxa = 0;
   10ad4:	00100593          	li	a1,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:102
	  __lock_release_recursive(__atexit_lock);
#endif
	  return -1;
	}
      p->_ind = 0;
      p->_next = _GLOBAL_ATEXIT;
   10ad8:	00f53023          	sd	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:103
      _GLOBAL_ATEXIT = p;
   10adc:	1ea43c23          	sd	a0,504(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:105
#ifndef _REENT_SMALL
      p->_on_exit_args._fntypes = 0;
   10ae0:	30052823          	sw	zero,784(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:106
      p->_on_exit_args._is_cxa = 0;
   10ae4:	30052a23          	sw	zero,788(a0)
   10ae8:	00000713          	li	a4,0
   10aec:	00070793          	mv	a5,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:113
      p->_on_exit_args_ptr = NULL;
#endif
#endif
    }

  if (type != __et_atexit)
   10af0:	02049e63          	bnez	s1,10b2c <__register_exitproc+0xc0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:142
      args->_fntypes |= (1 << p->_ind);
      args->_dso_handle[p->_ind] = d;
      if (type == __et_cxa)
	args->_is_cxa |= (1 << p->_ind);
    }
  p->_fns[p->_ind++] = fn;
   10af4:	00278793          	addi	a5,a5,2
   10af8:	00379793          	slli	a5,a5,0x3
   10afc:	00b52423          	sw	a1,8(a0)
   10b00:	00f50533          	add	a0,a0,a5
   10b04:	01253023          	sd	s2,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:146
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif
  return 0;
   10b08:	00000513          	li	a0,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:147
}
   10b0c:	02813083          	ld	ra,40(sp)
   10b10:	02013403          	ld	s0,32(sp)
   10b14:	01813483          	ld	s1,24(sp)
   10b18:	01013903          	ld	s2,16(sp)
   10b1c:	00813983          	ld	s3,8(sp)
   10b20:	00013a03          	ld	s4,0(sp)
   10b24:	03010113          	addi	sp,sp,48
   10b28:	00008067          	ret
   10b2c:	00371813          	slli	a6,a4,0x3
   10b30:	01050833          	add	a6,a0,a6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:136
	  p->_on_exit_args_ptr = args;
	}
#else
      args = &p->_on_exit_args;
#endif
      args->_fnargs[p->_ind] = arg;
   10b34:	11483823          	sd	s4,272(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:137
      args->_fntypes |= (1 << p->_ind);
   10b38:	31052883          	lw	a7,784(a0)
   10b3c:	00100613          	li	a2,1
   10b40:	00e6173b          	sllw	a4,a2,a4
   10b44:	00e8e633          	or	a2,a7,a4
   10b48:	30c52823          	sw	a2,784(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:138
      args->_dso_handle[p->_ind] = d;
   10b4c:	21383823          	sd	s3,528(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:139
      if (type == __et_cxa)
   10b50:	00200693          	li	a3,2
   10b54:	fad490e3          	bne	s1,a3,10af4 <__register_exitproc+0x88>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:140
	args->_is_cxa |= (1 << p->_ind);
   10b58:	31452683          	lw	a3,788(a0)
   10b5c:	00e6e733          	or	a4,a3,a4
   10b60:	30e52a23          	sw	a4,788(a0)
   10b64:	f91ff06f          	j	10af4 <__register_exitproc+0x88>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:82
  __lock_acquire_recursive(__atexit_lock);
#endif

  p = _GLOBAL_ATEXIT;
  if (p == NULL)
    _GLOBAL_ATEXIT = p = _GLOBAL_ATEXIT0;
   10b68:	20040513          	addi	a0,s0,512
   10b6c:	1ea43c23          	sd	a0,504(s0)
   10b70:	f35ff06f          	j	10aa4 <__register_exitproc+0x38>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__atexit.c:91
      return -1;
#else
      /* Don't dynamically allocate the atexit array if malloc is not
	 available.  */
      if (!malloc)
	return -1;
   10b74:	fff00513          	li	a0,-1
   10b78:	f95ff06f          	j	10b0c <__register_exitproc+0xa0>

0000000000010b7c <__call_exitprocs>:
__call_exitprocs():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   10b7c:	fa010113          	addi	sp,sp,-96
   10b80:	03413823          	sd	s4,48(sp)
   10b84:	8081ba03          	ld	s4,-2040(gp) # 129e8 <_global_impure_ptr>
   10b88:	03313c23          	sd	s3,56(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   10b8c:	000109b7          	lui	s3,0x10
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:68
 */

void 
_DEFUN (__call_exitprocs, (code, d),
	int code _AND _PTR d)
{
   10b90:	04913423          	sd	s1,72(sp)
   10b94:	05213023          	sd	s2,64(sp)
   10b98:	03513423          	sd	s5,40(sp)
   10b9c:	01713c23          	sd	s7,24(sp)
   10ba0:	01813823          	sd	s8,16(sp)
   10ba4:	04113c23          	sd	ra,88(sp)
   10ba8:	04813823          	sd	s0,80(sp)
   10bac:	03613023          	sd	s6,32(sp)
   10bb0:	01913423          	sd	s9,8(sp)
   10bb4:	01a13023          	sd	s10,0(sp)
   10bb8:	00050913          	mv	s2,a0
   10bbc:	00058b93          	mv	s7,a1
   10bc0:	1f8a0a93          	addi	s5,s4,504
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   10bc4:	00100493          	li	s1,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10bc8:	fff00c13          	li	s8,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   10bcc:	2e898993          	addi	s3,s3,744 # 102e8 <free>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:83
  __lock_acquire_recursive(__atexit_lock);
#endif

 restart:

  p = _GLOBAL_ATEXIT;
   10bd0:	1f8a3b03          	ld	s6,504(s4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10bd4:	0c0b0463          	beqz	s6,10c9c <__call_exitprocs+0x120>
   10bd8:	000a8d13          	mv	s10,s5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10bdc:	008b2403          	lw	s0,8(s6)
   10be0:	fff4041b          	addiw	s0,s0,-1
   10be4:	02045263          	bgez	s0,10c08 <__call_exitprocs+0x8c>
   10be8:	08c0006f          	j	10c74 <__call_exitprocs+0xf8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99 (discriminator 2)
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   10bec:	02040793          	addi	a5,s0,32
   10bf0:	00379793          	slli	a5,a5,0x3
   10bf4:	00fb07b3          	add	a5,s6,a5
   10bf8:	1107b783          	ld	a5,272(a5)
   10bfc:	00fb8a63          	beq	s7,a5,10c10 <__call_exitprocs+0x94>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10c00:	fff4041b          	addiw	s0,s0,-1
   10c04:	07840863          	beq	s0,s8,10c74 <__call_exitprocs+0xf8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:99
	  int ind;

	  i = 1 << n;

	  /* Skip functions not from this dso.  */
	  if (d && (!args || args->_dso_handle[n] != d))
   10c08:	00040713          	mv	a4,s0
   10c0c:	fe0b90e3          	bnez	s7,10bec <__call_exitprocs+0x70>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
   10c10:	008b2783          	lw	a5,8(s6)
   10c14:	00371713          	slli	a4,a4,0x3
   10c18:	00eb0733          	add	a4,s6,a4
   10c1c:	fff7879b          	addiw	a5,a5,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:104
	  if (d && (!args || args->_dso_handle[n] != d))
	    continue;

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
   10c20:	01073683          	ld	a3,16(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:105
	  if (n == p->_ind - 1)
   10c24:	0a878c63          	beq	a5,s0,10cdc <__call_exitprocs+0x160>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:108
	    p->_ind--;
	  else
	    p->_fns[n] = NULL;
   10c28:	00073823          	sd	zero,16(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:111

	  /* Skip functions that have already been called.  */
	  if (!fn)
   10c2c:	fc068ae3          	beqz	a3,10c00 <__call_exitprocs+0x84>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117
	    continue;

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   10c30:	310b2783          	lw	a5,784(s6)
   10c34:	0084963b          	sllw	a2,s1,s0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:114

	  /* Skip functions that have already been called.  */
	  if (!fn)
	    continue;

	  ind = p->_ind;
   10c38:	008b2c83          	lw	s9,8(s6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:117

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
   10c3c:	00f677b3          	and	a5,a2,a5
   10c40:	08078a63          	beqz	a5,10cd4 <__call_exitprocs+0x158>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:119
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
   10c44:	314b2783          	lw	a5,788(s6)
   10c48:	00f67633          	and	a2,a2,a5
   10c4c:	08061c63          	bnez	a2,10ce4 <__call_exitprocs+0x168>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:120
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
   10c50:	11073583          	ld	a1,272(a4)
   10c54:	00090513          	mv	a0,s2
   10c58:	000680e7          	jalr	a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);

	  /* The function we called call atexit and registered another
	     function (or functions).  Call these new functions before
	     continuing with the already registered functions.  */
	  if (ind != p->_ind || *lastp != p)
   10c5c:	008b2783          	lw	a5,8(s6)
   10c60:	f79798e3          	bne	a5,s9,10bd0 <__call_exitprocs+0x54>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:127 (discriminator 1)
   10c64:	000d3783          	ld	a5,0(s10)
   10c68:	f76794e3          	bne	a5,s6,10bd0 <__call_exitprocs+0x54>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:92
#ifdef _REENT_SMALL
      args = p->_on_exit_args_ptr;
#else
      args = &p->_on_exit_args;
#endif
      for (n = p->_ind - 1; n >= 0; n--)
   10c6c:	fff4041b          	addiw	s0,s0,-1
   10c70:	f9841ce3          	bne	s0,s8,10c08 <__call_exitprocs+0x8c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:136
#ifndef _ATEXIT_DYNAMIC_ALLOC
      break;
#else
      /* Don't dynamically free the atexit array if free is not
	 available.  */
      if (!free)
   10c74:	02098463          	beqz	s3,10c9c <__call_exitprocs+0x120>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141
	break;

      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
   10c78:	008b2783          	lw	a5,8(s6)
   10c7c:	06079a63          	bnez	a5,10cf0 <__call_exitprocs+0x174>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:141 (discriminator 1)
   10c80:	000b3783          	ld	a5,0(s6)
   10c84:	08078063          	beqz	a5,10d04 <__call_exitprocs+0x188>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
	  *lastp = p->_next;
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   10c88:	000b0513          	mv	a0,s6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:144
      /* Move to the next block.  Free empty blocks except the last one,
	 which is part of _GLOBAL_REENT.  */
      if (p->_ind == 0 && p->_next)
	{
	  /* Remove empty block from the list.  */
	  *lastp = p->_next;
   10c8c:	00fd3023          	sd	a5,0(s10)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:149
#ifdef _REENT_SMALL
	  if (args)
	    free (args);
#endif
	  free (p);
   10c90:	e58ff0ef          	jal	102e8 <free>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:150
	  p = *lastp;
   10c94:	000d3b03          	ld	s6,0(s10)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10c98:	f40b12e3          	bnez	s6,10bdc <__call_exitprocs+0x60>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:163
    }
#ifndef __SINGLE_THREAD__
  __lock_release_recursive(__atexit_lock);
#endif

}
   10c9c:	05813083          	ld	ra,88(sp)
   10ca0:	05013403          	ld	s0,80(sp)
   10ca4:	04813483          	ld	s1,72(sp)
   10ca8:	04013903          	ld	s2,64(sp)
   10cac:	03813983          	ld	s3,56(sp)
   10cb0:	03013a03          	ld	s4,48(sp)
   10cb4:	02813a83          	ld	s5,40(sp)
   10cb8:	02013b03          	ld	s6,32(sp)
   10cbc:	01813b83          	ld	s7,24(sp)
   10cc0:	01013c03          	ld	s8,16(sp)
   10cc4:	00813c83          	ld	s9,8(sp)
   10cc8:	00013d03          	ld	s10,0(sp)
   10ccc:	06010113          	addi	sp,sp,96
   10cd0:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:118

	  ind = p->_ind;

	  /* Call the function.  */
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
   10cd4:	000680e7          	jalr	a3
   10cd8:	f85ff06f          	j	10c5c <__call_exitprocs+0xe0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:106

	  /* Remove the function now to protect against the
	     function calling exit recursively.  */
	  fn = p->_fns[n];
	  if (n == p->_ind - 1)
	    p->_ind--;
   10cdc:	008b2423          	sw	s0,8(s6)
   10ce0:	f4dff06f          	j	10c2c <__call_exitprocs+0xb0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:122
	  if (!args || (args->_fntypes & i) == 0)
	    fn ();
	  else if ((args->_is_cxa & i) == 0)
	    (*((void (*)(int, _PTR)) fn))(code, args->_fnargs[n]);
	  else
	    (*((void (*)(_PTR)) fn))(args->_fnargs[n]);
   10ce4:	11073503          	ld	a0,272(a4)
   10ce8:	000680e7          	jalr	a3
   10cec:	f71ff06f          	j	10c5c <__call_exitprocs+0xe0>
   10cf0:	000b3783          	ld	a5,0(s6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:154
	  free (p);
	  p = *lastp;
	}
      else
	{
	  lastp = &p->_next;
   10cf4:	000b0d13          	mv	s10,s6
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:155
	  p = p->_next;
   10cf8:	00078b13          	mv	s6,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/__call_atexit.c:85

 restart:

  p = _GLOBAL_ATEXIT;
  lastp = &_GLOBAL_ATEXIT;
  while (p)
   10cfc:	ee0b10e3          	bnez	s6,10bdc <__call_exitprocs+0x60>
   10d00:	f9dff06f          	j	10c9c <__call_exitprocs+0x120>
   10d04:	00000793          	li	a5,0
   10d08:	fedff06f          	j	10cf4 <__call_exitprocs+0x178>

0000000000010d0c <_malloc_trim_r>:
_malloc_trim_r():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3309
#if __STD_C
int malloc_trim(RARG size_t pad)
#else
int malloc_trim(RARG pad) RDECL size_t pad;
#endif
{
   10d0c:	fd010113          	addi	sp,sp,-48
   10d10:	01213823          	sd	s2,16(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3319

  unsigned long pagesz = malloc_getpagesize;

  MALLOC_LOCK;

  top_size = chunksize(top);
   10d14:	00012937          	lui	s2,0x12
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3309
#if __STD_C
int malloc_trim(RARG size_t pad)
#else
int malloc_trim(RARG pad) RDECL size_t pad;
#endif
{
   10d18:	02813023          	sd	s0,32(sp)
   10d1c:	00913c23          	sd	s1,24(sp)
   10d20:	00058413          	mv	s0,a1
   10d24:	01313423          	sd	s3,8(sp)
   10d28:	02113423          	sd	ra,40(sp)
   10d2c:	00050993          	mv	s3,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3319

  unsigned long pagesz = malloc_getpagesize;

  MALLOC_LOCK;

  top_size = chunksize(top);
   10d30:	1c890913          	addi	s2,s2,456 # 121c8 <__malloc_av_>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3317
  char* current_brk;     /* address returned by pre-check sbrk call */
  char* new_brk;         /* address returned by negative sbrk call */

  unsigned long pagesz = malloc_getpagesize;

  MALLOC_LOCK;
   10d34:	d31ff0ef          	jal	10a64 <__malloc_lock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3319

  top_size = chunksize(top);
   10d38:	01093703          	ld	a4,16(s2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3320
  extra = ((top_size - pad - MINSIZE + (pagesz-1)) / pagesz - 1) * pagesz;
   10d3c:	000017b7          	lui	a5,0x1
   10d40:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3319

  unsigned long pagesz = malloc_getpagesize;

  MALLOC_LOCK;

  top_size = chunksize(top);
   10d44:	00873483          	ld	s1,8(a4)
   10d48:	ffc4f493          	andi	s1,s1,-4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3320
  extra = ((top_size - pad - MINSIZE + (pagesz-1)) / pagesz - 1) * pagesz;
   10d4c:	40848433          	sub	s0,s1,s0
   10d50:	00b40433          	add	s0,s0,a1
   10d54:	00c45413          	srli	s0,s0,0xc
   10d58:	fff40413          	addi	s0,s0,-1
   10d5c:	00c41413          	slli	s0,s0,0xc
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3322

  if (extra < (long)pagesz)  /* Not enough memory to release */
   10d60:	00f44c63          	blt	s0,a5,10d78 <_malloc_trim_r+0x6c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3331
  }

  else
  {
    /* Test to make sure no one else called sbrk */
    current_brk = (char*)(MORECORE (0));
   10d64:	00000513          	li	a0,0
   10d68:	730000ef          	jal	11498 <sbrk>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3332
    if (current_brk != (char*)(top) + top_size)
   10d6c:	01093783          	ld	a5,16(s2)
   10d70:	009787b3          	add	a5,a5,s1
   10d74:	02f50663          	beq	a0,a5,10da0 <_malloc_trim_r+0x94>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3324
  top_size = chunksize(top);
  extra = ((top_size - pad - MINSIZE + (pagesz-1)) / pagesz - 1) * pagesz;

  if (extra < (long)pagesz)  /* Not enough memory to release */
  {
    MALLOC_UNLOCK;
   10d78:	00098513          	mv	a0,s3
   10d7c:	cedff0ef          	jal	10a68 <__malloc_unlock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3368
	MALLOC_UNLOCK;
        return 1;
      }
    }
  }
}
   10d80:	02813083          	ld	ra,40(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3325
  extra = ((top_size - pad - MINSIZE + (pagesz-1)) / pagesz - 1) * pagesz;

  if (extra < (long)pagesz)  /* Not enough memory to release */
  {
    MALLOC_UNLOCK;
    return 0;
   10d84:	00000513          	li	a0,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3368
	MALLOC_UNLOCK;
        return 1;
      }
    }
  }
}
   10d88:	02013403          	ld	s0,32(sp)
   10d8c:	01813483          	ld	s1,24(sp)
   10d90:	01013903          	ld	s2,16(sp)
   10d94:	00813983          	ld	s3,8(sp)
   10d98:	03010113          	addi	sp,sp,48
   10d9c:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3340
      return 0;     /* Apparently we don't own memory; must fail */
    }

    else
    {
      new_brk = (char*)(MORECORE (-extra));
   10da0:	40800533          	neg	a0,s0
   10da4:	6f4000ef          	jal	11498 <sbrk>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3342
      
      if (new_brk == (char*)(MORECORE_FAILURE)) /* sbrk failed? */
   10da8:	fff00793          	li	a5,-1
   10dac:	04f50463          	beq	a0,a5,10df4 <_malloc_trim_r+0xe8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3361

      else
      {
        /* Success. Adjust top accordingly. */
        set_head(top, (top_size - extra) | PREV_INUSE);
        sbrked_mem -= extra;
   10db0:	8801a783          	lw	a5,-1920(gp) # 12a60 <__malloc_current_mallinfo>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3360
      }

      else
      {
        /* Success. Adjust top accordingly. */
        set_head(top, (top_size - extra) | PREV_INUSE);
   10db4:	01093683          	ld	a3,16(s2)
   10db8:	408484b3          	sub	s1,s1,s0
   10dbc:	0014e493          	ori	s1,s1,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3361
        sbrked_mem -= extra;
   10dc0:	4087843b          	subw	s0,a5,s0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3363
        check_chunk(top);
	MALLOC_UNLOCK;
   10dc4:	00098513          	mv	a0,s3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3360
      }

      else
      {
        /* Success. Adjust top accordingly. */
        set_head(top, (top_size - extra) | PREV_INUSE);
   10dc8:	0096b423          	sd	s1,8(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3361
        sbrked_mem -= extra;
   10dcc:	8881a023          	sw	s0,-1920(gp) # 12a60 <__malloc_current_mallinfo>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3363
        check_chunk(top);
	MALLOC_UNLOCK;
   10dd0:	c99ff0ef          	jal	10a68 <__malloc_unlock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3368
        return 1;
      }
    }
  }
}
   10dd4:	02813083          	ld	ra,40(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3364
        /* Success. Adjust top accordingly. */
        set_head(top, (top_size - extra) | PREV_INUSE);
        sbrked_mem -= extra;
        check_chunk(top);
	MALLOC_UNLOCK;
        return 1;
   10dd8:	00100513          	li	a0,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3368
      }
    }
  }
}
   10ddc:	02013403          	ld	s0,32(sp)
   10de0:	01813483          	ld	s1,24(sp)
   10de4:	01013903          	ld	s2,16(sp)
   10de8:	00813983          	ld	s3,8(sp)
   10dec:	03010113          	addi	sp,sp,48
   10df0:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3345
      new_brk = (char*)(MORECORE (-extra));
      
      if (new_brk == (char*)(MORECORE_FAILURE)) /* sbrk failed? */
      {
        /* Try to figure out what we have */
        current_brk = (char*)(MORECORE (0));
   10df4:	00000513          	li	a0,0
   10df8:	6a0000ef          	jal	11498 <sbrk>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3346
        top_size = current_brk - (char*)top;
   10dfc:	01093703          	ld	a4,16(s2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3347
        if (top_size >= (long)MINSIZE) /* if not, we are very very dead! */
   10e00:	01f00693          	li	a3,31
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3346
      
      if (new_brk == (char*)(MORECORE_FAILURE)) /* sbrk failed? */
      {
        /* Try to figure out what we have */
        current_brk = (char*)(MORECORE (0));
        top_size = current_brk - (char*)top;
   10e04:	40e507b3          	sub	a5,a0,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3347
        if (top_size >= (long)MINSIZE) /* if not, we are very very dead! */
   10e08:	f6f6d8e3          	ble	a5,a3,10d78 <_malloc_trim_r+0x6c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3349
        {
          sbrked_mem = current_brk - sbrk_base;
   10e0c:	8181b683          	ld	a3,-2024(gp) # 129f8 <__malloc_sbrk_base>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3350
          set_head(top, top_size | PREV_INUSE);
   10e10:	0017e793          	ori	a5,a5,1
   10e14:	00f73423          	sd	a5,8(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:3349
        /* Try to figure out what we have */
        current_brk = (char*)(MORECORE (0));
        top_size = current_brk - (char*)top;
        if (top_size >= (long)MINSIZE) /* if not, we are very very dead! */
        {
          sbrked_mem = current_brk - sbrk_base;
   10e18:	40d50533          	sub	a0,a0,a3
   10e1c:	88a1a023          	sw	a0,-1920(gp) # 12a60 <__malloc_current_mallinfo>
   10e20:	f59ff06f          	j	10d78 <_malloc_trim_r+0x6c>

0000000000010e24 <_free_r>:
_free_r():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2644
  INTERNAL_SIZE_T prevsz; /* size of previous contiguous chunk */
  mchunkptr bck;       /* misc temp for linking */
  mchunkptr fwd;       /* misc temp for linking */
  int       islr;      /* track whether merging with last_remainder */

  if (mem == 0)                              /* free(0) has no effect */
   10e24:	10058263          	beqz	a1,10f28 <_free_r+0x104>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2626
#if __STD_C
void fREe(RARG Void_t* mem)
#else
void fREe(RARG mem) RDECL Void_t* mem;
#endif
{
   10e28:	fe010113          	addi	sp,sp,-32
   10e2c:	00813823          	sd	s0,16(sp)
   10e30:	00913423          	sd	s1,8(sp)
   10e34:	00058413          	mv	s0,a1
   10e38:	00050493          	mv	s1,a0
   10e3c:	00113c23          	sd	ra,24(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2647
  int       islr;      /* track whether merging with last_remainder */

  if (mem == 0)                              /* free(0) has no effect */
    return;

  MALLOC_LOCK;
   10e40:	c25ff0ef          	jal	10a64 <__malloc_lock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2650

  p = mem2chunk(mem);
  hd = p->size;
   10e44:	ff843503          	ld	a0,-8(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2649
  if (mem == 0)                              /* free(0) has no effect */
    return;

  MALLOC_LOCK;

  p = mem2chunk(mem);
   10e48:	ff040693          	addi	a3,s0,-16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2667
  
  sz = hd & ~PREV_INUSE;
  next = chunk_at_offset(p, sz);
  nextsz = chunksize(next);
  
  if (next == top)                            /* merge with top */
   10e4c:	000125b7          	lui	a1,0x12
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2663
  }
#endif
  
  check_inuse_chunk(p);
  
  sz = hd & ~PREV_INUSE;
   10e50:	ffe57793          	andi	a5,a0,-2
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2664
  next = chunk_at_offset(p, sz);
   10e54:	00f68633          	add	a2,a3,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2667
  nextsz = chunksize(next);
  
  if (next == top)                            /* merge with top */
   10e58:	1c858593          	addi	a1,a1,456 # 121c8 <__malloc_av_>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2665
  
  check_inuse_chunk(p);
  
  sz = hd & ~PREV_INUSE;
  next = chunk_at_offset(p, sz);
  nextsz = chunksize(next);
   10e5c:	00863703          	ld	a4,8(a2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2667
  
  if (next == top)                            /* merge with top */
   10e60:	0105b803          	ld	a6,16(a1)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2665
  
  check_inuse_chunk(p);
  
  sz = hd & ~PREV_INUSE;
  next = chunk_at_offset(p, sz);
  nextsz = chunksize(next);
   10e64:	ffc77713          	andi	a4,a4,-4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2667
  
  if (next == top)                            /* merge with top */
   10e68:	17060663          	beq	a2,a6,10fd4 <_free_r+0x1b0>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2687
      malloc_trim(RCALL top_pad); 
    MALLOC_UNLOCK;
    return;
  }

  set_head(next, nextsz);                    /* clear inuse bit */
   10e6c:	00e63423          	sd	a4,8(a2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2691

  islr = 0;

  if (!(hd & PREV_INUSE))                    /* consolidate backward */
   10e70:	00157513          	andi	a0,a0,1
   10e74:	02051663          	bnez	a0,10ea0 <_free_r+0x7c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2693
  {
    prevsz = p->prev_size;
   10e78:	ff043503          	ld	a0,-16(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2694
    p = chunk_at_offset(p, -prevsz);
   10e7c:	40a686b3          	sub	a3,a3,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2697
    sz += prevsz;
    
    if (p->fd == last_remainder)             /* keep as last_remainder */
   10e80:	0106b803          	ld	a6,16(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2695

  if (!(hd & PREV_INUSE))                    /* consolidate backward */
  {
    prevsz = p->prev_size;
    p = chunk_at_offset(p, -prevsz);
    sz += prevsz;
   10e84:	00a787b3          	add	a5,a5,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2697
    
    if (p->fd == last_remainder)             /* keep as last_remainder */
   10e88:	00012537          	lui	a0,0x12
   10e8c:	1d850513          	addi	a0,a0,472 # 121d8 <__malloc_av_+0x10>
   10e90:	18a80863          	beq	a6,a0,11020 <_free_r+0x1fc>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2700
      islr = 1;
    else
      unlink(p, bck, fwd);
   10e94:	0186b503          	ld	a0,24(a3)
   10e98:	00a83c23          	sd	a0,24(a6)
   10e9c:	01053823          	sd	a6,16(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2703
  }
  
  if (!(inuse_bit_at_offset(next, nextsz)))   /* consolidate forward */
   10ea0:	00e60533          	add	a0,a2,a4
   10ea4:	00853503          	ld	a0,8(a0)
   10ea8:	00157513          	andi	a0,a0,1
   10eac:	0e050a63          	beqz	a0,10fa0 <_free_r+0x17c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2717
    else
      unlink(next, bck, fwd);
  }


  set_head(p, sz | PREV_INUSE);
   10eb0:	0017e713          	ori	a4,a5,1
   10eb4:	00e6b423          	sd	a4,8(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2718
  set_foot(p, sz);
   10eb8:	00f68733          	add	a4,a3,a5
   10ebc:	00f73023          	sd	a5,0(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720
  if (!islr)
    frontlink(p, sz, idx, bck, fwd);  
   10ec0:	1ff00713          	li	a4,511
   10ec4:	06f76463          	bltu	a4,a5,10f2c <_free_r+0x108>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 1)
   10ec8:	0037d793          	srli	a5,a5,0x3
   10ecc:	0007879b          	sext.w	a5,a5
   10ed0:	0017871b          	addiw	a4,a5,1
   10ed4:	0017171b          	slliw	a4,a4,0x1
   10ed8:	00371713          	slli	a4,a4,0x3
   10edc:	0085b603          	ld	a2,8(a1)
   10ee0:	00e58733          	add	a4,a1,a4
   10ee4:	00073803          	ld	a6,0(a4)
   10ee8:	4027d79b          	sraiw	a5,a5,0x2
   10eec:	00100513          	li	a0,1
   10ef0:	00f517b3          	sll	a5,a0,a5
   10ef4:	00c7e7b3          	or	a5,a5,a2
   10ef8:	ff070613          	addi	a2,a4,-16
   10efc:	00c6bc23          	sd	a2,24(a3)
   10f00:	0106b823          	sd	a6,16(a3)
   10f04:	00f5b423          	sd	a5,8(a1)
   10f08:	00d73023          	sd	a3,0(a4)
   10f0c:	00d83c23          	sd	a3,24(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2683

    set_head(p, sz | PREV_INUSE);
    top = p;
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
      malloc_trim(RCALL top_pad); 
    MALLOC_UNLOCK;
   10f10:	00048513          	mv	a0,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2725
    frontlink(p, sz, idx, bck, fwd);  

  MALLOC_UNLOCK;

#endif /* MALLOC_PROVIDED */
}
   10f14:	01813083          	ld	ra,24(sp)
   10f18:	01013403          	ld	s0,16(sp)
   10f1c:	00813483          	ld	s1,8(sp)
   10f20:	02010113          	addi	sp,sp,32
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2683

    set_head(p, sz | PREV_INUSE);
    top = p;
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
      malloc_trim(RCALL top_pad); 
    MALLOC_UNLOCK;
   10f24:	b45ff06f          	j	10a68 <__malloc_unlock>
   10f28:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 2)


  set_head(p, sz | PREV_INUSE);
  set_foot(p, sz);
  if (!islr)
    frontlink(p, sz, idx, bck, fwd);  
   10f2c:	0097d713          	srli	a4,a5,0x9
   10f30:	00400613          	li	a2,4
   10f34:	12e66263          	bltu	a2,a4,11058 <_free_r+0x234>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 6)
   10f38:	0067d713          	srli	a4,a5,0x6
   10f3c:	0007071b          	sext.w	a4,a4
   10f40:	0397051b          	addiw	a0,a4,57
   10f44:	0387061b          	addiw	a2,a4,56
   10f48:	0015151b          	slliw	a0,a0,0x1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 26)
   10f4c:	00351513          	slli	a0,a0,0x3
   10f50:	00a58533          	add	a0,a1,a0
   10f54:	00053703          	ld	a4,0(a0)
   10f58:	ff050513          	addi	a0,a0,-16
   10f5c:	10e50c63          	beq	a0,a4,11074 <_free_r+0x250>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 30)
   10f60:	00873603          	ld	a2,8(a4)
   10f64:	ffc67613          	andi	a2,a2,-4
   10f68:	00c7f663          	bleu	a2,a5,10f74 <_free_r+0x150>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 32)
   10f6c:	01073703          	ld	a4,16(a4)
   10f70:	fee518e3          	bne	a0,a4,10f60 <_free_r+0x13c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 33)
   10f74:	01873503          	ld	a0,24(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 34)
   10f78:	00a6bc23          	sd	a0,24(a3)
   10f7c:	00e6b823          	sd	a4,16(a3)
   10f80:	00d53823          	sd	a3,16(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2725

  MALLOC_UNLOCK;

#endif /* MALLOC_PROVIDED */
}
   10f84:	01813083          	ld	ra,24(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2683

    set_head(p, sz | PREV_INUSE);
    top = p;
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
      malloc_trim(RCALL top_pad); 
    MALLOC_UNLOCK;
   10f88:	00048513          	mv	a0,s1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2725
    frontlink(p, sz, idx, bck, fwd);  

  MALLOC_UNLOCK;

#endif /* MALLOC_PROVIDED */
}
   10f8c:	01013403          	ld	s0,16(sp)
   10f90:	00813483          	ld	s1,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720


  set_head(p, sz | PREV_INUSE);
  set_foot(p, sz);
  if (!islr)
    frontlink(p, sz, idx, bck, fwd);  
   10f94:	00d73c23          	sd	a3,24(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2725

  MALLOC_UNLOCK;

#endif /* MALLOC_PROVIDED */
}
   10f98:	02010113          	addi	sp,sp,32
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2683

    set_head(p, sz | PREV_INUSE);
    top = p;
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
      malloc_trim(RCALL top_pad); 
    MALLOC_UNLOCK;
   10f9c:	acdff06f          	j	10a68 <__malloc_unlock>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2707
  
  if (!(inuse_bit_at_offset(next, nextsz)))   /* consolidate forward */
  {
    sz += nextsz;
    
    if (!islr && next->fd == last_remainder)  /* re-insert last_remainder */
   10fa0:	01063503          	ld	a0,16(a2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2705
      unlink(p, bck, fwd);
  }
  
  if (!(inuse_bit_at_offset(next, nextsz)))   /* consolidate forward */
  {
    sz += nextsz;
   10fa4:	00e787b3          	add	a5,a5,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2707
    
    if (!islr && next->fd == last_remainder)  /* re-insert last_remainder */
   10fa8:	00012737          	lui	a4,0x12
   10fac:	1d870713          	addi	a4,a4,472 # 121d8 <__malloc_av_+0x10>
   10fb0:	0ee50263          	beq	a0,a4,11094 <_free_r+0x270>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2713
    {
      islr = 1;
      link_last_remainder(p);   
    }
    else
      unlink(next, bck, fwd);
   10fb4:	01863803          	ld	a6,24(a2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2717
  }


  set_head(p, sz | PREV_INUSE);
   10fb8:	0017e613          	ori	a2,a5,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2718
  set_foot(p, sz);
   10fbc:	00f68733          	add	a4,a3,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2713
    {
      islr = 1;
      link_last_remainder(p);   
    }
    else
      unlink(next, bck, fwd);
   10fc0:	01053c23          	sd	a6,24(a0)
   10fc4:	00a83823          	sd	a0,16(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2717
  }


  set_head(p, sz | PREV_INUSE);
   10fc8:	00c6b423          	sd	a2,8(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2718
  set_foot(p, sz);
   10fcc:	00f73023          	sd	a5,0(a4)
   10fd0:	ef1ff06f          	j	10ec0 <_free_r+0x9c>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2671
  
  if (next == top)                            /* merge with top */
  {
    sz += nextsz;

    if (!(hd & PREV_INUSE))                    /* consolidate backward */
   10fd4:	00157513          	andi	a0,a0,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2669
  next = chunk_at_offset(p, sz);
  nextsz = chunksize(next);
  
  if (next == top)                            /* merge with top */
  {
    sz += nextsz;
   10fd8:	00e787b3          	add	a5,a5,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2671

    if (!(hd & PREV_INUSE))                    /* consolidate backward */
   10fdc:	02051063          	bnez	a0,10ffc <_free_r+0x1d8>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2673
    {
      prevsz = p->prev_size;
   10fe0:	ff043503          	ld	a0,-16(s0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2674
      p = chunk_at_offset(p, -prevsz);
   10fe4:	40a686b3          	sub	a3,a3,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2676
      sz += prevsz;
      unlink(p, bck, fwd);
   10fe8:	0186b703          	ld	a4,24(a3)
   10fec:	0106b603          	ld	a2,16(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2675

    if (!(hd & PREV_INUSE))                    /* consolidate backward */
    {
      prevsz = p->prev_size;
      p = chunk_at_offset(p, -prevsz);
      sz += prevsz;
   10ff0:	00a787b3          	add	a5,a5,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2676
      unlink(p, bck, fwd);
   10ff4:	00e63c23          	sd	a4,24(a2)
   10ff8:	00c73823          	sd	a2,16(a4)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2679
    }

    set_head(p, sz | PREV_INUSE);
   10ffc:	0017e613          	ori	a2,a5,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2681
    top = p;
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
   11000:	8201b703          	ld	a4,-2016(gp) # 12a00 <__malloc_trim_threshold>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2679
      p = chunk_at_offset(p, -prevsz);
      sz += prevsz;
      unlink(p, bck, fwd);
    }

    set_head(p, sz | PREV_INUSE);
   11004:	00c6b423          	sd	a2,8(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2680
    top = p;
   11008:	00d5b823          	sd	a3,16(a1)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2681
    if ((unsigned long)(sz) >= (unsigned long)trim_threshold) 
   1100c:	f0e7e2e3          	bltu	a5,a4,10f10 <_free_r+0xec>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2682
      malloc_trim(RCALL top_pad); 
   11010:	8381b583          	ld	a1,-1992(gp) # 12a18 <__malloc_top_pad>
   11014:	00048513          	mv	a0,s1
   11018:	cf5ff0ef          	jal	10d0c <_malloc_trim_r>
   1101c:	ef5ff06f          	j	10f10 <_free_r+0xec>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2703
      islr = 1;
    else
      unlink(p, bck, fwd);
  }
  
  if (!(inuse_bit_at_offset(next, nextsz)))   /* consolidate forward */
   11020:	00e605b3          	add	a1,a2,a4
   11024:	0085b583          	ld	a1,8(a1)
   11028:	0015f593          	andi	a1,a1,1
   1102c:	0e059a63          	bnez	a1,11120 <_free_r+0x2fc>
   11030:	01063583          	ld	a1,16(a2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2713
    {
      islr = 1;
      link_last_remainder(p);   
    }
    else
      unlink(next, bck, fwd);
   11034:	01863603          	ld	a2,24(a2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2705
      unlink(p, bck, fwd);
  }
  
  if (!(inuse_bit_at_offset(next, nextsz)))   /* consolidate forward */
  {
    sz += nextsz;
   11038:	00f707b3          	add	a5,a4,a5
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2717
    else
      unlink(next, bck, fwd);
  }


  set_head(p, sz | PREV_INUSE);
   1103c:	0017e713          	ori	a4,a5,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2713
    {
      islr = 1;
      link_last_remainder(p);   
    }
    else
      unlink(next, bck, fwd);
   11040:	00c5bc23          	sd	a2,24(a1)
   11044:	00b63823          	sd	a1,16(a2)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2717
  }


  set_head(p, sz | PREV_INUSE);
   11048:	00e6b423          	sd	a4,8(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2718
  set_foot(p, sz);
   1104c:	00f686b3          	add	a3,a3,a5
   11050:	00f6b023          	sd	a5,0(a3)
   11054:	ebdff06f          	j	10f10 <_free_r+0xec>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 7)
  if (!islr)
    frontlink(p, sz, idx, bck, fwd);  
   11058:	01400613          	li	a2,20
   1105c:	04e66e63          	bltu	a2,a4,110b8 <_free_r+0x294>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 9)
   11060:	0007071b          	sext.w	a4,a4
   11064:	05c7051b          	addiw	a0,a4,92
   11068:	05b7061b          	addiw	a2,a4,91
   1106c:	0015151b          	slliw	a0,a0,0x1
   11070:	eddff06f          	j	10f4c <_free_r+0x128>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 27)
   11074:	0085b783          	ld	a5,8(a1)
   11078:	4026571b          	sraiw	a4,a2,0x2
   1107c:	00100613          	li	a2,1
   11080:	00e61733          	sll	a4,a2,a4
   11084:	00f767b3          	or	a5,a4,a5
   11088:	00f5b423          	sd	a5,8(a1)
   1108c:	00050713          	mv	a4,a0
   11090:	ee9ff06f          	j	10f78 <_free_r+0x154>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2710
    sz += nextsz;
    
    if (!islr && next->fd == last_remainder)  /* re-insert last_remainder */
    {
      islr = 1;
      link_last_remainder(p);   
   11094:	02d5b423          	sd	a3,40(a1)
   11098:	02d5b023          	sd	a3,32(a1)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2717
    else
      unlink(next, bck, fwd);
  }


  set_head(p, sz | PREV_INUSE);
   1109c:	0017e713          	ori	a4,a5,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2710
    sz += nextsz;
    
    if (!islr && next->fd == last_remainder)  /* re-insert last_remainder */
    {
      islr = 1;
      link_last_remainder(p);   
   110a0:	00a6bc23          	sd	a0,24(a3)
   110a4:	00a6b823          	sd	a0,16(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2717
    else
      unlink(next, bck, fwd);
  }


  set_head(p, sz | PREV_INUSE);
   110a8:	00e6b423          	sd	a4,8(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2718
  set_foot(p, sz);
   110ac:	00f686b3          	add	a3,a3,a5
   110b0:	00f6b023          	sd	a5,0(a3)
   110b4:	e5dff06f          	j	10f10 <_free_r+0xec>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 10)
  if (!islr)
    frontlink(p, sz, idx, bck, fwd);  
   110b8:	05400613          	li	a2,84
   110bc:	00e66e63          	bltu	a2,a4,110d8 <_free_r+0x2b4>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 12)
   110c0:	00c7d713          	srli	a4,a5,0xc
   110c4:	0007071b          	sext.w	a4,a4
   110c8:	06f7051b          	addiw	a0,a4,111
   110cc:	06e7061b          	addiw	a2,a4,110
   110d0:	0015151b          	slliw	a0,a0,0x1
   110d4:	e79ff06f          	j	10f4c <_free_r+0x128>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 13)
   110d8:	15400613          	li	a2,340
   110dc:	00e66e63          	bltu	a2,a4,110f8 <_free_r+0x2d4>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 15)
   110e0:	00f7d713          	srli	a4,a5,0xf
   110e4:	0007071b          	sext.w	a4,a4
   110e8:	0787051b          	addiw	a0,a4,120
   110ec:	0777061b          	addiw	a2,a4,119
   110f0:	0015151b          	slliw	a0,a0,0x1
   110f4:	e59ff06f          	j	10f4c <_free_r+0x128>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 16)
   110f8:	55400813          	li	a6,1364
   110fc:	0fe00513          	li	a0,254
   11100:	07e00613          	li	a2,126
   11104:	e4e864e3          	bltu	a6,a4,10f4c <_free_r+0x128>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2720 (discriminator 18)
   11108:	0127d713          	srli	a4,a5,0x12
   1110c:	0007071b          	sext.w	a4,a4
   11110:	07d7051b          	addiw	a0,a4,125
   11114:	07c7061b          	addiw	a2,a4,124
   11118:	0015151b          	slliw	a0,a0,0x1
   1111c:	e31ff06f          	j	10f4c <_free_r+0x128>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2717
    else
      unlink(next, bck, fwd);
  }


  set_head(p, sz | PREV_INUSE);
   11120:	0017e713          	ori	a4,a5,1
   11124:	00e6b423          	sd	a4,8(a3)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/stdlib/mallocr.c:2718
  set_foot(p, sz);
   11128:	00f686b3          	add	a3,a3,a5
   1112c:	00f6b023          	sd	a5,0(a3)
   11130:	de1ff06f          	j	10f10 <_free_r+0xec>

0000000000011134 <__syscall_error>:
__syscall_error():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:95

#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
   11134:	ff010113          	addi	sp,sp,-16
   11138:	00113423          	sd	ra,8(sp)
   1113c:	00813023          	sd	s0,0(sp)
   11140:	00050413          	mv	s0,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
  errno = -a0;
   11144:	3c0000ef          	jal	11504 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   11148:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:96
#define syscall_errno(n, a, b, c, d) \
        __internal_syscall(n, (long)(a), (long)(b), (long)(c), (long)(d))

long __syscall_error(long a0)
{
  errno = -a0;
   1114c:	408007bb          	negw	a5,s0
   11150:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:98
  return -1;
}
   11154:	00013403          	ld	s0,0(sp)
   11158:	fff00513          	li	a0,-1
   1115c:	01010113          	addi	sp,sp,16
   11160:	00008067          	ret

0000000000011164 <open>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   11164:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   11168:	40000893          	li	a7,1024
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1116c:	00000073          	ecall
   11170:	fc0542e3          	bltz	a0,11134 <__syscall_error>
open():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:103

int open(const char* name, int flags, int mode)
{
  return syscall_errno(SYS_open, name, flags, mode, 0);
}
   11174:	0005051b          	sext.w	a0,a0
   11178:	00008067          	ret

000000000001117c <openat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   1117c:	03800893          	li	a7,56
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   11180:	00000073          	ecall
   11184:	fa0548e3          	bltz	a0,11134 <__syscall_error>
openat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:112
//------------------------------------------------------------------------
// Open file relative to given directory
int openat(int dirfd, const char* name, int flags, int mode)
{
  return syscall_errno(SYS_openat, dirfd, name, flags, mode);
}
   11188:	0005051b          	sext.w	a0,a0
   1118c:	00008067          	ret

0000000000011190 <lseek>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   11190:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   11194:	03e00893          	li	a7,62
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   11198:	00000073          	ecall
   1119c:	f8054ce3          	bltz	a0,11134 <__syscall_error>
lseek():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:122
// Set position in a file.

off_t lseek(int file, off_t ptr, int dir)
{
  return syscall_errno(SYS_lseek, file, ptr, dir, 0);
}
   111a0:	00008067          	ret

00000000000111a4 <read>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   111a4:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   111a8:	03f00893          	li	a7,63
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   111ac:	00000073          	ecall
   111b0:	f80542e3          	bltz	a0,11134 <__syscall_error>
read():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:132
// Read from a file.

ssize_t read(int file, void* ptr, size_t len)
{
  return syscall_errno(SYS_read, file, ptr, len, 0);
}
   111b4:	00008067          	ret

00000000000111b8 <write>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
   111b8:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   111bc:	04000893          	li	a7,64
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   111c0:	00000073          	ecall
   111c4:	f60548e3          	bltz	a0,11134 <__syscall_error>
write():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:142
// Write to a file.

ssize_t write(int file, const void* ptr, size_t len)
{
  return syscall_errno(SYS_write, file, ptr, len, 0);
}
   111c8:	00008067          	ret

00000000000111cc <fstat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   111cc:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   111d0:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   111d4:	05000893          	li	a7,80
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   111d8:	00000073          	ecall
   111dc:	f4054ce3          	bltz	a0,11134 <__syscall_error>
fstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:153
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
}
   111e0:	0005051b          	sext.w	a0,a0
   111e4:	00008067          	ret

00000000000111e8 <stat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   111e8:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   111ec:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   111f0:	40e00893          	li	a7,1038
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   111f4:	00000073          	ecall
   111f8:	f2054ee3          	bltz	a0,11134 <__syscall_error>
stat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:163
// Status of a file (by name).

int stat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_stat, file, st, 0, 0);
}
   111fc:	0005051b          	sext.w	a0,a0
   11200:	00008067          	ret

0000000000011204 <lstat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   11204:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   11208:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1120c:	40f00893          	li	a7,1039
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   11210:	00000073          	ecall
   11214:	f20540e3          	bltz	a0,11134 <__syscall_error>
lstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:173
// Status of a link (by name).

int lstat(const char* file, struct stat* st)
{
  return syscall_errno(SYS_lstat, file, st, 0, 0);
}
   11218:	0005051b          	sext.w	a0,a0
   1121c:	00008067          	ret

0000000000011220 <fstatat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   11220:	04f00893          	li	a7,79
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   11224:	00000073          	ecall
   11228:	f00546e3          	bltz	a0,11134 <__syscall_error>
fstatat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:183
// Status of a file (by name) in a given directory.

int fstatat(int dirfd, const char* file, struct stat* st, int flags)
{
  return syscall_errno(SYS_fstatat, dirfd, file, st, flags);
}
   1122c:	0005051b          	sext.w	a0,a0
   11230:	00008067          	ret

0000000000011234 <access>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   11234:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   11238:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1123c:	40900893          	li	a7,1033
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   11240:	00000073          	ecall
   11244:	ee0548e3          	bltz	a0,11134 <__syscall_error>
access():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:193
// Permissions of a file (by name).

int access(const char* file, int mode)
{
  return syscall_errno(SYS_access, file, mode, 0, 0);
}
   11248:	0005051b          	sext.w	a0,a0
   1124c:	00008067          	ret

0000000000011250 <faccessat>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
  register long a3 asm("a3") = _a3;
  register long a7 asm("a7") = n;
   11250:	03000893          	li	a7,48
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   11254:	00000073          	ecall
   11258:	ec054ee3          	bltz	a0,11134 <__syscall_error>
faccessat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:203
// Permissions of a file (by name) in a given directory.

int faccessat(int dirfd, const char* file, int mode, int flags)
{
  return syscall_errno(SYS_faccessat, dirfd, file, mode, flags);
}
   1125c:	0005051b          	sext.w	a0,a0
   11260:	00008067          	ret

0000000000011264 <close>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   11264:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   11268:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   1126c:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   11270:	03900893          	li	a7,57
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   11274:	00000073          	ecall
   11278:	ea054ee3          	bltz	a0,11134 <__syscall_error>
close():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:213
// Close a file.

int close(int file) 
{
  return syscall_errno(SYS_close, file, 0, 0, 0);
}
   1127c:	0005051b          	sext.w	a0,a0
   11280:	00008067          	ret

0000000000011284 <link>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
  register long a2 asm("a2") = _a2;
   11284:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   11288:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   1128c:	40100893          	li	a7,1025
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   11290:	00000073          	ecall
   11294:	ea0540e3          	bltz	a0,11134 <__syscall_error>
link():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:223
// Establish a new name for an existing file.

int link(const char* old_name, const char* new_name)
{
  return syscall_errno(SYS_link, old_name, new_name, 0, 0);
}
   11298:	0005051b          	sext.w	a0,a0
   1129c:	00008067          	ret

00000000000112a0 <unlink>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   112a0:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   112a4:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   112a8:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   112ac:	40200893          	li	a7,1026
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   112b0:	00000073          	ecall
   112b4:	e80540e3          	bltz	a0,11134 <__syscall_error>
unlink():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:233
// Remove a file's directory entry.

int unlink(const char* name)
{
  return syscall_errno(SYS_unlink, name, 0, 0, 0);
}
   112b8:	0005051b          	sext.w	a0,a0
   112bc:	00008067          	ret

00000000000112c0 <execve>:
execve():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:242
//------------------------------------------------------------------------
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
   112c0:	ff010113          	addi	sp,sp,-16
   112c4:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
  errno = ENOMEM;
   112c8:	23c000ef          	jal	11504 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   112cc:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:243
// Transfer control to a new process. Minimal implementation for a
// system without processes from newlib documentation.

int execve(const char* name, char* const argv[], char* const env[])
{
  errno = ENOMEM;
   112d0:	00c00793          	li	a5,12
   112d4:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:245
  return -1;
}
   112d8:	01010113          	addi	sp,sp,16
   112dc:	fff00513          	li	a0,-1
   112e0:	00008067          	ret

00000000000112e4 <fork>:
fork():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:254
//------------------------------------------------------------------------
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
   112e4:	ff010113          	addi	sp,sp,-16
   112e8:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
  errno = EAGAIN;
   112ec:	218000ef          	jal	11504 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   112f0:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:255
// Create a new process. Minimal implementation for a system without
// processes from newlib documentation.

int fork() 
{
  errno = EAGAIN;
   112f4:	00b00793          	li	a5,11
   112f8:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:257
  return -1;
}
   112fc:	01010113          	addi	sp,sp,16
   11300:	fff00513          	li	a0,-1
   11304:	00008067          	ret

0000000000011308 <getpid>:
getpid():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:269
// system without processes just returns 1.

int getpid() 
{
  return 1;
}
   11308:	00100513          	li	a0,1
   1130c:	00008067          	ret

0000000000011310 <kill>:
kill():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:278
//------------------------------------------------------------------------
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
   11310:	ff010113          	addi	sp,sp,-16
   11314:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
  errno = EINVAL;
   11318:	1ec000ef          	jal	11504 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   1131c:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:279
// Send a signal. Minimal implementation for a system without processes
// just causes an error.

int kill(int pid, int sig)
{
  errno = EINVAL;
   11320:	01600793          	li	a5,22
   11324:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:281
  return -1;
}
   11328:	01010113          	addi	sp,sp,16
   1132c:	fff00513          	li	a0,-1
   11330:	00008067          	ret

0000000000011334 <wait>:
wait():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:290
//------------------------------------------------------------------------
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
   11334:	ff010113          	addi	sp,sp,-16
   11338:	00113423          	sd	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
  errno = ECHILD;
   1133c:	1c8000ef          	jal	11504 <__errno>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   11340:	00813083          	ld	ra,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:291
// Wait for a child process. Minimal implementation for a system without
// processes just causes an error.

int wait(int* status)
{
  errno = ECHILD;
   11344:	00a00793          	li	a5,10
   11348:	00f52023          	sw	a5,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:293
  return -1;
}
   1134c:	01010113          	addi	sp,sp,16
   11350:	fff00513          	li	a0,-1
   11354:	00008067          	ret

0000000000011358 <isatty>:
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:303
// Query whether output stream is a terminal. For consistency with the
// other minimal implementations, which only support output to stdout,
// this minimal implementation is suggested by the newlib docs.

int isatty(int file)
{
   11358:	f8010113          	addi	sp,sp,-128
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   1135c:	00010593          	mv	a1,sp
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   11360:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   11364:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   11368:	05000893          	li	a7,80
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   1136c:	00000073          	ecall
   11370:	dc0542e3          	bltz	a0,11134 <__syscall_error>
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   11374:	fff00793          	li	a5,-1
fstat():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:152
// Status of an open file. The sys/stat.h header file required is
// distributed in the include subdirectory for this C library.

int fstat(int file, struct stat* st)
{
  return syscall_errno(SYS_fstat, file, st, 0, 0);
   11378:	0005051b          	sext.w	a0,a0
isatty():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306

int isatty(int file)
{
  struct stat s;
  int ret = fstat(file,&s);
  return ret == -1 ? -1 : !!(s.st_mode & S_IFCHR);
   1137c:	00f50863          	beq	a0,a5,1138c <isatty+0x34>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:306 (discriminator 1)
   11380:	01012503          	lw	a0,16(sp)
   11384:	40d5551b          	sraiw	a0,a0,0xd
   11388:	00157513          	andi	a0,a0,1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:307 (discriminator 4)
}
   1138c:	08010113          	addi	sp,sp,128
   11390:	00008067          	ret

0000000000011394 <times>:
times():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329

clock_t times(struct tms* buf)
{
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   11394:	8a818313          	addi	t1,gp,-1880 # 12a88 <t0.2343>
   11398:	00033703          	ld	a4,0(t1)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:326
// children's times to zero. Eventually we might want to separately
// account for user vs system time, but for now we just return the total
// number of cycles since starting the program.

clock_t times(struct tms* buf)
{
   1139c:	ff010113          	addi	sp,sp,-16
   113a0:	00050813          	mv	a6,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:329
  // when called for the first time, initialize t0
  static struct timeval t0;
  if(t0.tv_sec == 0)
   113a4:	02071063          	bnez	a4,113c4 <times+0x30>
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   113a8:	8a818513          	addi	a0,gp,-1880 # 12a88 <t0.2343>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   113ac:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   113b0:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   113b4:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   113b8:	0a900893          	li	a7,169
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   113bc:	00000073          	ecall
   113c0:	d6054ae3          	bltz	a0,11134 <__syscall_error>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   113c4:	00010513          	mv	a0,sp
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   113c8:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   113cc:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   113d0:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   113d4:	0a900893          	li	a7,169
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   113d8:	00000073          	ecall
   113dc:	d4054ce3          	bltz	a0,11134 <__syscall_error>
times():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   113e0:	00033703          	ld	a4,0(t1)
   113e4:	00013783          	ld	a5,0(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   113e8:	fff00513          	li	a0,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   113ec:	00083823          	sd	zero,16(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   113f0:	40e786b3          	sub	a3,a5,a4
   113f4:	000f47b7          	lui	a5,0xf4
   113f8:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xe1060>
   113fc:	02f68733          	mul	a4,a3,a5
   11400:	00833683          	ld	a3,8(t1)
   11404:	00813783          	ld	a5,8(sp)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:337
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
   11408:	00083c23          	sd	zero,24(a6)
   1140c:	00083423          	sd	zero,8(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   11410:	40d787b3          	sub	a5,a5,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   11414:	01010113          	addi	sp,sp,16
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:336

  struct timeval t;
  gettimeofday(&t,0);

  long long utime = (t.tv_sec-t0.tv_sec)*1000000 + (t.tv_usec-t0.tv_usec);
  buf->tms_utime = utime*CLOCKS_PER_SEC/1000000;
   11418:	00f707b3          	add	a5,a4,a5
   1141c:	00f83023          	sd	a5,0(a6)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:340
  buf->tms_stime = buf->tms_cstime = buf->tms_cutime = 0;
  
  return -1;
}
   11420:	00008067          	ret

0000000000011424 <gettimeofday>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   11424:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   11428:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   1142c:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   11430:	0a900893          	li	a7,169
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   11434:	00000073          	ecall
   11438:	ce054ee3          	bltz	a0,11134 <__syscall_error>
gettimeofday():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:350
// Get the current time.  Only relatively correct.

int gettimeofday(struct timeval* tp, void* tzp)
{
  return syscall_errno(SYS_gettimeofday, tp, 0, 0, 0);
}
   1143c:	0005051b          	sext.w	a0,a0
   11440:	00008067          	ret

0000000000011444 <ftime>:
ftime():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:359
//----------------------------------------------------------------------
// Get the current time.  Only relatively correct.

int ftime(struct timeb* tp)
{
  tp->time = tp->millitm = 0;
   11444:	00051423          	sh	zero,8(a0)
   11448:	00053023          	sd	zero,0(a0)
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:361
  return 0;
}
   1144c:	00000513          	li	a0,0
   11450:	00008067          	ret

0000000000011454 <utime>:
utime():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:371
// Stub.

int utime(const char* path, const struct utimbuf* times)
{
  return -1;
}
   11454:	fff00513          	li	a0,-1
   11458:	00008067          	ret

000000000001145c <chown>:
chown():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:381
// Stub.

int chown(const char* path, uid_t owner, gid_t group)
{
  return -1;
}
   1145c:	fff00513          	li	a0,-1
   11460:	00008067          	ret

0000000000011464 <chmod>:
chmod():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:391
// Stub.

int chmod(const char* path, mode_t mode)
{
  return -1;
}
   11464:	fff00513          	li	a0,-1
   11468:	00008067          	ret

000000000001146c <chdir>:
chdir():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:401
// Stub.

int chdir(const char* path)
{
  return -1;
}
   1146c:	fff00513          	li	a0,-1
   11470:	00008067          	ret

0000000000011474 <getcwd>:
getcwd():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:411
// Stub.

char* getcwd(char* buf, size_t size)
{
  return NULL;
}
   11474:	00000513          	li	a0,0
   11478:	00008067          	ret

000000000001147c <sysconf>:
sysconf():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:420
//----------------------------------------------------------------------
// Get configurable system variables

long sysconf(int name)
{
  switch(name)
   1147c:	00200793          	li	a5,2
   11480:	00f51863          	bne	a0,a5,11490 <sysconf+0x14>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:423
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
   11484:	000f4537          	lui	a0,0xf4
   11488:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xe1060>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:427
  }

  return -1;
}
   1148c:	00008067          	ret
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:426
  {
    case _SC_CLK_TCK:
      return CLOCKS_PER_SEC;
  }

  return -1;
   11490:	fff00513          	li	a0,-1
   11494:	00008067          	ret

0000000000011498 <sbrk>:
sbrk():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
void* sbrk(ptrdiff_t incr)
{
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   11498:	8401b703          	ld	a4,-1984(gp) # 12a20 <heap_end.2381>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:438
// on this, it is useful to have a working implementation. The following
// is suggested by the newlib docs and suffices for a standalone
// system.

void* sbrk(ptrdiff_t incr)
{
   1149c:	00050793          	mv	a5,a0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:442
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
   114a0:	00071663          	bnez	a4,114ac <sbrk+0x14>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:443
    heap_end = (long)_end;
   114a4:	8b818713          	addi	a4,gp,-1864 # 12a98 <_end>
   114a8:	84e1b023          	sd	a4,-1984(gp) # 12a20 <heap_end.2381>
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:49
#define SYS_dup 23

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
   114ac:	00e78533          	add	a0,a5,a4
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50
  register long a1 asm("a1") = _a1;
   114b0:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   114b4:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   114b8:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   114bc:	0d600893          	li	a7,214
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   114c0:	00000073          	ecall
   114c4:	c60548e3          	bltz	a0,11134 <__syscall_error>
sbrk():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   114c8:	8401b683          	ld	a3,-1984(gp) # 12a20 <heap_end.2381>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:445
    return (void*)-1;
   114cc:	fff00713          	li	a4,-1
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:444
  extern unsigned char _end[]; // Defined by linker
  static unsigned long heap_end;

  if (heap_end == 0)
    heap_end = (long)_end;
  if (syscall_errno(SYS_brk, heap_end + incr, 0, 0, 0) != heap_end + incr)
   114d0:	00d787b3          	add	a5,a5,a3
   114d4:	00f51663          	bne	a0,a5,114e0 <sbrk+0x48>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:447
    return (void*)-1;

  heap_end += incr;
   114d8:	84a1b023          	sd	a0,-1984(gp) # 12a20 <heap_end.2381>
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:448
  return heap_end - incr;
   114dc:	00068713          	mv	a4,a3
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/syscalls.c:449
}
   114e0:	00070513          	mv	a0,a4
   114e4:	00008067          	ret

00000000000114e8 <_exit>:
__internal_syscall():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:50

static inline long
__internal_syscall(long n, long _a0, long _a1, long _a2, long _a3)
{
  register long a0 asm("a0") = _a0;
  register long a1 asm("a1") = _a1;
   114e8:	00000593          	li	a1,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:51
  register long a2 asm("a2") = _a2;
   114ec:	00000613          	li	a2,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:52
  register long a3 asm("a3") = _a3;
   114f0:	00000693          	li	a3,0
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:53
  register long a7 asm("a7") = n;
   114f4:	05d00893          	li	a7,93
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/libgloss/riscv/machine/syscall.h:55

  asm volatile ("scall\n"
   114f8:	00000073          	ecall
   114fc:	c2054ce3          	bltz	a0,11134 <__syscall_error>
   11500:	0000006f          	j	11500 <_exit+0x18>

0000000000011504 <__errno>:
__errno():
/home/francis/Documents/arch/lab2.1/lab-2-1/RISC-V/riscv-tools/riscv-gnu-toolchain/build/src/newlib-gcc/newlib/libc/errno/errno.c:14

int *
__errno ()
{
  return &_REENT->_errno;
}
   11504:	8101b503          	ld	a0,-2032(gp) # 129f0 <_impure_ptr>
   11508:	00008067          	ret
