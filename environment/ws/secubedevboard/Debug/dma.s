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
	.file	"dma.c"
	.text
	.section	.text.MX_DMA_Init,"ax",%progbits
	.align	1
	.global	MX_DMA_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_DMA_Init, %function
MX_DMA_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #4]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	ldr	r2, .L2
	orr	r3, r3, #4194304
	str	r3, [r2, #48]
	ldr	r3, .L2
	ldr	r3, [r3, #48]
	and	r3, r3, #4194304
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	movs	r1, #6
	movs	r0, #59
	bl	HAL_NVIC_SetPriority
	movs	r0, #59
	bl	HAL_NVIC_EnableIRQ
	movs	r2, #0
	movs	r1, #6
	movs	r0, #69
	bl	HAL_NVIC_SetPriority
	movs	r0, #69
	bl	HAL_NVIC_EnableIRQ
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	1073887232
	.size	MX_DMA_Init, .-MX_DMA_Init
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
