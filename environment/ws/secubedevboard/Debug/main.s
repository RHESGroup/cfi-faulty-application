	.cpu cortex-m4
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.comm	se3_algo_impl_t,1,1
	.comm	inputBuffer,2120,4
	.comm	commandBuffer,1092,4
	.comm	logBuffer,1092,4
	.section	.data.pin,"aw"
	.align	2
	.type	pin, %object
	.size	pin, 32
pin:
	.ascii	"hell\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.ascii	"\000\000\000"
	.comm	vectorTable_RAM,1024,512
	.section	.rodata
	.align	2
.LC0:
	.ascii	"at+rst\015\012\000"
	.section	.text.main,"ax",%progbits
	.align	1
	.global	main
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r2, .L5
	ldr	r3, [r7, #12]
	ldr	r2, [r2, r3, lsl #2]
	ldr	r1, .L5+4
	ldr	r3, [r7, #12]
	str	r2, [r1, r3, lsl #2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	cmp	r3, #255
	bls	.L3
	.syntax unified
@ 71 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	ldr	r3, .L5+8
	ldr	r2, .L5+4
	str	r2, [r3, #8]
	.syntax unified
@ 429 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	.syntax unified
@ 60 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	cpsie i
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	bl	systemInit
	bl	device_init
	movs	r2, #0
	movs	r1, #8
	ldr	r0, .L5+12
	bl	HAL_GPIO_WritePin
	movs	r2, #1
	movs	r1, #4
	ldr	r0, .L5+12
	bl	HAL_GPIO_WritePin
	movs	r2, #0
	movs	r1, #4
	ldr	r0, .L5+12
	bl	HAL_GPIO_WritePin
	movs	r3, #2
	strh	r3, [r7, #10]	@ movhi
	movs	r3, #4
	strh	r3, [r7, #8]	@ movhi
	movs	r3, #8
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #16
	strh	r3, [r7, #4]	@ movhi
	mov	r3, #1610612736
	str	r3, [r7]
	ldr	r3, .L5+16
	ldr	r2, .L5+20
	addw	r4, r3, #2056
	mov	r5, r2
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	ldr	r3, .L5+24
	ldr	r2, .L5+20
	addw	r4, r3, #1028
	mov	r5, r2
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	ldr	r3, .L5+28
	ldr	r2, .L5+32
	addw	r4, r3, #1028
	mov	r5, r2
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	ldr	r1, .L5+36
	ldr	r0, .L5+24
	bl	sprintf
	movw	r2, #3000
	movs	r1, #1
	ldr	r0, .L5+24
	bl	sendCommand
	ldr	r2, .L5+28
	ldr	r1, .L5+24
	ldr	r0, .L5+16
	bl	mainLoop
	bl	device_loop
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L6:
	.align	2
.L5:
	.word	g_pfnVectors
	.word	vectorTable_RAM
	.word	-536810240
	.word	1073879040
	.word	inputBuffer
	.word	huart7
	.word	commandBuffer
	.word	logBuffer
	.word	huart1
	.word	.LC0
	.size	main, .-main
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
