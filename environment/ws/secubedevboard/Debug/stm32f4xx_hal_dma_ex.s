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
	.file	"stm32f4xx_hal_dma_ex.c"
	.text
	.section	.text.HAL_DMAEx_MultiBufferStart,"ax",%progbits
	.align	1
	.global	HAL_DMAEx_MultiBufferStart
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMAEx_MultiBufferStart, %function
HAL_DMAEx_MultiBufferStart:
	@ args = 4, pretend = 0, frame = 16
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
	bne	.L2
	movs	r3, #2
	b	.L3
.L2:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7, #12]
	movs	r2, #18
	strb	r2, [r3, #53]
	b	.L5
.L4:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	beq	.L5
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #53]
.L5:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #262144
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	DMA_MultiBufferSetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_DMAEx_MultiBufferStart, .-HAL_DMAEx_MultiBufferStart
	.section	.text.HAL_DMAEx_MultiBufferStart_IT,"ax",%progbits
	.align	1
	.global	HAL_DMAEx_MultiBufferStart_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMAEx_MultiBufferStart_IT, %function
HAL_DMAEx_MultiBufferStart_IT:
	@ args = 4, pretend = 0, frame = 16
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
	bne	.L7
	movs	r3, #2
	b	.L8
.L7:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	bne	.L9
	ldr	r3, [r7, #12]
	movs	r2, #18
	strb	r2, [r3, #53]
	b	.L10
.L9:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	beq	.L10
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #53]
.L10:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #262144
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	DMA_MultiBufferSetConfig
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #16
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4
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
	orr	r2, r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	movs	r3, #0
.L8:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_DMAEx_MultiBufferStart_IT, .-HAL_DMAEx_MultiBufferStart_IT
	.section	.text.HAL_DMAEx_ChangeMemory,"ax",%progbits
	.align	1
	.global	HAL_DMAEx_ChangeMemory
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_DMAEx_ChangeMemory, %function
HAL_DMAEx_ChangeMemory:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L12
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
	b	.L13
.L12:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	str	r2, [r3, #16]
.L13:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_DMAEx_ChangeMemory, .-HAL_DMAEx_ChangeMemory
	.section	.text.DMA_MultiBufferSetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	DMA_MultiBufferSetConfig, %function
DMA_MultiBufferSetConfig:
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
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #64
	bne	.L16
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
	b	.L18
.L16:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	str	r2, [r3, #12]
.L18:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	DMA_MultiBufferSetConfig, .-DMA_MultiBufferSetConfig
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
