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
	.file	"stm32f4xx_hal_dma.c"
	.text
	.section	.text.HAL_DMA_Init,"ax",%progbits
	.align	1
	.global	HAL_DMA_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMA_Init, %function
HAL_DMA_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	movs	r3, #1
	b	.L3
.L2:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #53]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, .L6
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r3, #4
	bne	.L4
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
.L4:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #7
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r3, #4
	bne	.L5
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
.L5:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #20]
	ldr	r0, [r7, #4]
	bl	DMA_CalcBaseAndBitshift
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #53]
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	-267354049
	.size	HAL_DMA_Init, .-HAL_DMA_Init
	.section	.text.HAL_DMA_DeInit,"ax",%progbits
	.align	1
	.global	HAL_DMA_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMA_DeInit, %function
HAL_DMA_DeInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L9
	movs	r3, #1
	b	.L10
.L9:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #53]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L11
	movs	r3, #1
	b	.L10
.L11:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #33
	str	r2, [r3, #20]
	ldr	r0, [r7, #4]
	bl	DMA_CalcBaseAndBitshift
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	movs	r2, #63
	lsls	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #53]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #52]
	movs	r3, #0
.L10:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_DMA_DeInit, .-HAL_DMA_DeInit
	.section	.text.HAL_DMA_Start,"ax",%progbits
	.align	1
	.global	HAL_DMA_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMA_Start, %function
HAL_DMA_Start:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #52]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L13
	movs	r3, #2
	b	.L14
.L13:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #52]
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #53]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	DMA_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
.L14:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_DMA_Start, .-HAL_DMA_Start
	.section	.text.HAL_DMA_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_DMA_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMA_Start_IT, %function
HAL_DMA_Start_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #52]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L16
	movs	r3, #2
	b	.L17
.L16:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #52]
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #53]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	DMA_SetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #30
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
.L17:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_DMA_Start_IT, .-HAL_DMA_Start_IT
	.section	.text.HAL_DMA_Abort,"ax",%progbits
	.align	1
	.global	HAL_DMA_Abort
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMA_Abort, %function
HAL_DMA_Abort:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	b	.L19
.L21:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	cmp	r3, #1000
	bls	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #52]
	ldr	r3, [r7, #4]
	movs	r2, #3
	strb	r2, [r3, #53]
	movs	r3, #3
	b	.L20
.L19:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L21
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #52]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #53]
	movs	r3, #0
.L20:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_DMA_Abort, .-HAL_DMA_Abort
	.section	.text.HAL_DMA_PollForTransfer,"ax",%progbits
	.align	1
	.global	HAL_DMA_PollForTransfer
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMA_PollForTransfer, %function
HAL_DMA_PollForTransfer:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L23
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	movs	r2, #32
	lsl	r3, r2, r3
	str	r3, [r7, #36]
	b	.L24
.L23:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	movs	r2, #16
	lsl	r3, r2, r3
	str	r3, [r7, #36]
.L24:
	bl	HAL_GetTick
	str	r0, [r7, #32]
	b	.L25
.L33:
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	movs	r1, #8
	lsl	r3, r1, r3
	ands	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	ldr	r1, .L41
	lsl	r3, r1, r3
	ands	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	ldr	r1, .L41+4
	lsl	r3, r1, r3
	ands	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L26
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L26
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L27
.L26:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L28
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	orr	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	movs	r2, #8
	lsls	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
.L28:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	orr	r2, r3, #2
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	ldr	r2, .L41
	lsls	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
.L29:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L30
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	orr	r2, r3, #4
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	ldr	r2, .L41+4
	lsls	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
.L30:
	ldr	r3, [r7, #12]
	movs	r2, #4
	strb	r2, [r3, #53]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #52]
	movs	r3, #1
	b	.L31
.L27:
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	beq	.L25
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L32
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #32]
	subs	r3, r2, r3
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bcs	.L25
.L32:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	orr	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #3
	strb	r2, [r3, #53]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #52]
	movs	r3, #3
	b	.L31
.L25:
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L34
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	movs	r2, #48
	lsls	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #262144
	cmp	r3, #0
	beq	.L35
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	bne	.L36
	ldr	r3, [r7, #12]
	movs	r2, #17
	strb	r2, [r3, #53]
	b	.L37
.L36:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	beq	.L37
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #53]
	b	.L37
.L35:
	ldr	r3, [r7, #12]
	movs	r2, #17
	strb	r2, [r3, #53]
.L37:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #52]
	b	.L38
.L34:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	movs	r2, #16
	lsls	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #262144
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	bne	.L40
	ldr	r3, [r7, #12]
	movs	r2, #49
	strb	r2, [r3, #53]
	b	.L38
.L40:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	beq	.L38
	ldr	r3, [r7, #12]
	movs	r2, #65
	strb	r2, [r3, #53]
	b	.L38
.L39:
	ldr	r3, [r7, #12]
	movs	r2, #49
	strb	r2, [r3, #53]
.L38:
	movs	r3, #0
.L31:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L42:
	.align	2
.L41:
	.word	8388609
	.word	8388612
	.size	HAL_DMA_PollForTransfer, .-HAL_DMA_PollForTransfer
	.section	.text.HAL_DMA_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_DMA_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMA_IRQHandler, %function
HAL_DMA_IRQHandler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	movs	r1, #8
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L44
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L44
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #4
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	movs	r2, #8
	lsls	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #53]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	beq	.L44
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	ldr	r0, [r7, #4]
	blx	r3
.L44:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	ldr	r1, .L57
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	ldr	r2, .L57
	lsls	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	orr	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #53]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	ldr	r0, [r7, #4]
	blx	r3
.L45:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	ldr	r1, .L57+4
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L46
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L46
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	ldr	r2, .L57+4
	lsls	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	orr	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #53]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	beq	.L46
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	ldr	r0, [r7, #4]
	blx	r3
.L46:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	movs	r1, #16
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #262144
	cmp	r3, #0
	beq	.L48
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	movs	r2, #16
	lsls	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	bne	.L49
	ldr	r3, [r7, #4]
	movs	r2, #49
	strb	r2, [r3, #53]
	b	.L50
.L49:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r7, #4]
	movs	r2, #65
	strb	r2, [r3, #53]
	b	.L50
.L48:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #8
	str	r2, [r3]
.L51:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	movs	r2, #16
	lsls	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #49
	strb	r2, [r3, #53]
.L50:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	ldr	r0, [r7, #4]
	blx	r3
.L47:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	movs	r1, #32
	lsl	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #262144
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	movs	r2, #32
	lsls	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	bne	.L54
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	ldr	r0, [r7, #4]
	blx	r3
	b	.L56
.L54:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	ldr	r0, [r7, #4]
	blx	r3
	b	.L56
.L53:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L55
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #16
	str	r2, [r3]
.L55:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	movs	r2, #32
	lsls	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #17
	strb	r2, [r3, #53]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	ldr	r0, [r7, #4]
	blx	r3
.L56:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L58:
	.align	2
.L57:
	.word	8388609
	.word	8388612
	.size	HAL_DMA_IRQHandler, .-HAL_DMA_IRQHandler
	.section	.text.HAL_DMA_GetState,"ax",%progbits
	.align	1
	.global	HAL_DMA_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMA_GetState, %function
HAL_DMA_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #53]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_DMA_GetState, .-HAL_DMA_GetState
	.section	.text.HAL_DMA_GetError,"ax",%progbits
	.align	1
	.global	HAL_DMA_GetError
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMA_GetError, %function
HAL_DMA_GetError:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_DMA_GetError, .-HAL_DMA_GetError
	.section	.text.DMA_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	DMA_SetConfig, %function
DMA_SetConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #262144
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #64
	bne	.L64
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
	b	.L66
.L64:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	str	r2, [r3, #12]
.L66:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	DMA_SetConfig, .-DMA_SetConfig
	.section	.text.DMA_CalcBaseAndBitshift,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	DMA_CalcBaseAndBitshift, %function
DMA_CalcBaseAndBitshift:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	uxtb	r3, r3
	subs	r3, r3, #16
	ldr	r2, .L71
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r2, .L71+4
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	cmp	r3, #3
	bls	.L68
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r3, r3, #1020
	bic	r3, r3, #3
	adds	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #80]
	b	.L69
.L68:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r3, r3, #1020
	bic	r3, r3, #3
	ldr	r2, [r7, #4]
	str	r3, [r2, #80]
.L69:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L72:
	.align	2
.L71:
	.word	-1431655765
	.word	flagBitshiftOffset.9295
	.size	DMA_CalcBaseAndBitshift, .-DMA_CalcBaseAndBitshift
	.section	.rodata.flagBitshiftOffset.9295,"a"
	.align	2
	.type	flagBitshiftOffset.9295, %object
	.size	flagBitshiftOffset.9295, 8
flagBitshiftOffset.9295:
	.ascii	"\000\006\020\026\000\006\020\026"
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
