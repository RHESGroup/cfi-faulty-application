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
	.file	"stm32f4xx_hal_msp.c"
	.text
	.section	.text.HAL_MspInit,"ax",%progbits
	.align	1
	.global	HAL_MspInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_MspInit, %function
HAL_MspInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r0, #3
	bl	HAL_NVIC_SetPriorityGrouping
	movs	r2, #0
	movs	r1, #0
	mov	r0, #-1
	bl	HAL_NVIC_SetPriority
	nop
	pop	{r7, pc}
	.size	HAL_MspInit, .-HAL_MspInit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
