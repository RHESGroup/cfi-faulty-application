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
	.file	"stm32f4xx_hal_tim_ex.c"
	.text
	.section	.text.HAL_TIMEx_HallSensor_Init,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_HallSensor_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_HallSensor_Init, %function
HAL_TIMEx_HallSensor_Init:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	movs	r3, #1
	b	.L4
.L2:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r0, [r7, #4]
	bl	HAL_TIMEx_HallSensor_MspInit
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r1, r3
	mov	r0, r2
	bl	TIM_Base_SetConfig
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	movs	r2, #3
	bl	TIM_TI1_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #12
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #24]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #112
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #7
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4
	str	r2, [r3, #8]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #112
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r7, #12
	mov	r1, r2
	mov	r0, r3
	bl	TIM_OC2_SetConfig
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #112
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #80
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
.L4:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_HallSensor_Init, .-HAL_TIMEx_HallSensor_Init
	.section	.text.HAL_TIMEx_HallSensor_DeInit,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_HallSensor_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_HallSensor_DeInit, %function
HAL_TIMEx_HallSensor_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L6
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L6
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L6:
	ldr	r0, [r7, #4]
	bl	HAL_TIMEx_HallSensor_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_HallSensor_DeInit, .-HAL_TIMEx_HallSensor_DeInit
	.section	.text.HAL_TIMEx_HallSensor_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_TIMEx_HallSensor_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_HallSensor_MspInit, %function
HAL_TIMEx_HallSensor_MspInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIMEx_HallSensor_MspInit, .-HAL_TIMEx_HallSensor_MspInit
	.section	.text.HAL_TIMEx_HallSensor_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_TIMEx_HallSensor_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_HallSensor_MspDeInit, %function
HAL_TIMEx_HallSensor_MspDeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIMEx_HallSensor_MspDeInit, .-HAL_TIMEx_HallSensor_MspDeInit
	.section	.text.HAL_TIMEx_HallSensor_Start,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_HallSensor_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_HallSensor_Start, %function
HAL_TIMEx_HallSensor_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_HallSensor_Start, .-HAL_TIMEx_HallSensor_Start
	.section	.text.HAL_TIMEx_HallSensor_Stop,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_HallSensor_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_HallSensor_Stop, %function
HAL_TIMEx_HallSensor_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L13
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L13
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L13:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_HallSensor_Stop, .-HAL_TIMEx_HallSensor_Stop
	.section	.text.HAL_TIMEx_HallSensor_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_HallSensor_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_HallSensor_Start_IT, %function
HAL_TIMEx_HallSensor_Start_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_HallSensor_Start_IT, .-HAL_TIMEx_HallSensor_Start_IT
	.section	.text.HAL_TIMEx_HallSensor_Stop_IT,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_HallSensor_Stop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_HallSensor_Stop_IT, %function
HAL_TIMEx_HallSensor_Stop_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L18
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L18
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L18:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_HallSensor_Stop_IT, .-HAL_TIMEx_HallSensor_Stop_IT
	.section	.text.HAL_TIMEx_HallSensor_Start_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_HallSensor_Start_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_HallSensor_Start_DMA, %function
HAL_TIMEx_HallSensor_Start_DMA:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L21
	movs	r3, #2
	b	.L22
.L21:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L23
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L24
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	beq	.L24
	movs	r3, #1
	b	.L22
.L24:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
.L23:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #1
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L25
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L25+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #52
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldrh	r3, [r7, #6]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
.L22:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L26:
	.align	2
.L25:
	.word	TIM_DMACaptureCplt
	.word	TIM_DMAError
	.size	HAL_TIMEx_HallSensor_Start_DMA, .-HAL_TIMEx_HallSensor_Start_DMA
	.section	.text.HAL_TIMEx_HallSensor_Stop_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_HallSensor_Stop_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_HallSensor_Stop_DMA, %function
HAL_TIMEx_HallSensor_Stop_DMA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	TIM_CCxChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #512
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L28
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L28
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L28:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_HallSensor_Stop_DMA, .-HAL_TIMEx_HallSensor_Stop_DMA
	.section	.text.HAL_TIMEx_OCN_Start,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_OCN_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_OCN_Start, %function
HAL_TIMEx_OCN_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_OCN_Start, .-HAL_TIMEx_OCN_Start
	.section	.text.HAL_TIMEx_OCN_Stop,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_OCN_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_OCN_Stop, %function
HAL_TIMEx_OCN_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L33:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L34
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L34
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L34:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_OCN_Stop, .-HAL_TIMEx_OCN_Stop
	.section	.text.HAL_TIMEx_OCN_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_OCN_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_OCN_Start_IT, %function
HAL_TIMEx_OCN_Start_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L45
	adr	r2, .L39
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L39:
	.word	.L42+1
	.word	.L45+1
	.word	.L45+1
	.word	.L45+1
	.word	.L41+1
	.word	.L45+1
	.word	.L45+1
	.word	.L45+1
	.word	.L40+1
	.word	.L45+1
	.word	.L45+1
	.word	.L45+1
	.word	.L38+1
	.p2align 1
.L42:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	b	.L43
.L41:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4
	str	r2, [r3, #12]
	b	.L43
.L40:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8
	str	r2, [r3, #12]
	b	.L43
.L38:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #16
	str	r2, [r3, #12]
	b	.L43
.L45:
	nop
.L43:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_OCN_Start_IT, .-HAL_TIMEx_OCN_Start_IT
	.section	.text.HAL_TIMEx_OCN_Stop_IT,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_OCN_Stop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_OCN_Stop_IT, %function
HAL_TIMEx_OCN_Stop_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L58
	adr	r2, .L49
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L49:
	.word	.L52+1
	.word	.L58+1
	.word	.L58+1
	.word	.L58+1
	.word	.L51+1
	.word	.L58+1
	.word	.L58+1
	.word	.L58+1
	.word	.L50+1
	.word	.L58+1
	.word	.L58+1
	.word	.L58+1
	.word	.L48+1
	.p2align 1
.L52:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #12]
	b	.L53
.L51:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #12]
	b	.L53
.L50:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8
	str	r2, [r3, #12]
	b	.L53
.L48:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #16
	str	r2, [r3, #12]
	b	.L53
.L58:
	nop
.L53:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L54
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #12]
.L54:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L55
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L55
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L55:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L56:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_OCN_Stop_IT, .-HAL_TIMEx_OCN_Stop_IT
	.section	.text.HAL_TIMEx_OCN_Start_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_OCN_Start_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_OCN_Start_DMA, %function
HAL_TIMEx_OCN_Start_DMA:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L60
	movs	r3, #2
	b	.L61
.L60:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L62
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L63
	ldrh	r3, [r7, #2]
	cmp	r3, #0
	beq	.L63
	movs	r3, #1
	b	.L61
.L63:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
.L62:
	ldr	r3, [r7, #8]
	cmp	r3, #12
	bhi	.L71
	adr	r2, .L66
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L66:
	.word	.L69+1
	.word	.L71+1
	.word	.L71+1
	.word	.L71+1
	.word	.L68+1
	.word	.L71+1
	.word	.L71+1
	.word	.L71+1
	.word	.L67+1
	.word	.L71+1
	.word	.L71+1
	.word	.L71+1
	.word	.L65+1
	.p2align 1
.L69:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L72
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L72+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #32]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #52
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3, #12]
	b	.L70
.L68:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L72
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L72+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #36]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #56
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L70
.L67:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L72
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L72+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #40]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #60
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #12]
	b	.L70
.L65:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L72
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L72+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #44]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #64
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3, #12]
	b	.L70
.L71:
	nop
.L70:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #4
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
.L61:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L73:
	.align	2
.L72:
	.word	TIM_DMADelayPulseCplt
	.word	TIM_DMAError
	.size	HAL_TIMEx_OCN_Start_DMA, .-HAL_TIMEx_OCN_Start_DMA
	.section	.text.HAL_TIMEx_OCN_Stop_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_OCN_Stop_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_OCN_Stop_DMA, %function
HAL_TIMEx_OCN_Stop_DMA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L85
	adr	r2, .L77
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L77:
	.word	.L80+1
	.word	.L85+1
	.word	.L85+1
	.word	.L85+1
	.word	.L79+1
	.word	.L85+1
	.word	.L85+1
	.word	.L85+1
	.word	.L78+1
	.word	.L85+1
	.word	.L85+1
	.word	.L85+1
	.word	.L76+1
	.p2align 1
.L80:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #512
	str	r2, [r3, #12]
	b	.L81
.L79:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L81
.L78:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #12]
	b	.L81
.L76:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4096
	str	r2, [r3, #12]
	b	.L81
.L85:
	nop
.L81:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L82
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L82
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L82:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L83
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L83
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L83:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_OCN_Stop_DMA, .-HAL_TIMEx_OCN_Stop_DMA
	.section	.text.HAL_TIMEx_PWMN_Start,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_PWMN_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_PWMN_Start, %function
HAL_TIMEx_PWMN_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_PWMN_Start, .-HAL_TIMEx_PWMN_Start
	.section	.text.HAL_TIMEx_PWMN_Stop,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_PWMN_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_PWMN_Stop, %function
HAL_TIMEx_PWMN_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L89
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L89
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L89:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L90
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L90
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L90:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_PWMN_Stop, .-HAL_TIMEx_PWMN_Stop
	.section	.text.HAL_TIMEx_PWMN_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_PWMN_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_PWMN_Start_IT, %function
HAL_TIMEx_PWMN_Start_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L101
	adr	r2, .L95
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L95:
	.word	.L98+1
	.word	.L101+1
	.word	.L101+1
	.word	.L101+1
	.word	.L97+1
	.word	.L101+1
	.word	.L101+1
	.word	.L101+1
	.word	.L96+1
	.word	.L101+1
	.word	.L101+1
	.word	.L101+1
	.word	.L94+1
	.p2align 1
.L98:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	b	.L99
.L97:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4
	str	r2, [r3, #12]
	b	.L99
.L96:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #8
	str	r2, [r3, #12]
	b	.L99
.L94:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #16
	str	r2, [r3, #12]
	b	.L99
.L101:
	nop
.L99:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_PWMN_Start_IT, .-HAL_TIMEx_PWMN_Start_IT
	.section	.text.HAL_TIMEx_PWMN_Stop_IT,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_PWMN_Stop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_PWMN_Stop_IT, %function
HAL_TIMEx_PWMN_Stop_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L114
	adr	r2, .L105
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L105:
	.word	.L108+1
	.word	.L114+1
	.word	.L114+1
	.word	.L114+1
	.word	.L107+1
	.word	.L114+1
	.word	.L114+1
	.word	.L114+1
	.word	.L106+1
	.word	.L114+1
	.word	.L114+1
	.word	.L114+1
	.word	.L104+1
	.p2align 1
.L108:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #12]
	b	.L109
.L107:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #12]
	b	.L109
.L106:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8
	str	r2, [r3, #12]
	b	.L109
.L104:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #16
	str	r2, [r3, #12]
	b	.L109
.L114:
	nop
.L109:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L110
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #12]
.L110:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L111
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L111
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L111:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L112
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L112
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L112:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_PWMN_Stop_IT, .-HAL_TIMEx_PWMN_Stop_IT
	.section	.text.HAL_TIMEx_PWMN_Start_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_PWMN_Start_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_PWMN_Start_DMA, %function
HAL_TIMEx_PWMN_Start_DMA:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L116
	movs	r3, #2
	b	.L117
.L116:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L118
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L119
	ldrh	r3, [r7, #2]
	cmp	r3, #0
	beq	.L119
	movs	r3, #1
	b	.L117
.L119:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #57]
.L118:
	ldr	r3, [r7, #8]
	cmp	r3, #12
	bhi	.L127
	adr	r2, .L122
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L122:
	.word	.L125+1
	.word	.L127+1
	.word	.L127+1
	.word	.L127+1
	.word	.L124+1
	.word	.L127+1
	.word	.L127+1
	.word	.L127+1
	.word	.L123+1
	.word	.L127+1
	.word	.L127+1
	.word	.L127+1
	.word	.L121+1
	.p2align 1
.L125:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L128
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, .L128+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #32]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #52
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3, #12]
	b	.L126
.L124:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L128
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, .L128+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #36]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #56
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L126
.L123:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L128
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	ldr	r2, .L128+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #40]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #60
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #12]
	b	.L126
.L121:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L128
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	ldr	r2, .L128+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #44]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #64
	mov	r2, r3
	ldrh	r3, [r7, #2]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3, #12]
	b	.L126
.L127:
	nop
.L126:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #4
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
.L117:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L129:
	.align	2
.L128:
	.word	TIM_DMADelayPulseCplt
	.word	TIM_DMAError
	.size	HAL_TIMEx_PWMN_Start_DMA, .-HAL_TIMEx_PWMN_Start_DMA
	.section	.text.HAL_TIMEx_PWMN_Stop_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_PWMN_Stop_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_PWMN_Stop_DMA, %function
HAL_TIMEx_PWMN_Stop_DMA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #12
	bhi	.L141
	adr	r2, .L133
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L133:
	.word	.L136+1
	.word	.L141+1
	.word	.L141+1
	.word	.L141+1
	.word	.L135+1
	.word	.L141+1
	.word	.L141+1
	.word	.L141+1
	.word	.L134+1
	.word	.L141+1
	.word	.L141+1
	.word	.L141+1
	.word	.L132+1
	.p2align 1
.L136:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #512
	str	r2, [r3, #12]
	b	.L137
.L135:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #12]
	b	.L137
.L134:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #12]
	b	.L137
.L132:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4096
	str	r2, [r3, #12]
	b	.L137
.L141:
	nop
.L137:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L138
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L138
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L138:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L139
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L139
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L139:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_PWMN_Stop_DMA, .-HAL_TIMEx_PWMN_Stop_DMA
	.section	.text.HAL_TIMEx_OnePulseN_Start,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_OnePulseN_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_OnePulseN_Start, %function
HAL_TIMEx_OnePulseN_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_OnePulseN_Start, .-HAL_TIMEx_OnePulseN_Start
	.section	.text.HAL_TIMEx_OnePulseN_Stop,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_OnePulseN_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_OnePulseN_Stop, %function
HAL_TIMEx_OnePulseN_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L145
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L145
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L145:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L146
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L146
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L146:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_OnePulseN_Stop, .-HAL_TIMEx_OnePulseN_Stop
	.section	.text.HAL_TIMEx_OnePulseN_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_OnePulseN_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_OnePulseN_Start_IT, %function
HAL_TIMEx_OnePulseN_Start_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #4
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #32768
	str	r2, [r3, #68]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_OnePulseN_Start_IT, .-HAL_TIMEx_OnePulseN_Start_IT
	.section	.text.HAL_TIMEx_OnePulseN_Stop_IT,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_OnePulseN_Stop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_OnePulseN_Stop_IT, %function
HAL_TIMEx_OnePulseN_Stop_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	ldr	r1, [r7]
	mov	r0, r3
	bl	TIM_CCxNChannelCmd
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L151
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L151
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32768
	str	r2, [r3, #68]
.L151:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #4369
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L152
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #32]
	movw	r3, #1092
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L152
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
.L152:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_TIMEx_OnePulseN_Stop_IT, .-HAL_TIMEx_OnePulseN_Stop_IT
	.section	.text.HAL_TIMEx_ConfigCommutationEvent,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_ConfigCommutationEvent
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_ConfigCommutationEvent, %function
HAL_TIMEx_ConfigCommutationEvent:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L155
	movs	r3, #2
	b	.L156
.L155:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L157
	ldr	r3, [r7, #8]
	cmp	r3, #16
	beq	.L157
	ldr	r3, [r7, #8]
	cmp	r3, #32
	beq	.L157
	ldr	r3, [r7, #8]
	cmp	r3, #48
	bne	.L158
.L157:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #112
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
.L158:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L156:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIMEx_ConfigCommutationEvent, .-HAL_TIMEx_ConfigCommutationEvent
	.section	.text.HAL_TIMEx_ConfigCommutationEvent_IT,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_ConfigCommutationEvent_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_ConfigCommutationEvent_IT, %function
HAL_TIMEx_ConfigCommutationEvent_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L160
	movs	r3, #2
	b	.L161
.L160:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L162
	ldr	r3, [r7, #8]
	cmp	r3, #16
	beq	.L162
	ldr	r3, [r7, #8]
	cmp	r3, #32
	beq	.L162
	ldr	r3, [r7, #8]
	cmp	r3, #48
	bne	.L163
.L162:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #112
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
.L163:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #32
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L161:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIMEx_ConfigCommutationEvent_IT, .-HAL_TIMEx_ConfigCommutationEvent_IT
	.section	.text.HAL_TIMEx_ConfigCommutationEvent_DMA,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_ConfigCommutationEvent_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_ConfigCommutationEvent_DMA, %function
HAL_TIMEx_ConfigCommutationEvent_DMA:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L165
	movs	r3, #2
	b	.L166
.L165:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L167
	ldr	r3, [r7, #8]
	cmp	r3, #16
	beq	.L167
	ldr	r3, [r7, #8]
	cmp	r3, #32
	beq	.L167
	ldr	r3, [r7, #8]
	cmp	r3, #48
	bne	.L168
.L167:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #112
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
.L168:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r2, .L169
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r2, .L169+4
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L166:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L170:
	.align	2
.L169:
	.word	TIMEx_DMACommutationCplt
	.word	TIM_DMAError
	.size	HAL_TIMEx_ConfigCommutationEvent_DMA, .-HAL_TIMEx_ConfigCommutationEvent_DMA
	.section	.text.HAL_TIMEx_MasterConfigSynchronization,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_MasterConfigSynchronization
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_MasterConfigSynchronization, %function
HAL_TIMEx_MasterConfigSynchronization:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L172
	movs	r3, #2
	b	.L173
.L172:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #112
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L173:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIMEx_MasterConfigSynchronization, .-HAL_TIMEx_MasterConfigSynchronization
	.section	.text.HAL_TIMEx_ConfigBreakDeadTime,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_ConfigBreakDeadTime
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_ConfigBreakDeadTime, %function
HAL_TIMEx_ConfigBreakDeadTime:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L175
	movs	r3, #2
	b	.L176
.L175:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #57]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	orr	r1, r2, r3
	ldr	r3, [r7]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L176:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIMEx_ConfigBreakDeadTime, .-HAL_TIMEx_ConfigBreakDeadTime
	.section	.text.HAL_TIMEx_RemapConfig,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_RemapConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_RemapConfig, %function
HAL_TIMEx_RemapConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #56]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L178
	movs	r3, #2
	b	.L179
.L178:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	str	r2, [r3, #80]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #56]
	movs	r3, #0
.L179:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIMEx_RemapConfig, .-HAL_TIMEx_RemapConfig
	.section	.text.HAL_TIMEx_CommutationCallback,"ax",%progbits
	.align	1
	.weak	HAL_TIMEx_CommutationCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_CommutationCallback, %function
HAL_TIMEx_CommutationCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIMEx_CommutationCallback, .-HAL_TIMEx_CommutationCallback
	.section	.text.HAL_TIMEx_BreakCallback,"ax",%progbits
	.align	1
	.weak	HAL_TIMEx_BreakCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_BreakCallback, %function
HAL_TIMEx_BreakCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIMEx_BreakCallback, .-HAL_TIMEx_BreakCallback
	.section	.text.HAL_TIMEx_HallSensor_GetState,"ax",%progbits
	.align	1
	.global	HAL_TIMEx_HallSensor_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_TIMEx_HallSensor_GetState, %function
HAL_TIMEx_HallSensor_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #57]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_TIMEx_HallSensor_GetState, .-HAL_TIMEx_HallSensor_GetState
	.section	.text.TIMEx_DMACommutationCplt,"ax",%progbits
	.align	1
	.global	TIMEx_DMACommutationCplt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIMEx_DMACommutationCplt, %function
TIMEx_DMACommutationCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #57]
	ldr	r0, [r7, #12]
	bl	HAL_TIMEx_CommutationCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	TIMEx_DMACommutationCplt, .-TIMEx_DMACommutationCplt
	.section	.text.TIM_CCxNChannelCmd,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	TIM_CCxNChannelCmd, %function
TIM_CCxNChannelCmd:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r2, #4
	ldr	r3, [r7, #8]
	lsl	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #20]
	mvns	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #8]
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	TIM_CCxNChannelCmd, .-TIM_CCxNChannelCmd
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
