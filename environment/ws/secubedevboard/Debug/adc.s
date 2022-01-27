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
	.file	"adc.c"
	.text
	.comm	hadc1,72,4
	.section	.text.MX_ADC1_Init,"ax",%progbits
	.align	1
	.global	MX_ADC1_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_ADC1_Init, %function
MX_ADC1_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3]
	ldr	r3, .L2
	mov	r2, #65536
	str	r2, [r3, #4]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L2
	movs	r2, #1
	str	r2, [r3, #28]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, .L2
	movs	r2, #1
	str	r2, [r3, #20]
	ldr	r0, .L2
	bl	HAL_ADC_Init
	movs	r3, #12
	str	r3, [r7]
	movs	r3, #1
	str	r3, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	mov	r3, r7
	mov	r1, r3
	ldr	r0, .L2
	bl	HAL_ADC_ConfigChannel
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	hadc1
	.word	1073815552
	.size	MX_ADC1_Init, .-MX_ADC1_Init
	.section	.text.HAL_ADC_MspInit,"ax",%progbits
	.align	1
	.global	HAL_ADC_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_MspInit, %function
HAL_ADC_MspInit:
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
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L7+4
	ldr	r3, [r3, #68]
	ldr	r2, .L7+4
	orr	r3, r3, #256
	str	r3, [r2, #68]
	ldr	r3, .L7+4
	ldr	r3, [r3, #68]
	and	r3, r3, #256
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r3, #4
	str	r3, [r7, #12]
	movs	r3, #3
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, .L7+8
	bl	HAL_GPIO_Init
.L6:
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	1073815552
	.word	1073887232
	.word	1073874944
	.size	HAL_ADC_MspInit, .-HAL_ADC_MspInit
	.section	.text.HAL_ADC_MspDeInit,"ax",%progbits
	.align	1
	.global	HAL_ADC_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_MspDeInit, %function
HAL_ADC_MspDeInit:
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
	ldr	r3, [r3, #68]
	ldr	r2, .L12+4
	bic	r3, r3, #256
	str	r3, [r2, #68]
	movs	r1, #4
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
	.word	1073815552
	.word	1073887232
	.word	1073874944
	.size	HAL_ADC_MspDeInit, .-HAL_ADC_MspDeInit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
