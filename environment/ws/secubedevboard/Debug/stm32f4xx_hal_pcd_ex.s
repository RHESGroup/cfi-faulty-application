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
	.file	"stm32f4xx_hal_pcd_ex.c"
	.text
	.section	.text.HAL_PCDEx_SetTxFiFo,"ax",%progbits
	.align	1
	.global	HAL_PCDEx_SetTxFiFo
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCDEx_SetTxFiFo, %function
HAL_PCDEx_SetTxFiFo:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #36]
	str	r3, [r7, #8]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L2
	ldrh	r3, [r7]
	lsls	r1, r3, #16
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	orrs	r2, r2, r1
	str	r2, [r3, #40]
	b	.L3
.L2:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #40]
	lsrs	r3, r3, #16
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L4
.L5:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	adds	r3, r3, #64
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #16
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #15]
.L4:
	ldrb	r2, [r7, #15]	@ zero_extendqisi2
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r2, r3
	bcc	.L5
	ldrh	r3, [r7]
	lsls	r0, r3, #16
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	subs	r3, r3, #1
	ldr	r2, [r7, #8]
	orrs	r2, r2, r0
	adds	r3, r3, #64
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
.L3:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCDEx_SetTxFiFo, .-HAL_PCDEx_SetTxFiFo
	.section	.text.HAL_PCDEx_SetRxFiFo,"ax",%progbits
	.align	1
	.global	HAL_PCDEx_SetRxFiFo
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_PCDEx_SetRxFiFo, %function
HAL_PCDEx_SetRxFiFo:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldrh	r2, [r7, #2]
	str	r2, [r3, #36]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_PCDEx_SetRxFiFo, .-HAL_PCDEx_SetRxFiFo
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
