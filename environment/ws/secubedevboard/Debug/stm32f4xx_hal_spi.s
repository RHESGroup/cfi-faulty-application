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
	.file	"stm32f4xx_hal_spi.c"
	.text
	.section	.text.HAL_SPI_Init,"ax",%progbits
	.align	1
	.global	HAL_SPI_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_Init, %function
HAL_SPI_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	movs	r3, #1
	b	.L3
.L2:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldr	r0, [r7, #4]
	bl	HAL_SPI_MspInit
.L4:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3]
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
	and	r3, r3, #512
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	orr	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	lsrs	r3, r3, #16
	and	r1, r3, #4
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L5
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #44]
	str	r2, [r3, #16]
.L5:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #81]
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SPI_Init, .-HAL_SPI_Init
	.section	.text.HAL_SPI_DeInit,"ax",%progbits
	.align	1
	.global	HAL_SPI_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_DeInit, %function
HAL_SPI_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L7
	movs	r3, #1
	b	.L8
.L7:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	HAL_SPI_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #80]
	movs	r3, #0
.L8:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SPI_DeInit, .-HAL_SPI_DeInit
	.section	.text.HAL_SPI_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_SPI_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_MspInit, %function
HAL_SPI_MspInit:
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
	.size	HAL_SPI_MspInit, .-HAL_SPI_MspInit
	.section	.text.HAL_SPI_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_SPI_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_MspDeInit, %function
HAL_SPI_MspDeInit:
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
	.size	HAL_SPI_MspDeInit, .-HAL_SPI_MspDeInit
	.section	.text.HAL_SPI_Transmit,"ax",%progbits
	.align	1
	.global	HAL_SPI_Transmit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_Transmit, %function
HAL_SPI_Transmit:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	strb	r3, [r7, #31]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L12
	movs	r3, #2
	b	.L13
.L12:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #80]
	bl	HAL_GetTick
	str	r0, [r7, #24]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L14
	movs	r3, #2
	strb	r3, [r7, #31]
	b	.L15
.L14:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L16
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L17
.L16:
	movs	r3, #1
	strb	r3, [r7, #31]
	b	.L15
.L17:
	ldr	r3, [r7, #12]
	movs	r2, #3
	strb	r2, [r3, #81]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #32768
	bne	.L18
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #16384
	str	r2, [r3]
.L18:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L19
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #57343
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
.L19:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #64
	beq	.L20
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
.L20:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #2048
	bne	.L27
	b	.L22
.L25:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #2
	bne	.L23
	ldr	r3, [r7, #8]
	ldrh	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #54]	@ movhi
	b	.L22
.L23:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L22
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bhi	.L22
.L24:
	movs	r3, #3
	strb	r3, [r7, #31]
	b	.L15
.L22:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L25
	b	.L26
.L30:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #2
	bne	.L28
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #54]	@ movhi
	b	.L27
.L28:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L27
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bhi	.L27
.L29:
	movs	r3, #3
	strb	r3, [r7, #31]
	b	.L15
.L27:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L30
.L26:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L31
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3]
.L31:
	ldr	r2, [r7, #24]
	ldr	r1, [r7]
	ldr	r0, [r7, #12]
	bl	SPI_CheckFlag_BSY
	mov	r3, r0
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	orr	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
.L32:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L33
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
.L33:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L34
	movs	r3, #1
	strb	r3, [r7, #31]
	b	.L15
.L34:
	nop
.L15:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
.L13:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SPI_Transmit, .-HAL_SPI_Transmit
	.section	.text.HAL_SPI_Receive,"ax",%progbits
	.align	1
	.global	HAL_SPI_Receive
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_Receive, %function
HAL_SPI_Receive:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	strb	r3, [r7, #31]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #260
	bne	.L36
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L36
	ldr	r3, [r7, #12]
	movs	r2, #4
	strb	r2, [r3, #81]
	ldrh	r2, [r7, #6]
	ldr	r3, [r7]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	HAL_SPI_TransmitReceive
	mov	r3, r0
	b	.L37
.L36:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L38
	movs	r3, #2
	b	.L37
.L38:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #80]
	bl	HAL_GetTick
	str	r0, [r7, #24]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L39
	movs	r3, #2
	strb	r3, [r7, #31]
	b	.L40
.L39:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L41
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L42
.L41:
	movs	r3, #1
	strb	r3, [r7, #31]
	b	.L40
.L42:
	ldr	r3, [r7, #12]
	movs	r2, #4
	strb	r2, [r3, #81]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L43
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #57343
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #62]	@ movhi
.L43:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #32768
	bne	.L44
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #16384
	str	r2, [r3]
.L44:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #64
	beq	.L45
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
.L45:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L52
	b	.L47
.L50:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L48
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldrb	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #62]	@ movhi
	b	.L47
.L48:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L49
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L47
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bhi	.L47
.L49:
	movs	r3, #3
	strb	r3, [r7, #31]
	b	.L40
.L47:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L50
	b	.L51
.L55:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L53
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #62]	@ movhi
	b	.L52
.L53:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L54
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L52
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bhi	.L52
.L54:
	movs	r3, #3
	strb	r3, [r7, #31]
	b	.L40
.L52:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L55
.L51:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L56
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3]
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r3, [r7]
	movs	r2, #1
	movs	r1, #1
	ldr	r0, [r7, #12]
	bl	SPI_WaitFlagStateUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L57
	movs	r3, #3
	strb	r3, [r7, #31]
	b	.L40
.L57:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #2048
	bne	.L58
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3]	@ movhi
	b	.L59
.L58:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldrb	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3]
.L59:
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r3, [r7]
	movs	r2, #1
	movs	r1, #1
	ldr	r0, [r7, #12]
	bl	SPI_WaitFlagStateUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L60
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	orr	r2, r3, #2
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	movs	r3, #3
	strb	r3, [r7, #31]
	b	.L40
.L60:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	uxth	r3, r3
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
.L56:
	ldr	r0, [r7, #12]
	bl	SPI_CheckForDisablingSPI
	mov	r3, r0
	cmp	r3, #0
	beq	.L61
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	orr	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
.L61:
	ldr	r2, [r7, #24]
	ldr	r1, [r7]
	ldr	r0, [r7, #12]
	bl	SPI_CheckFlag_BSY
	mov	r3, r0
	cmp	r3, #0
	beq	.L62
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	orr	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	movs	r3, #1
	strb	r3, [r7, #31]
.L62:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L63
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	orr	r2, r3, #2
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movw	r2, #65519
	str	r2, [r3, #8]
.L63:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L64
	movs	r3, #1
	strb	r3, [r7, #31]
	b	.L40
.L64:
	nop
.L40:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
.L37:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SPI_Receive, .-HAL_SPI_Receive
	.section	.text.HAL_SPI_TransmitReceive,"ax",%progbits
	.align	1
	.global	HAL_SPI_TransmitReceive
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_TransmitReceive, %function
HAL_SPI_TransmitReceive:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	strb	r3, [r7, #31]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L66
	movs	r3, #2
	b	.L67
.L66:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #80]
	bl	HAL_GetTick
	str	r0, [r7, #24]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L68
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #260
	bne	.L69
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L69
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #4
	beq	.L68
.L69:
	movs	r3, #2
	strb	r3, [r7, #31]
	b	.L70
.L68:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L71
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L71
	ldrh	r3, [r7, #2]
	cmp	r3, #0
	bne	.L72
.L71:
	movs	r3, #1
	strb	r3, [r7, #31]
	b	.L70
.L72:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L73
	ldr	r3, [r7, #12]
	movs	r2, #5
	strb	r2, [r3, #81]
.L73:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L74
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #57343
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
.L74:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #64
	beq	.L75
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
.L75:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #2048
	bne	.L82
	b	.L77
.L80:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	beq	.L78
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #2
	bne	.L78
	ldr	r3, [r7, #8]
	ldrh	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L78
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L78
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3]
.L78:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	beq	.L79
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L79
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	str	r3, [r7, #4]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #62]	@ movhi
.L79:
	ldr	r3, [r7, #40]
	cmp	r3, #-1
	beq	.L77
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	ldr	r2, [r7, #40]
	cmp	r2, r3
	bhi	.L77
	movs	r3, #3
	strb	r3, [r7, #31]
	b	.L70
.L77:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L80
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L80
	b	.L81
.L85:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	beq	.L83
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #2
	bne	.L83
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r2, [r2]
	adds	r2, r2, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L83
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L83
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3]
.L83:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L84
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #62]	@ movhi
.L84:
	ldr	r3, [r7, #40]
	cmp	r3, #-1
	beq	.L82
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	ldr	r2, [r7, #40]
	cmp	r2, r3
	bhi	.L82
	movs	r3, #3
	strb	r3, [r7, #31]
	b	.L70
.L82:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L85
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L85
.L81:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L86
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r3, [r7, #40]
	movs	r2, #1
	movs	r1, #1
	ldr	r0, [r7, #12]
	bl	SPI_WaitFlagStateUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L87
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	orr	r2, r3, #2
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	movs	r3, #3
	strb	r3, [r7, #31]
	b	.L70
.L87:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	uxth	r3, r3
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
.L86:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L88
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	orr	r2, r3, #2
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movw	r2, #65519
	str	r2, [r3, #8]
	movs	r3, #1
	strb	r3, [r7, #31]
.L88:
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	bl	SPI_CheckFlag_BSY
	mov	r3, r0
	cmp	r3, #0
	beq	.L89
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	orr	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	movs	r3, #1
	strb	r3, [r7, #31]
	b	.L70
.L89:
	nop
.L70:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
.L67:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SPI_TransmitReceive, .-HAL_SPI_TransmitReceive
	.section	.text.HAL_SPI_Transmit_IT,"ax",%progbits
	.align	1
	.global	HAL_SPI_Transmit_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_Transmit_IT, %function
HAL_SPI_Transmit_IT:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L91
	movs	r3, #2
	b	.L92
.L91:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #80]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L93
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L94
.L93:
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L95
.L94:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L96
	movs	r3, #2
	strb	r3, [r7, #23]
	b	.L95
.L96:
	ldr	r3, [r7, #12]
	movs	r2, #3
	strb	r2, [r3, #81]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L97
	ldr	r3, [r7, #12]
	ldr	r2, .L104
	str	r2, [r3, #68]
	b	.L98
.L97:
	ldr	r3, [r7, #12]
	ldr	r2, .L104+4
	str	r2, [r3, #68]
.L98:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #32768
	bne	.L99
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #16384
	str	r2, [r3]
.L99:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L100
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #57343
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
.L100:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L101
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #128
	str	r2, [r3, #4]
	b	.L102
.L101:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #160
	str	r2, [r3, #4]
.L102:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #64
	beq	.L103
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
	b	.L95
.L103:
	nop
.L95:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
.L92:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L105:
	.align	2
.L104:
	.word	SPI_TxISR_16BIT
	.word	SPI_TxISR_8BIT
	.size	HAL_SPI_Transmit_IT, .-HAL_SPI_Transmit_IT
	.section	.text.HAL_SPI_Receive_IT,"ax",%progbits
	.align	1
	.global	HAL_SPI_Receive_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_Receive_IT, %function
HAL_SPI_Receive_IT:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L107
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #260
	bne	.L107
	ldr	r3, [r7, #12]
	movs	r2, #4
	strb	r2, [r3, #81]
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	HAL_SPI_TransmitReceive_IT
	mov	r3, r0
	b	.L108
.L107:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L109
	movs	r3, #2
	b	.L108
.L109:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L110
	movs	r3, #2
	strb	r3, [r7, #23]
	b	.L111
.L110:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L112
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L113
.L112:
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L111
.L113:
	ldr	r3, [r7, #12]
	movs	r2, #4
	strb	r2, [r3, #81]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L114
	ldr	r3, [r7, #12]
	ldr	r2, .L119
	str	r2, [r3, #64]
	b	.L115
.L114:
	ldr	r3, [r7, #12]
	ldr	r2, .L119+4
	str	r2, [r3, #64]
.L115:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #32768
	bne	.L116
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #16384
	str	r2, [r3]
.L116:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L117
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #57343
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
.L117:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #96
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #64
	beq	.L118
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
	b	.L111
.L118:
	nop
.L111:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
.L108:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L120:
	.align	2
.L119:
	.word	SPI_RxISR_16BIT
	.word	SPI_RxISR_8BIT
	.size	HAL_SPI_Receive_IT, .-HAL_SPI_Receive_IT
	.section	.text.HAL_SPI_TransmitReceive_IT,"ax",%progbits
	.align	1
	.global	HAL_SPI_TransmitReceive_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_TransmitReceive_IT, %function
HAL_SPI_TransmitReceive_IT:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L122
	movs	r3, #2
	b	.L123
.L122:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L124
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #260
	bne	.L125
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L125
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #4
	beq	.L124
.L125:
	movs	r3, #2
	strb	r3, [r7, #23]
	b	.L126
.L124:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L127
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L127
	ldrh	r3, [r7, #2]
	cmp	r3, #0
	bne	.L128
.L127:
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L126
.L128:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L129
	ldr	r3, [r7, #12]
	movs	r2, #5
	strb	r2, [r3, #81]
.L129:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L130
	ldr	r3, [r7, #12]
	ldr	r2, .L134
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, .L134+4
	str	r2, [r3, #68]
	b	.L131
.L130:
	ldr	r3, [r7, #12]
	ldr	r2, .L134+8
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, .L134+12
	str	r2, [r3, #68]
.L131:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L132
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #57343
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
.L132:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #224
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #64
	beq	.L133
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
	b	.L126
.L133:
	nop
.L126:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
.L123:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L135:
	.align	2
.L134:
	.word	SPI_2linesRxISR_16BIT
	.word	SPI_2linesTxISR_16BIT
	.word	SPI_2linesRxISR_8BIT
	.word	SPI_2linesTxISR_8BIT
	.size	HAL_SPI_TransmitReceive_IT, .-HAL_SPI_TransmitReceive_IT
	.section	.text.HAL_SPI_Transmit_DMA,"ax",%progbits
	.align	1
	.global	HAL_SPI_Transmit_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_Transmit_DMA, %function
HAL_SPI_Transmit_DMA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L137
	movs	r3, #2
	b	.L138
.L137:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L139
	movs	r3, #2
	strb	r3, [r7, #23]
	b	.L140
.L139:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L141
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L142
.L141:
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L140
.L142:
	ldr	r3, [r7, #12]
	movs	r2, #3
	strb	r2, [r3, #81]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #32768
	bne	.L143
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #16384
	str	r2, [r3]
.L143:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L144
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #57343
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
.L144:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r2, .L146
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r2, .L146+4
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r2, .L146+8
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r1, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #12
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #64
	beq	.L145
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
.L145:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #4]
.L140:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
.L138:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L147:
	.align	2
.L146:
	.word	SPI_DMAHalfTransmitCplt
	.word	SPI_DMATransmitCplt
	.word	SPI_DMAError
	.size	HAL_SPI_Transmit_DMA, .-HAL_SPI_Transmit_DMA
	.section	.text.HAL_SPI_Receive_DMA,"ax",%progbits
	.align	1
	.global	HAL_SPI_Receive_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_Receive_DMA, %function
HAL_SPI_Receive_DMA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L149
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #260
	bne	.L149
	ldr	r3, [r7, #12]
	movs	r2, #4
	strb	r2, [r3, #81]
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	HAL_SPI_TransmitReceive_DMA
	mov	r3, r0
	b	.L150
.L149:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L151
	movs	r3, #2
	b	.L150
.L151:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L152
	movs	r3, #2
	strb	r3, [r7, #23]
	b	.L153
.L152:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L154
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L155
.L154:
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L153
.L155:
	ldr	r3, [r7, #12]
	movs	r2, #4
	strb	r2, [r3, #81]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #32768
	bne	.L156
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #16384
	str	r2, [r3]
.L156:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L157
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #57343
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
.L157:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, .L159
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, .L159+4
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, .L159+8
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #12
	mov	r1, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #64
	beq	.L158
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
.L158:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #4]
.L153:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
.L150:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L160:
	.align	2
.L159:
	.word	SPI_DMAHalfReceiveCplt
	.word	SPI_DMAReceiveCplt
	.word	SPI_DMAError
	.size	HAL_SPI_Receive_DMA, .-HAL_SPI_Receive_DMA
	.section	.text.HAL_SPI_TransmitReceive_DMA,"ax",%progbits
	.align	1
	.global	HAL_SPI_TransmitReceive_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_TransmitReceive_DMA, %function
HAL_SPI_TransmitReceive_DMA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strh	r3, [r7, #2]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L162
	movs	r3, #2
	b	.L163
.L162:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	beq	.L164
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #260
	bne	.L165
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L165
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #4
	beq	.L164
.L165:
	movs	r3, #2
	strb	r3, [r7, #23]
	b	.L166
.L164:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L167
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L167
	ldrh	r3, [r7, #2]
	cmp	r3, #0
	bne	.L168
.L167:
	movs	r3, #1
	strb	r3, [r7, #23]
	b	.L166
.L168:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L169
	ldr	r3, [r7, #12]
	movs	r2, #5
	strb	r2, [r3, #81]
.L169:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #52]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #60]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #2]	@ movhi
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L170
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #57343
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
.L170:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #4
	bne	.L171
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, .L174
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, .L174+4
	str	r2, [r3, #60]
	b	.L172
.L171:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, .L174+8
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, .L174+12
	str	r2, [r3, #60]
.L172:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r2, .L174+16
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #12
	mov	r1, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #62]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	ldr	r2, .L174+16
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	mov	r1, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #12
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #54]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #64
	cmp	r3, #64
	beq	.L173
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3]
.L173:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2
	str	r2, [r3, #4]
.L166:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #80]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
.L163:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L175:
	.align	2
.L174:
	.word	SPI_DMAHalfReceiveCplt
	.word	SPI_DMAReceiveCplt
	.word	SPI_DMAHalfTransmitReceiveCplt
	.word	SPI_DMATransmitReceiveCplt
	.word	SPI_DMAError
	.size	HAL_SPI_TransmitReceive_DMA, .-HAL_SPI_TransmitReceive_DMA
	.section	.text.HAL_SPI_DMAPause,"ax",%progbits
	.align	1
	.global	HAL_SPI_DMAPause
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_DMAPause, %function
HAL_SPI_DMAPause:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L177
	movs	r3, #2
	b	.L178
.L177:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #3
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #80]
	movs	r3, #0
.L178:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_SPI_DMAPause, .-HAL_SPI_DMAPause
	.section	.text.HAL_SPI_DMAResume,"ax",%progbits
	.align	1
	.global	HAL_SPI_DMAResume
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_DMAResume, %function
HAL_SPI_DMAResume:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #80]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L180
	movs	r3, #2
	b	.L181
.L180:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #3
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #80]
	movs	r3, #0
.L181:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_SPI_DMAResume, .-HAL_SPI_DMAResume
	.section	.text.HAL_SPI_DMAStop,"ax",%progbits
	.align	1
	.global	HAL_SPI_DMAStop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_DMAStop, %function
HAL_SPI_DMAStop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	cmp	r3, #0
	beq	.L183
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	mov	r0, r3
	bl	HAL_DMA_Abort
.L183:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L184
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	mov	r0, r3
	bl	HAL_DMA_Abort
.L184:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #3
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #81]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SPI_DMAStop, .-HAL_SPI_DMAStop
	.section	.text.HAL_SPI_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_SPI_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_IRQHandler, %function
HAL_SPI_IRQHandler:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	and	r3, r3, #64
	cmp	r3, #0
	bne	.L187
	ldr	r3, [r7, #24]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L187
	ldr	r3, [r7, #28]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L187
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	ldr	r0, [r7, #4]
	blx	r3
	b	.L186
.L187:
	ldr	r3, [r7, #24]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L189
	ldr	r3, [r7, #28]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L189
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	ldr	r0, [r7, #4]
	blx	r3
	b	.L186
.L189:
	ldr	r3, [r7, #24]
	and	r3, r3, #352
	cmp	r3, #0
	beq	.L186
	ldr	r3, [r7, #28]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L186
	ldr	r3, [r7, #24]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L190
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #3
	beq	.L194
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	orr	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
.L190:
	ldr	r3, [r7, #24]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L192
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3]
	ldr	r3, [r7, #16]
.L192:
	ldr	r3, [r7, #24]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L193
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	orr	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
.L193:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #224
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r0, [r7, #4]
	bl	HAL_SPI_ErrorCallback
	b	.L186
.L194:
	nop
.L186:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SPI_IRQHandler, .-HAL_SPI_IRQHandler
	.section	.text.HAL_SPI_TxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_SPI_TxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_TxCpltCallback, %function
HAL_SPI_TxCpltCallback:
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
	.size	HAL_SPI_TxCpltCallback, .-HAL_SPI_TxCpltCallback
	.section	.text.HAL_SPI_RxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_SPI_RxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_RxCpltCallback, %function
HAL_SPI_RxCpltCallback:
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
	.size	HAL_SPI_RxCpltCallback, .-HAL_SPI_RxCpltCallback
	.section	.text.HAL_SPI_TxRxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_SPI_TxRxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_TxRxCpltCallback, %function
HAL_SPI_TxRxCpltCallback:
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
	.size	HAL_SPI_TxRxCpltCallback, .-HAL_SPI_TxRxCpltCallback
	.section	.text.HAL_SPI_TxHalfCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_SPI_TxHalfCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_TxHalfCpltCallback, %function
HAL_SPI_TxHalfCpltCallback:
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
	.size	HAL_SPI_TxHalfCpltCallback, .-HAL_SPI_TxHalfCpltCallback
	.section	.text.HAL_SPI_RxHalfCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_SPI_RxHalfCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_RxHalfCpltCallback, %function
HAL_SPI_RxHalfCpltCallback:
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
	.size	HAL_SPI_RxHalfCpltCallback, .-HAL_SPI_RxHalfCpltCallback
	.section	.text.HAL_SPI_TxRxHalfCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_SPI_TxRxHalfCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_TxRxHalfCpltCallback, %function
HAL_SPI_TxRxHalfCpltCallback:
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
	.size	HAL_SPI_TxRxHalfCpltCallback, .-HAL_SPI_TxRxHalfCpltCallback
	.section	.text.HAL_SPI_ErrorCallback,"ax",%progbits
	.align	1
	.weak	HAL_SPI_ErrorCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_ErrorCallback, %function
HAL_SPI_ErrorCallback:
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
	.size	HAL_SPI_ErrorCallback, .-HAL_SPI_ErrorCallback
	.section	.text.HAL_SPI_GetState,"ax",%progbits
	.align	1
	.global	HAL_SPI_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_GetState, %function
HAL_SPI_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_SPI_GetState, .-HAL_SPI_GetState
	.section	.text.HAL_SPI_GetError,"ax",%progbits
	.align	1
	.global	HAL_SPI_GetError
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SPI_GetError, %function
HAL_SPI_GetError:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_SPI_GetError, .-HAL_SPI_GetError
	.section	.text.SPI_DMATransmitCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_DMATransmitCplt, %function
SPI_DMATransmitCplt:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	bl	HAL_GetTick
	str	r0, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L207
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #4]
	ldr	r2, [r7, #16]
	movs	r1, #100
	ldr	r0, [r7, #20]
	bl	SPI_CheckFlag_BSY
	mov	r3, r0
	cmp	r3, #0
	beq	.L208
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	orr	r2, r3, #32
	ldr	r3, [r7, #20]
	str	r2, [r3, #84]
.L208:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L209
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
.L209:
	ldr	r3, [r7, #20]
	movs	r2, #0
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #20]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L207
	ldr	r0, [r7, #20]
	bl	HAL_SPI_ErrorCallback
	b	.L206
.L207:
	ldr	r0, [r7, #20]
	bl	HAL_SPI_TxCpltCallback
.L206:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_DMATransmitCplt, .-SPI_DMATransmitCplt
	.section	.text.SPI_DMAReceiveCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_DMAReceiveCplt, %function
SPI_DMAReceiveCplt:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	bl	HAL_GetTick
	str	r0, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L212
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L213
	ldr	r3, [r7, #16]
	str	r3, [sp]
	movs	r3, #100
	movs	r2, #1
	movs	r1, #1
	ldr	r0, [r7, #20]
	bl	SPI_WaitFlagStateUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L214
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	orr	r2, r3, #2
	ldr	r3, [r7, #20]
	str	r2, [r3, #84]
.L214:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
.L213:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	bic	r2, r2, #3
	str	r2, [r3, #4]
	ldr	r0, [r7, #20]
	bl	SPI_CheckForDisablingSPI
	mov	r3, r0
	cmp	r3, #0
	beq	.L215
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	orr	r2, r3, #32
	ldr	r3, [r7, #20]
	str	r2, [r3, #84]
.L215:
	ldr	r3, [r7, #20]
	movs	r2, #0
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #20]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L216
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	orr	r2, r3, #2
	ldr	r3, [r7, #20]
	str	r2, [r3, #84]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	movw	r2, #65519
	str	r2, [r3, #8]
.L216:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L212
	ldr	r0, [r7, #20]
	bl	HAL_SPI_ErrorCallback
	b	.L211
.L212:
	ldr	r0, [r7, #20]
	bl	HAL_SPI_RxCpltCallback
.L211:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_DMAReceiveCplt, .-SPI_DMAReceiveCplt
	.section	.text.SPI_DMATransmitReceiveCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_DMATransmitReceiveCplt, %function
SPI_DMATransmitReceiveCplt:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	bl	HAL_GetTick
	str	r0, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L219
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L220
	ldr	r3, [r7, #16]
	str	r3, [sp]
	movs	r3, #100
	movs	r2, #1
	movs	r1, #1
	ldr	r0, [r7, #20]
	bl	SPI_WaitFlagStateUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L221
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	orr	r2, r3, #2
	ldr	r3, [r7, #20]
	str	r2, [r3, #84]
.L221:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	sxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
.L220:
	ldr	r2, [r7, #16]
	movs	r1, #100
	ldr	r0, [r7, #20]
	bl	SPI_CheckFlag_BSY
	mov	r3, r0
	cmp	r3, #0
	beq	.L222
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	orr	r2, r3, #32
	ldr	r3, [r7, #20]
	str	r2, [r3, #84]
.L222:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	bic	r2, r2, #3
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #20]
	movs	r2, #0
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #20]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L223
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	orr	r2, r3, #2
	ldr	r3, [r7, #20]
	str	r2, [r3, #84]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	movw	r2, #65519
	str	r2, [r3, #8]
.L223:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L219
	ldr	r0, [r7, #20]
	bl	HAL_SPI_ErrorCallback
	b	.L218
.L219:
	ldr	r0, [r7, #20]
	bl	HAL_SPI_TxRxCpltCallback
.L218:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_DMATransmitReceiveCplt, .-SPI_DMATransmitReceiveCplt
	.section	.text.SPI_DMAHalfTransmitCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_DMAHalfTransmitCplt, %function
SPI_DMAHalfTransmitCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	HAL_SPI_TxHalfCpltCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_DMAHalfTransmitCplt, .-SPI_DMAHalfTransmitCplt
	.section	.text.SPI_DMAHalfReceiveCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_DMAHalfReceiveCplt, %function
SPI_DMAHalfReceiveCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	HAL_SPI_RxHalfCpltCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_DMAHalfReceiveCplt, .-SPI_DMAHalfReceiveCplt
	.section	.text.SPI_DMAHalfTransmitReceiveCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_DMAHalfTransmitReceiveCplt, %function
SPI_DMAHalfTransmitReceiveCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	HAL_SPI_TxRxHalfCpltCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_DMAHalfTransmitReceiveCplt, .-SPI_DMAHalfTransmitReceiveCplt
	.section	.text.SPI_DMAError,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_DMAError, %function
SPI_DMAError:
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
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #3
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	orr	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r0, [r7, #12]
	bl	HAL_SPI_ErrorCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_DMAError, .-SPI_DMAError
	.section	.text.SPI_2linesRxISR_8BIT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_2linesRxISR_8BIT, %function
SPI_2linesRxISR_8BIT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #56]
	ldrb	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L229
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L231
	ldr	r3, [r7, #4]
	ldr	r2, .L232
	str	r2, [r3, #64]
	b	.L229
.L231:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #96
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L229
	ldr	r0, [r7, #4]
	bl	SPI_CloseRxTx_ISR
.L229:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L233:
	.align	2
.L232:
	.word	SPI_2linesRxISR_8BITCRC
	.size	SPI_2linesRxISR_8BIT, .-SPI_2linesRxISR_8BIT
	.section	.text.SPI_2linesRxISR_8BITCRC,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_2linesRxISR_8BITCRC, %function
SPI_2linesRxISR_8BITCRC:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldrb	r3, [r3]
	uxtb	r3, r3
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #96
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L236
	ldr	r0, [r7, #4]
	bl	SPI_CloseRxTx_ISR
.L236:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_2linesRxISR_8BITCRC, .-SPI_2linesRxISR_8BITCRC
	.section	.text.SPI_2linesTxISR_8BIT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_2linesTxISR_8BIT, %function
SPI_2linesTxISR_8BIT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #48]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	adds	r2, r2, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L240
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L239
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3]
.L239:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L240
	ldr	r0, [r7, #4]
	bl	SPI_CloseRxTx_ISR
.L240:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_2linesTxISR_8BIT, .-SPI_2linesTxISR_8BIT
	.section	.text.SPI_2linesRxISR_16BIT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_2linesRxISR_16BIT, %function
SPI_2linesRxISR_16BIT:
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
	ldr	r3, [r3, #56]
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L241
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L243
	ldr	r3, [r7, #4]
	ldr	r2, .L244
	str	r2, [r3, #64]
	b	.L241
.L243:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L241
	ldr	r0, [r7, #4]
	bl	SPI_CloseRxTx_ISR
.L241:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L245:
	.align	2
.L244:
	.word	SPI_2linesRxISR_16BITCRC
	.size	SPI_2linesRxISR_16BIT, .-SPI_2linesRxISR_16BIT
	.section	.text.SPI_2linesRxISR_16BITCRC,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_2linesRxISR_16BITCRC, %function
SPI_2linesRxISR_16BITCRC:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3, #4]
	ldr	r0, [r7, #4]
	bl	SPI_CloseRxTx_ISR
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_2linesRxISR_16BITCRC, .-SPI_2linesRxISR_16BITCRC
	.section	.text.SPI_2linesTxISR_16BIT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_2linesTxISR_16BIT, %function
SPI_2linesTxISR_16BIT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	ldrh	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L250
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L249
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3]
.L249:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L250
	ldr	r0, [r7, #4]
	bl	SPI_CloseRxTx_ISR
.L250:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_2linesTxISR_16BIT, .-SPI_2linesTxISR_16BIT
	.section	.text.SPI_RxISR_8BITCRC,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_RxISR_8BITCRC, %function
SPI_RxISR_8BITCRC:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldrb	r3, [r3]
	uxtb	r3, r3
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]
	ldr	r0, [r7, #4]
	bl	SPI_CloseRx_ISR
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_RxISR_8BITCRC, .-SPI_RxISR_8BITCRC
	.section	.text.SPI_RxISR_8BIT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_RxISR_8BIT, %function
SPI_RxISR_8BIT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r3, #12
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #56]
	ldrb	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	cmp	r3, #1
	bne	.L253
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L253
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3]
.L253:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L252
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L255
	ldr	r3, [r7, #4]
	ldr	r2, .L256
	str	r2, [r3, #64]
	b	.L252
.L255:
	ldr	r0, [r7, #4]
	bl	SPI_CloseRx_ISR
.L252:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L257:
	.align	2
.L256:
	.word	SPI_RxISR_8BITCRC
	.size	SPI_RxISR_8BIT, .-SPI_RxISR_8BIT
	.section	.text.SPI_RxISR_16BITCRC,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_RxISR_16BITCRC, %function
SPI_RxISR_16BITCRC:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #96
	str	r2, [r3, #4]
	ldr	r0, [r7, #4]
	bl	SPI_CloseRx_ISR
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_RxISR_16BITCRC, .-SPI_RxISR_16BITCRC
	.section	.text.SPI_RxISR_16BIT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_RxISR_16BIT, %function
SPI_RxISR_16BIT:
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
	ldr	r3, [r3, #56]
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #62]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	cmp	r3, #1
	bne	.L260
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L260
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3]
.L260:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #62]
	cmp	r3, #0
	bne	.L259
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L262
	ldr	r3, [r7, #4]
	ldr	r2, .L263
	str	r2, [r3, #64]
	b	.L259
.L262:
	ldr	r0, [r7, #4]
	bl	SPI_CloseRx_ISR
.L259:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L264:
	.align	2
.L263:
	.word	SPI_RxISR_16BITCRC
	.size	SPI_RxISR_16BIT, .-SPI_RxISR_16BIT
	.section	.text.SPI_TxISR_8BIT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_TxISR_8BIT, %function
SPI_TxISR_8BIT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #48]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	adds	r2, r2, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L268
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L267
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3]
.L267:
	ldr	r0, [r7, #4]
	bl	SPI_CloseTx_ISR
.L268:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_TxISR_8BIT, .-SPI_TxISR_8BIT
	.section	.text.SPI_TxISR_16BIT,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_TxISR_16BIT, %function
SPI_TxISR_16BIT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	ldrh	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #54]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #54]
	cmp	r3, #0
	bne	.L272
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L271
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3]
.L271:
	ldr	r0, [r7, #4]
	bl	SPI_CloseTx_ISR
.L272:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_TxISR_16BIT, .-SPI_TxISR_16BIT
	.section	.text.SPI_WaitFlagStateUntilTimeout,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_WaitFlagStateUntilTimeout, %function
SPI_WaitFlagStateUntilTimeout:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	b	.L274
.L280:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L274
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L275
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bhi	.L274
.L275:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #224
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #260
	bne	.L276
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #32768
	beq	.L277
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #1024
	bne	.L276
.L277:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3]
.L276:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #8192
	bne	.L278
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movw	r3, #57343
	ands	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #8192
	str	r2, [r3]
.L278:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #80]
	movs	r3, #3
	b	.L279
.L274:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L280
	movs	r3, #0
.L279:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_WaitFlagStateUntilTimeout, .-SPI_WaitFlagStateUntilTimeout
	.section	.text.SPI_CheckForDisablingSPI,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_CheckForDisablingSPI, %function
SPI_CheckForDisablingSPI:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #260
	bne	.L282
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #32768
	beq	.L283
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #1024
	bne	.L282
.L283:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3]
.L282:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SPI_CheckForDisablingSPI, .-SPI_CheckForDisablingSPI
	.section	.text.SPI_CheckFlag_BSY,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_CheckFlag_BSY, %function
SPI_CheckFlag_BSY:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	ldr	r3, [r7, #8]
	movs	r2, #0
	movs	r1, #128
	ldr	r0, [r7, #12]
	bl	SPI_WaitFlagStateUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L286
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	orr	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	movs	r3, #3
	b	.L287
.L286:
	movs	r3, #0
.L287:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_CheckFlag_BSY, .-SPI_CheckFlag_BSY
	.section	.text.SPI_CloseRxTx_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_CloseRxTx_ISR, %function
SPI_CloseRxTx_ISR:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32
	str	r2, [r3, #4]
	ldr	r2, [r7, #12]
	movs	r1, #100
	ldr	r0, [r7, #4]
	bl	SPI_CheckFlag_BSY
	mov	r3, r0
	cmp	r3, #0
	beq	.L289
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
.L289:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L290
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	orr	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #65519
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	bl	HAL_SPI_ErrorCallback
	b	.L294
.L290:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	bne	.L292
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #81]
	uxtb	r3, r3
	cmp	r3, #4
	bne	.L293
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r0, [r7, #4]
	bl	HAL_SPI_RxCpltCallback
	b	.L294
.L293:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r0, [r7, #4]
	bl	HAL_SPI_TxRxCpltCallback
	b	.L294
.L292:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r0, [r7, #4]
	bl	HAL_SPI_ErrorCallback
.L294:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_CloseRxTx_ISR, .-SPI_CloseRxTx_ISR
	.section	.text.SPI_CloseRx_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_CloseRx_ISR, %function
SPI_CloseRx_ISR:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #96
	str	r2, [r3, #4]
	ldr	r0, [r7, #4]
	bl	SPI_CheckForDisablingSPI
	mov	r3, r0
	cmp	r3, #0
	beq	.L296
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
.L296:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L297
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	orr	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movw	r2, #65519
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	bl	HAL_SPI_ErrorCallback
	b	.L300
.L297:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	bne	.L299
	ldr	r0, [r7, #4]
	bl	HAL_SPI_RxCpltCallback
	b	.L300
.L299:
	ldr	r0, [r7, #4]
	bl	HAL_SPI_ErrorCallback
.L300:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_CloseRx_ISR, .-SPI_CloseRx_ISR
	.section	.text.SPI_CloseTx_ISR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SPI_CloseTx_ISR, %function
SPI_CloseTx_ISR:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #160
	str	r2, [r3, #4]
	ldr	r2, [r7, #12]
	movs	r1, #100
	ldr	r0, [r7, #4]
	bl	SPI_CheckFlag_BSY
	mov	r3, r0
	cmp	r3, #0
	beq	.L302
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
.L302:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L303
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
.L303:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #81]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L304
	ldr	r0, [r7, #4]
	bl	HAL_SPI_ErrorCallback
	b	.L306
.L304:
	ldr	r0, [r7, #4]
	bl	HAL_SPI_TxCpltCallback
.L306:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	SPI_CloseTx_ISR, .-SPI_CloseTx_ISR
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
