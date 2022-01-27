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
	.file	"stm32f4xx_hal_i2c_ex.c"
	.text
	.section	.text.HAL_I2CEx_ConfigAnalogFilter,"ax",%progbits
	.align	1
	.global	HAL_I2CEx_ConfigAnalogFilter
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2CEx_ConfigAnalogFilter, %function
HAL_I2CEx_ConfigAnalogFilter:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L2
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #16
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	orrs	r2, r2, r1
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	movs	r3, #0
	b	.L3
.L2:
	movs	r3, #2
.L3:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_I2CEx_ConfigAnalogFilter, .-HAL_I2CEx_ConfigAnalogFilter
	.section	.text.HAL_I2CEx_ConfigDigitalFilter,"ax",%progbits
	.align	1
	.global	HAL_I2CEx_ConfigDigitalFilter
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2CEx_ConfigDigitalFilter, %function
HAL_I2CEx_ConfigDigitalFilter:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L5
	ldr	r3, [r7, #4]
	movs	r2, #36
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #36]
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	bic	r3, r3, #15
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7]
	uxth	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrh	r2, [r7, #14]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	movs	r3, #0
	b	.L6
.L5:
	movs	r3, #2
.L6:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_I2CEx_ConfigDigitalFilter, .-HAL_I2CEx_ConfigDigitalFilter
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
