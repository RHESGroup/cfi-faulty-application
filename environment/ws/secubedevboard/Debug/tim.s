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
	.file	"tim.c"
	.text
	.comm	htim4,60,4
	.section	.text.MX_TIM4_Init,"ax",%progbits
	.align	1
	.global	MX_TIM4_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	MX_TIM4_Init, %function
MX_TIM4_Init:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r2, .L2+4
	str	r2, [r3]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r0, .L2
	bl	HAL_TIM_PWM_Init
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	add	r3, r7, #32
	mov	r1, r3
	ldr	r0, .L2
	bl	HAL_TIMEx_MasterConfigSynchronization
	movs	r3, #96
	str	r3, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	adds	r3, r7, #4
	movs	r2, #0
	mov	r1, r3
	ldr	r0, .L2
	bl	HAL_TIM_PWM_ConfigChannel
	ldr	r0, .L2
	bl	HAL_TIM_MspPostInit
	nop
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L3:
	.align	2
.L2:
	.word	htim4
	.word	1073743872
	.size	MX_TIM4_Init, .-MX_TIM4_Init
	.section	.text.HAL_TIM_PWM_MspInit,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_MspInit, %function
HAL_TIM_PWM_MspInit:
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
	ldr	r3, [r3, #64]
	ldr	r2, .L7+4
	orr	r3, r3, #4
	str	r3, [r2, #64]
	ldr	r3, .L7+4
	ldr	r3, [r3, #64]
	and	r3, r3, #4
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
	.word	1073743872
	.word	1073887232
	.size	HAL_TIM_PWM_MspInit, .-HAL_TIM_PWM_MspInit
	.section	.text.HAL_TIM_MspPostInit,"ax",%progbits
	.align	1
	.global	HAL_TIM_MspPostInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_MspPostInit, %function
HAL_TIM_MspPostInit:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L12
	cmp	r3, r2
	bne	.L11
	mov	r3, #4096
	str	r3, [r7, #12]
	movs	r3, #2
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #2
	str	r3, [r7, #28]
	add	r3, r7, #12
	mov	r1, r3
	ldr	r0, .L12+4
	bl	HAL_GPIO_Init
.L11:
	nop
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	1073743872
	.word	1073875968
	.size	HAL_TIM_MspPostInit, .-HAL_TIM_MspPostInit
	.section	.text.HAL_TIM_PWM_MspDeInit,"ax",%progbits
	.align	1
	.global	HAL_TIM_PWM_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIM_PWM_MspDeInit, %function
HAL_TIM_PWM_MspDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L17
	cmp	r3, r2
	bne	.L16
	ldr	r3, .L17+4
	ldr	r3, [r3, #64]
	ldr	r2, .L17+4
	bic	r3, r3, #4
	str	r3, [r2, #64]
.L16:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L18:
	.align	2
.L17:
	.word	1073743872
	.word	1073887232
	.size	HAL_TIM_PWM_MspDeInit, .-HAL_TIM_PWM_MspDeInit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
