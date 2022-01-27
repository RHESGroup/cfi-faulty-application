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
	.file	"crc.c"
	.text
	.comm	hcrc,8,4
	.section	.text.MX_CRC_Init,"ax",%progbits
	.align	1
	.global	MX_CRC_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_CRC_Init, %function
MX_CRC_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3]
	ldr	r0, .L2
	bl	HAL_CRC_Init
	nop
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	hcrc
	.word	1073885184
	.size	MX_CRC_Init, .-MX_CRC_Init
	.section	.text.HAL_CRC_MspInit,"ax",%progbits
	.align	1
	.global	HAL_CRC_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_CRC_MspInit, %function
HAL_CRC_MspInit:
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
	ldr	r3, [r3, #48]
	ldr	r2, .L7+4
	orr	r3, r3, #4096
	str	r3, [r2, #48]
	ldr	r3, .L7+4
	ldr	r3, [r3, #48]
	and	r3, r3, #4096
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
	.word	1073885184
	.word	1073887232
	.size	HAL_CRC_MspInit, .-HAL_CRC_MspInit
	.section	.text.HAL_CRC_MspDeInit,"ax",%progbits
	.align	1
	.global	HAL_CRC_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_CRC_MspDeInit, %function
HAL_CRC_MspDeInit:
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
	ldr	r3, [r3, #48]
	ldr	r2, .L12+4
	bic	r3, r3, #4096
	str	r3, [r2, #48]
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
	.word	1073885184
	.word	1073887232
	.size	HAL_CRC_MspDeInit, .-HAL_CRC_MspDeInit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
