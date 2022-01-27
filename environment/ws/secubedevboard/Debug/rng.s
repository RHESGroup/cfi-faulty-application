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
	.file	"rng.c"
	.text
	.comm	hrng,12,4
	.section	.text.MX_RNG_Init,"ax",%progbits
	.align	1
	.global	MX_RNG_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_RNG_Init, %function
MX_RNG_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3]
	ldr	r0, .L2
	bl	HAL_RNG_Init
	nop
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	hrng
	.word	1342572544
	.size	MX_RNG_Init, .-MX_RNG_Init
	.section	.text.HAL_RNG_MspInit,"ax",%progbits
	.align	1
	.global	HAL_RNG_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_MspInit, %function
HAL_RNG_MspInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L7
	cmp	r3, r2
	bne	.L6
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L7+4
	ldr	r3, [r3, #52]
	ldr	r2, .L7+4
	orr	r3, r3, #64
	str	r3, [r2, #52]
	ldr	r3, .L7+4
	ldr	r3, [r3, #52]
	and	r3, r3, #64
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
.L6:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L8:
	.align	2
.L7:
	.word	1342572544
	.word	1073887232
	.size	HAL_RNG_MspInit, .-HAL_RNG_MspInit
	.section	.text.HAL_RNG_MspDeInit,"ax",%progbits
	.align	1
	.global	HAL_RNG_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RNG_MspDeInit, %function
HAL_RNG_MspDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L12
	cmp	r3, r2
	bne	.L11
	ldr	r3, .L12+4
	ldr	r3, [r3, #52]
	ldr	r2, .L12+4
	bic	r3, r3, #64
	str	r3, [r2, #52]
.L11:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L13:
	.align	2
.L12:
	.word	1342572544
	.word	1073887232
	.size	HAL_RNG_MspDeInit, .-HAL_RNG_MspDeInit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
