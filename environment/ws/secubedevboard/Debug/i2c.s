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
	.file	"i2c.c"
	.text
	.comm	hi2c2,68,4
	.section	.text.MX_I2C2_Init,"ax",%progbits
	.align	1
	.global	MX_I2C2_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_I2C2_Init, %function
MX_I2C2_Init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3]
	ldr	r3, .L2
	ldr	r2, .L2+8
	str	r2, [r3, #4]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L2
	mov	r2, #16384
	str	r2, [r3, #16]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r0, .L2
	bl	HAL_I2C_Init
	nop
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	hi2c2
	.word	1073764352
	.word	100000
	.size	MX_I2C2_Init, .-MX_I2C2_Init
	.section	.text.HAL_I2C_MspInit,"ax",%progbits
	.align	1
	.global	HAL_I2C_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_MspInit, %function
HAL_I2C_MspInit:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L7
	cmp	r3, r2
	bne	.L6
	movs	r3, #48
	str	r3, [r7, #12]
	movs	r3, #18
	str	r3, [r7, #16]
	movs	r3, #1
	str	r3, [r7, #20]
	movs	r3, #3
	str	r3, [r7, #24]
	movs	r3, #4
	str	r3, [r7, #28]
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, .L7+4
	bl	HAL_GPIO_Init
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L7+8
	ldr	r3, [r3, #64]
	ldr	r2, .L7+8
	orr	r3, r3, #4194304
	str	r3, [r2, #64]
	ldr	r3, .L7+8
	ldr	r3, [r3, #64]
	and	r3, r3, #4194304
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
.L6:
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	1073764352
	.word	1073880064
	.word	1073887232
	.size	HAL_I2C_MspInit, .-HAL_I2C_MspInit
	.section	.text.HAL_I2C_MspDeInit,"ax",%progbits
	.align	1
	.global	HAL_I2C_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_MspDeInit, %function
HAL_I2C_MspDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L12
	cmp	r3, r2
	bne	.L11
	ldr	r3, .L12+4
	ldr	r3, [r3, #64]
	ldr	r2, .L12+4
	bic	r3, r3, #4194304
	str	r3, [r2, #64]
	movs	r1, #48
	ldr	r0, .L12+8
	bl	HAL_GPIO_DeInit
.L11:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	1073764352
	.word	1073887232
	.word	1073880064
	.size	HAL_I2C_MspDeInit, .-HAL_I2C_MspDeInit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
