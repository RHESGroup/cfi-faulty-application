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
	.file	"stm32f4xx_hal_i2c.c"
	.text
	.section	.text.HAL_I2C_Init,"ax",%progbits
	.align	1
	.global	HAL_I2C_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Init, %function
HAL_I2C_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	movs	r3, #1
	b	.L3
.L2:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_MspInit
.L4:
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
	bl	HAL_RCC_GetPCLK1Freq
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, .L17
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #18
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, .L17+4
	cmp	r3, r2
	bhi	.L5
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	b	.L6
.L5:
	ldr	r3, [r7, #12]
	mov	r2, #300
	mul	r3, r2, r3
	ldr	r2, .L17+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #6
	adds	r3, r3, #1
.L6:
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	str	r3, [r2, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, .L17+4
	cmp	r3, r2
	bhi	.L7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r2, [r7, #8]
	udiv	r2, r2, r3
	movw	r3, #4092
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r2, [r7, #8]
	udiv	r3, r2, r3
	b	.L10
.L8:
	movs	r3, #4
	b	.L10
.L7:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L11
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	udiv	r3, r2, r3
	ubfx	r3, r3, #0, #12
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L12
.L11:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	udiv	r3, r2, r3
	ubfx	r3, r3, #0, #12
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
.L12:
	cmp	r3, #0
	beq	.L13
	movs	r3, #1
	b	.L10
.L13:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L15
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	udiv	r3, r2, r3
	orr	r3, r3, #32768
	b	.L10
.L15:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r2, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	udiv	r3, r2, r3
	orr	r3, r3, #49152
.L10:
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	str	r3, [r2, #28]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L18:
	.align	2
.L17:
	.word	1125899907
	.word	100000
	.word	274877907
	.size	HAL_I2C_Init, .-HAL_I2C_Init
	.section	.text.HAL_I2C_DeInit,"ax",%progbits
	.align	1
	.global	HAL_I2C_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_DeInit, %function
HAL_I2C_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L20
	movs	r3, #1
	b	.L21
.L20:
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
	ldr	r0, [r7, #4]
	bl	HAL_I2C_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
.L21:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_I2C_DeInit, .-HAL_I2C_DeInit
	.section	.text.HAL_I2C_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_I2C_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_MspInit, %function
HAL_I2C_MspInit:
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
	.size	HAL_I2C_MspInit, .-HAL_I2C_MspInit
	.section	.text.HAL_I2C_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_I2C_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_MspDeInit, %function
HAL_I2C_MspDeInit:
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
	.size	HAL_I2C_MspDeInit, .-HAL_I2C_MspDeInit
	.section	.text.HAL_I2C_Master_Transmit,"ax",%progbits
	.align	1
	.global	HAL_I2C_Master_Transmit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Master_Transmit, %function
HAL_I2C_Master_Transmit:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L25
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L37
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L26
	movs	r3, #2
	b	.L27
.L26:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L28
	movs	r3, #2
	b	.L27
.L28:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #16
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, .L37+4
	str	r2, [r3, #44]
	ldrh	r3, [r7, #10]
	ldr	r2, [r7, #32]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	I2C_MasterRequestWrite
	mov	r3, r0
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L30
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L27
.L30:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L27
.L29:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	b	.L31
.L36:
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnTXEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L33
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	movs	r3, #1
	b	.L27
.L33:
	movs	r3, #3
	b	.L27
.L32:
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldrh	r3, [r7, #8]
	subs	r3, r3, #1
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L34
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldrh	r3, [r7, #8]
	subs	r3, r3, #1
	strh	r3, [r7, #8]	@ movhi
.L34:
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnBTFFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L35
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	movs	r3, #1
	b	.L27
.L35:
	movs	r3, #3
	b	.L27
.L31:
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	bne	.L36
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L27
.L25:
	movs	r3, #2
.L27:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L38:
	.align	2
.L37:
	.word	1048578
	.word	-65536
	.size	HAL_I2C_Master_Transmit, .-HAL_I2C_Master_Transmit
	.section	.text.HAL_I2C_Master_Receive,"ax",%progbits
	.align	1
	.global	HAL_I2C_Master_Receive
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Master_Receive, %function
HAL_I2C_Master_Receive:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L40
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L62
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L41
	movs	r3, #2
	b	.L42
.L41:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L43
	movs	r3, #2
	b	.L42
.L43:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #16
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, .L62+4
	str	r2, [r3, #44]
	ldrh	r3, [r7, #10]
	ldr	r2, [r7, #40]
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	I2C_MasterRequestRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L44
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L45
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L42
.L45:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L42
.L44:
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	bne	.L46
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	b	.L50
.L46:
	ldrh	r3, [r7, #8]
	cmp	r3, #1
	bne	.L48
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	b	.L50
.L48:
	ldrh	r3, [r7, #8]
	cmp	r3, #2
	bne	.L49
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	b	.L50
.L49:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	b	.L50
.L61:
	ldrh	r3, [r7, #8]
	cmp	r3, #3
	bhi	.L51
	ldrh	r3, [r7, #8]
	cmp	r3, #1
	bne	.L52
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnRXNEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #32
	bne	.L54
	movs	r3, #3
	b	.L42
.L54:
	movs	r3, #1
	b	.L42
.L53:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #8]
	subs	r3, r3, #1
	strh	r3, [r7, #8]	@ movhi
	b	.L50
.L52:
	ldrh	r3, [r7, #8]
	cmp	r3, #2
	bne	.L55
	ldr	r3, [r7, #40]
	movs	r2, #0
	ldr	r1, .L62+8
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L56
	movs	r3, #3
	b	.L42
.L56:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #8]
	subs	r3, r3, #1
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #8]
	subs	r3, r3, #1
	strh	r3, [r7, #8]	@ movhi
	b	.L50
.L55:
	ldr	r3, [r7, #40]
	movs	r2, #0
	ldr	r1, .L62+8
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L57
	movs	r3, #3
	b	.L42
.L57:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #8]
	subs	r3, r3, #1
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #40]
	movs	r2, #0
	ldr	r1, .L62+8
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L58
	movs	r3, #3
	b	.L42
.L63:
	.align	2
.L62:
	.word	1048578
	.word	-65536
	.word	65540
.L58:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #8]
	subs	r3, r3, #1
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #8]
	subs	r3, r3, #1
	strh	r3, [r7, #8]	@ movhi
	b	.L50
.L51:
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnRXNEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L59
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #32
	bne	.L60
	movs	r3, #3
	b	.L42
.L60:
	movs	r3, #1
	b	.L42
.L59:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #8]
	subs	r3, r3, #1
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L50
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #8]
	subs	r3, r3, #1
	strh	r3, [r7, #8]	@ movhi
.L50:
	ldrh	r3, [r7, #8]
	cmp	r3, #0
	bne	.L61
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L42
.L40:
	movs	r3, #2
.L42:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_I2C_Master_Receive, .-HAL_I2C_Master_Receive
	.section	.text.HAL_I2C_Slave_Transmit,"ax",%progbits
	.align	1
	.global	HAL_I2C_Slave_Transmit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Slave_Transmit, %function
HAL_I2C_Slave_Transmit:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L65
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L66
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L67
.L66:
	movs	r3, #1
	b	.L68
.L67:
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L79
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L69
	movs	r3, #2
	b	.L68
.L69:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L70
	movs	r3, #2
	b	.L68
.L70:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, .L79+4
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	ldr	r1, .L79+8
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L71
	movs	r3, #3
	b	.L68
.L71:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #49152
	bne	.L74
	ldr	r3, [r7]
	movs	r2, #0
	ldr	r1, .L79+8
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L73
	movs	r3, #3
	b	.L68
.L73:
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	b	.L74
.L77:
	ldr	r1, [r7]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnTXEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L75
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L76
	movs	r3, #1
	b	.L68
.L76:
	movs	r3, #3
	b	.L68
.L75:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldrh	r3, [r7, #6]
	subs	r3, r3, #1
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L74
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	beq	.L74
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldrh	r3, [r7, #6]
	subs	r3, r3, #1
	strh	r3, [r7, #6]	@ movhi
.L74:
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L77
	ldr	r3, [r7]
	movs	r2, #0
	mov	r1, #66560
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L78
	movs	r3, #3
	b	.L68
.L78:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mvn	r2, #1024
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L68
.L65:
	movs	r3, #2
.L68:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L80:
	.align	2
.L79:
	.word	1048578
	.word	-65536
	.word	65538
	.size	HAL_I2C_Slave_Transmit, .-HAL_I2C_Slave_Transmit
	.section	.text.HAL_I2C_Slave_Receive,"ax",%progbits
	.align	1
	.global	HAL_I2C_Slave_Receive
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Slave_Receive, %function
HAL_I2C_Slave_Receive:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L82
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L83
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L84
.L83:
	movs	r3, #1
	b	.L85
.L84:
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L95
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L86
	movs	r3, #2
	b	.L85
.L86:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L87
	movs	r3, #2
	b	.L85
.L87:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, .L95+4
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	ldr	r1, .L95+8
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L88
	movs	r3, #3
	b	.L85
.L88:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	b	.L89
.L92:
	ldr	r1, [r7]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnRXNEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L90
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #32
	bne	.L91
	movs	r3, #3
	b	.L85
.L91:
	movs	r3, #1
	b	.L85
.L90:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #6]
	subs	r3, r3, #1
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L89
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	beq	.L89
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #6]
	subs	r3, r3, #1
	strh	r3, [r7, #6]	@ movhi
.L89:
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L92
	movs	r1, #35
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnSTOPFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L93
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L94
	movs	r3, #1
	b	.L85
.L94:
	movs	r3, #3
	b	.L85
.L93:
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L85
.L82:
	movs	r3, #2
.L85:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L96:
	.align	2
.L95:
	.word	1048578
	.word	-65536
	.word	65538
	.size	HAL_I2C_Slave_Receive, .-HAL_I2C_Slave_Receive
	.section	.text.HAL_I2C_Master_Transmit_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_Master_Transmit_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Master_Transmit_IT, %function
HAL_I2C_Master_Transmit_IT:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L98
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L107
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L99
	movs	r3, #2
	b	.L100
.L99:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L101
	movs	r3, #2
	b	.L100
.L101:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #16
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L107+4
	str	r2, [r3, #44]
	ldrh	r3, [r7, #10]
	movs	r2, #35
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	I2C_MasterRequestWrite
	mov	r3, r0
	cmp	r3, #0
	beq	.L102
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L103
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L100
.L103:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L100
.L102:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #40]
	cmp	r3, #0
	beq	.L104
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1792
	str	r2, [r3, #4]
	b	.L105
.L104:
	movs	r3, #35
	movs	r2, #0
	ldr	r1, .L107+8
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L106
	movs	r3, #3
	b	.L100
.L106:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
.L105:
	movs	r3, #0
	b	.L100
.L98:
	movs	r3, #2
.L100:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L108:
	.align	2
.L107:
	.word	1048578
	.word	-65536
	.word	65664
	.size	HAL_I2C_Master_Transmit_IT, .-HAL_I2C_Master_Transmit_IT
	.section	.text.HAL_I2C_Master_Receive_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_Master_Receive_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Master_Receive_IT, %function
HAL_I2C_Master_Receive_IT:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L110
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L122
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L111
	movs	r3, #2
	b	.L112
.L111:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L113
	movs	r3, #2
	b	.L112
.L113:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #16
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L122+4
	str	r2, [r3, #44]
	ldrh	r3, [r7, #10]
	movs	r2, #35
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	I2C_MasterRequestRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L114
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L115
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L112
.L115:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L112
.L114:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	bne	.L116
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	b	.L117
.L116:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #1
	bne	.L118
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	b	.L117
.L118:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #2
	bne	.L119
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	b	.L117
.L119:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
.L117:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	bne	.L120
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
.L120:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	beq	.L121
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1792
	str	r2, [r3, #4]
.L121:
	movs	r3, #0
	b	.L112
.L110:
	movs	r3, #2
.L112:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L123:
	.align	2
.L122:
	.word	1048578
	.word	-65536
	.size	HAL_I2C_Master_Receive_IT, .-HAL_I2C_Master_Receive_IT
	.section	.text.HAL_I2C_Master_Sequential_Transmit_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_Master_Sequential_Transmit_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Master_Sequential_Transmit_IT, %function
HAL_I2C_Master_Sequential_Transmit_IT:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L125
	ldr	r3, [r7, #32]
	cmp	r3, #4
	beq	.L126
	ldr	r3, [r7, #32]
	cmp	r3, #1
	bne	.L127
.L126:
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L137
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L127
	movs	r3, #2
	b	.L128
.L127:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L129
	movs	r3, #2
	b	.L128
.L129:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #16
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #18
	beq	.L130
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L131
.L130:
	ldrh	r3, [r7, #10]
	movs	r2, #35
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	I2C_MasterRequestWrite
	mov	r3, r0
	cmp	r3, #0
	beq	.L132
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L133
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L128
.L133:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L128
.L132:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
.L131:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #40]
	cmp	r3, #0
	beq	.L134
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1792
	str	r2, [r3, #4]
	b	.L135
.L134:
	movs	r3, #35
	movs	r2, #0
	ldr	r1, .L137+4
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L136
	movs	r3, #3
	b	.L128
.L136:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
.L135:
	movs	r3, #0
	b	.L128
.L125:
	movs	r3, #2
.L128:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L138:
	.align	2
.L137:
	.word	1048578
	.word	65664
	.size	HAL_I2C_Master_Sequential_Transmit_IT, .-HAL_I2C_Master_Sequential_Transmit_IT
	.section	.text.HAL_I2C_Master_Sequential_Receive_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_Master_Sequential_Receive_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Master_Sequential_Receive_IT, %function
HAL_I2C_Master_Sequential_Receive_IT:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L140
	ldr	r3, [r7, #48]
	cmp	r3, #4
	beq	.L141
	ldr	r3, [r7, #48]
	cmp	r3, #1
	bne	.L142
.L141:
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L159
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L142
	movs	r3, #2
	b	.L143
.L142:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L144
	movs	r3, #2
	b	.L143
.L144:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #16
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #48]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #17
	beq	.L145
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L146
.L145:
	ldrh	r3, [r7, #10]
	movs	r2, #35
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	I2C_MasterRequestRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L146
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L147
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L143
.L147:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L143
.L146:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	bne	.L148
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	b	.L149
.L148:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #1
	bne	.L150
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #4
	beq	.L151
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #8
	beq	.L151
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #18
	beq	.L151
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #2
	beq	.L152
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	b	.L153
.L152:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
.L153:
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	b	.L149
.L151:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	b	.L149
.L150:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #2
	bne	.L155
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #2
	beq	.L156
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3]
	b	.L157
.L156:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
.L157:
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	b	.L149
.L155:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
.L149:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	beq	.L158
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1792
	str	r2, [r3, #4]
.L158:
	movs	r3, #0
	b	.L143
.L140:
	movs	r3, #2
.L143:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L160:
	.align	2
.L159:
	.word	1048578
	.size	HAL_I2C_Master_Sequential_Receive_IT, .-HAL_I2C_Master_Sequential_Receive_IT
	.section	.text.HAL_I2C_Slave_Transmit_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_Slave_Transmit_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Slave_Transmit_IT, %function
HAL_I2C_Slave_Transmit_IT:
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
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L162
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L163
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L164
.L163:
	movs	r3, #1
	b	.L165
.L164:
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L168
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L166
	movs	r3, #2
	b	.L165
.L166:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L167
	movs	r3, #2
	b	.L165
.L167:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L168+4
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1792
	str	r2, [r3, #4]
	movs	r3, #0
	b	.L165
.L162:
	movs	r3, #2
.L165:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L169:
	.align	2
.L168:
	.word	1048578
	.word	-65536
	.size	HAL_I2C_Slave_Transmit_IT, .-HAL_I2C_Slave_Transmit_IT
	.section	.text.HAL_I2C_Slave_Receive_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_Slave_Receive_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Slave_Receive_IT, %function
HAL_I2C_Slave_Receive_IT:
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
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L171
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L172
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L173
.L172:
	movs	r3, #1
	b	.L174
.L173:
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L177
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L175
	movs	r3, #2
	b	.L174
.L175:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L176
	movs	r3, #2
	b	.L174
.L176:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L177+4
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1792
	str	r2, [r3, #4]
	movs	r3, #0
	b	.L174
.L171:
	movs	r3, #2
.L174:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L178:
	.align	2
.L177:
	.word	1048578
	.word	-65536
	.size	HAL_I2C_Slave_Receive_IT, .-HAL_I2C_Slave_Receive_IT
	.section	.text.HAL_I2C_Slave_Sequential_Transmit_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_Slave_Sequential_Transmit_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Slave_Sequential_Transmit_IT, %function
HAL_I2C_Slave_Sequential_Transmit_IT:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #40
	bne	.L180
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L181
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L182
.L181:
	movs	r3, #1
	b	.L183
.L182:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L184
	movs	r3, #2
	b	.L183
.L184:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #41
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #44]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1792
	str	r2, [r3, #4]
	movs	r3, #0
	b	.L183
.L180:
	movs	r3, #2
.L183:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_I2C_Slave_Sequential_Transmit_IT, .-HAL_I2C_Slave_Sequential_Transmit_IT
	.section	.text.HAL_I2C_Slave_Sequential_Receive_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_Slave_Sequential_Receive_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Slave_Sequential_Receive_IT, %function
HAL_I2C_Slave_Sequential_Receive_IT:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #40
	bne	.L186
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L187
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L188
.L187:
	movs	r3, #1
	b	.L189
.L188:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L190
	movs	r3, #2
	b	.L189
.L190:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #42
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #44]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1792
	str	r2, [r3, #4]
	movs	r3, #0
	b	.L189
.L186:
	movs	r3, #2
.L189:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_I2C_Slave_Sequential_Receive_IT, .-HAL_I2C_Slave_Sequential_Receive_IT
	.section	.text.HAL_I2C_EnableListen_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_EnableListen_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_EnableListen_IT, %function
HAL_I2C_EnableListen_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L192
	ldr	r3, [r7, #4]
	movs	r2, #40
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #768
	str	r2, [r3, #4]
	movs	r3, #0
	b	.L193
.L192:
	movs	r3, #2
.L193:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_I2C_EnableListen_IT, .-HAL_I2C_EnableListen_IT
	.section	.text.HAL_I2C_DisableListen_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_DisableListen_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_DisableListen_IT, %function
HAL_I2C_DisableListen_IT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #40
	bne	.L195
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	and	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #768
	str	r2, [r3, #4]
	movs	r3, #0
	b	.L196
.L195:
	movs	r3, #2
.L196:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_I2C_DisableListen_IT, .-HAL_I2C_DisableListen_IT
	.section	.text.HAL_I2C_Master_Transmit_DMA,"ax",%progbits
	.align	1
	.global	HAL_I2C_Master_Transmit_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Master_Transmit_DMA, %function
HAL_I2C_Master_Transmit_DMA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L198
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L209
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L199
	movs	r3, #2
	b	.L200
.L199:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L201
	movs	r3, #2
	b	.L200
.L201:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #16
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L209+4
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #40]
	cmp	r3, #0
	beq	.L202
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L209+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L209+12
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #52]
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	mov	r2, r3
	ldrh	r3, [r7, #8]
	bl	HAL_DMA_Start_IT
	ldrh	r3, [r7, #10]
	movs	r2, #35
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	I2C_MasterRequestWrite
	mov	r3, r0
	cmp	r3, #0
	beq	.L203
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L204
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L200
.L204:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L200
.L203:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	b	.L205
.L202:
	ldrh	r3, [r7, #10]
	movs	r2, #35
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	I2C_MasterRequestWrite
	mov	r3, r0
	cmp	r3, #0
	beq	.L206
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L207
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L200
.L207:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L200
.L206:
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	movs	r3, #35
	movs	r2, #0
	ldr	r1, .L209+16
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L208
	movs	r3, #3
	b	.L200
.L208:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
.L205:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L200
.L198:
	movs	r3, #2
.L200:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L210:
	.align	2
.L209:
	.word	1048578
	.word	-65536
	.word	I2C_DMAMasterTransmitCplt
	.word	I2C_DMAError
	.word	65664
	.size	HAL_I2C_Master_Transmit_DMA, .-HAL_I2C_Master_Transmit_DMA
	.section	.text.HAL_I2C_Master_Receive_DMA,"ax",%progbits
	.align	1
	.global	HAL_I2C_Master_Receive_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Master_Receive_DMA, %function
HAL_I2C_Master_Receive_DMA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L212
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L224
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L213
	movs	r3, #2
	b	.L214
.L213:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L215
	movs	r3, #2
	b	.L214
.L215:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #16
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #8]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L224+4
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #40]
	cmp	r3, #0
	beq	.L216
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L224+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L224+12
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldrh	r3, [r7, #8]
	bl	HAL_DMA_Start_IT
	ldrh	r3, [r7, #10]
	movs	r2, #35
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	I2C_MasterRequestRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L217
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L218
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L214
.L218:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L214
.L217:
	ldrh	r3, [r7, #8]
	cmp	r3, #1
	bne	.L219
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	b	.L220
.L219:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3, #4]
.L220:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	b	.L221
.L216:
	ldrh	r3, [r7, #10]
	movs	r2, #35
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	I2C_MasterRequestRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L222
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L223
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L214
.L223:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L214
.L222:
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
.L221:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L214
.L212:
	movs	r3, #2
.L214:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L225:
	.align	2
.L224:
	.word	1048578
	.word	-65536
	.word	I2C_DMAMasterReceiveCplt
	.word	I2C_DMAError
	.size	HAL_I2C_Master_Receive_DMA, .-HAL_I2C_Master_Receive_DMA
	.section	.text.HAL_I2C_Master_Abort_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_Master_Abort_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Master_Abort_IT, %function
HAL_I2C_Master_Abort_IT:
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
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	cmp	r3, #16
	beq	.L227
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L228
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L228
.L227:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L229
	movs	r3, #2
	b	.L230
.L229:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1792
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L230
.L228:
	movs	r3, #1
.L230:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_I2C_Master_Abort_IT, .-HAL_I2C_Master_Abort_IT
	.section	.text.HAL_I2C_Slave_Transmit_DMA,"ax",%progbits
	.align	1
	.global	HAL_I2C_Slave_Transmit_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Slave_Transmit_DMA, %function
HAL_I2C_Slave_Transmit_DMA:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L232
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L233
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L234
.L233:
	movs	r3, #1
	b	.L235
.L234:
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L242
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L236
	movs	r3, #2
	b	.L235
.L236:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L237
	movs	r3, #2
	b	.L235
.L237:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L242+4
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L242+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L242+12
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #52]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	mov	r2, r3
	ldrh	r3, [r7, #6]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	movw	r3, #10000
	movs	r2, #0
	ldr	r1, .L242+16
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L238
	movs	r3, #3
	b	.L235
.L238:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #16384
	bne	.L239
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	b	.L240
.L239:
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	movw	r3, #10000
	movs	r2, #0
	ldr	r1, .L242+16
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L241
	movs	r3, #3
	b	.L235
.L241:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
.L240:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L235
.L232:
	movs	r3, #2
.L235:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L243:
	.align	2
.L242:
	.word	1048578
	.word	-65536
	.word	I2C_DMASlaveTransmitCplt
	.word	I2C_DMAError
	.word	65538
	.size	HAL_I2C_Slave_Transmit_DMA, .-HAL_I2C_Slave_Transmit_DMA
	.section	.text.HAL_I2C_Slave_Receive_DMA,"ax",%progbits
	.align	1
	.global	HAL_I2C_Slave_Receive_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Slave_Receive_DMA, %function
HAL_I2C_Slave_Receive_DMA:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L245
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L246
	ldrh	r3, [r7, #6]
	cmp	r3, #0
	bne	.L247
.L246:
	movs	r3, #1
	b	.L248
.L247:
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L252
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L249
	movs	r3, #2
	b	.L248
.L249:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L250
	movs	r3, #2
	b	.L248
.L250:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #6]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L252+4
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L252+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L252+12
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldrh	r3, [r7, #6]
	bl	HAL_DMA_Start_IT
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	movw	r3, #10000
	movs	r2, #0
	ldr	r1, .L252+16
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L251
	movs	r3, #3
	b	.L248
.L251:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L248
.L245:
	movs	r3, #2
.L248:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L253:
	.align	2
.L252:
	.word	1048578
	.word	-65536
	.word	I2C_DMASlaveReceiveCplt
	.word	I2C_DMAError
	.word	65538
	.size	HAL_I2C_Slave_Receive_DMA, .-HAL_I2C_Slave_Receive_DMA
	.section	.text.HAL_I2C_Mem_Write,"ax",%progbits
	.align	1
	.global	HAL_I2C_Mem_Write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Mem_Write, %function
HAL_I2C_Mem_Write:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L255
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L267
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L256
	movs	r3, #2
	b	.L257
.L256:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L258
	movs	r3, #2
	b	.L257
.L258:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #64
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, .L267+4
	str	r2, [r3, #44]
	ldrh	r0, [r7, #6]
	ldrh	r2, [r7, #8]
	ldrh	r1, [r7, #10]
	ldr	r3, [r7, #32]
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [r7, #12]
	bl	I2C_RequestMemoryWrite
	mov	r3, r0
	cmp	r3, #0
	beq	.L261
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L260
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L257
.L260:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L257
.L264:
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnTXEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L262
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L263
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	movs	r3, #1
	b	.L257
.L263:
	movs	r3, #3
	b	.L257
.L262:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldrh	r3, [r7, #28]
	subs	r3, r3, #1
	strh	r3, [r7, #28]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L261
	ldrh	r3, [r7, #28]
	cmp	r3, #0
	beq	.L261
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldrh	r3, [r7, #28]
	subs	r3, r3, #1
	strh	r3, [r7, #28]	@ movhi
.L261:
	ldrh	r3, [r7, #28]
	cmp	r3, #0
	bne	.L264
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnTXEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L265
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L266
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	movs	r3, #1
	b	.L257
.L266:
	movs	r3, #3
	b	.L257
.L265:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L257
.L255:
	movs	r3, #2
.L257:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L268:
	.align	2
.L267:
	.word	1048578
	.word	-65536
	.size	HAL_I2C_Mem_Write, .-HAL_I2C_Mem_Write
	.section	.text.HAL_I2C_Mem_Read,"ax",%progbits
	.align	1
	.global	HAL_I2C_Mem_Read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Mem_Read, %function
HAL_I2C_Mem_Read:
	@ args = 12, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L270
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L292
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L271
	movs	r3, #2
	b	.L272
.L271:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L273
	movs	r3, #2
	b	.L272
.L273:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #64
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, .L292+4
	str	r2, [r3, #44]
	ldrh	r0, [r7, #6]
	ldrh	r2, [r7, #8]
	ldrh	r1, [r7, #10]
	ldr	r3, [r7, #48]
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [r7, #12]
	bl	I2C_RequestMemoryRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L274
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L275
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L272
.L275:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L272
.L274:
	ldrh	r3, [r7, #44]
	cmp	r3, #0
	bne	.L276
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	b	.L280
.L276:
	ldrh	r3, [r7, #44]
	cmp	r3, #1
	bne	.L278
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	b	.L280
.L278:
	ldrh	r3, [r7, #44]
	cmp	r3, #2
	bne	.L279
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	b	.L280
.L279:
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	b	.L280
.L291:
	ldrh	r3, [r7, #44]
	cmp	r3, #3
	bhi	.L281
	ldrh	r3, [r7, #44]
	cmp	r3, #1
	bne	.L282
	ldr	r1, [r7, #48]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnRXNEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L283
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #32
	bne	.L284
	movs	r3, #3
	b	.L272
.L284:
	movs	r3, #1
	b	.L272
.L283:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #44]
	subs	r3, r3, #1
	strh	r3, [r7, #44]	@ movhi
	b	.L280
.L282:
	ldrh	r3, [r7, #44]
	cmp	r3, #2
	bne	.L285
	ldr	r3, [r7, #48]
	movs	r2, #0
	ldr	r1, .L292+8
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L286
	movs	r3, #3
	b	.L272
.L286:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #44]
	subs	r3, r3, #1
	strh	r3, [r7, #44]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #44]
	subs	r3, r3, #1
	strh	r3, [r7, #44]	@ movhi
	b	.L280
.L285:
	ldr	r3, [r7, #48]
	movs	r2, #0
	ldr	r1, .L292+8
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L287
	movs	r3, #3
	b	.L272
.L287:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #44]
	subs	r3, r3, #1
	strh	r3, [r7, #44]	@ movhi
	ldr	r3, [r7, #48]
	movs	r2, #0
	ldr	r1, .L292+8
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L288
	movs	r3, #3
	b	.L272
.L293:
	.align	2
.L292:
	.word	1048578
	.word	-65536
	.word	65540
.L288:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #44]
	subs	r3, r3, #1
	strh	r3, [r7, #44]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #44]
	subs	r3, r3, #1
	strh	r3, [r7, #44]	@ movhi
	b	.L280
.L281:
	ldr	r1, [r7, #48]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnRXNEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L289
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #32
	bne	.L290
	movs	r3, #3
	b	.L272
.L290:
	movs	r3, #1
	b	.L272
.L289:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #44]
	subs	r3, r3, #1
	strh	r3, [r7, #44]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L280
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	uxtb	r2, r1
	strb	r2, [r3]
	ldrh	r3, [r7, #44]
	subs	r3, r3, #1
	strh	r3, [r7, #44]	@ movhi
.L280:
	ldrh	r3, [r7, #44]
	cmp	r3, #0
	bne	.L291
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L272
.L270:
	movs	r3, #2
.L272:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_I2C_Mem_Read, .-HAL_I2C_Mem_Read
	.section	.text.HAL_I2C_Mem_Write_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_Mem_Write_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Mem_Write_IT, %function
HAL_I2C_Mem_Write_IT:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L295
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L304
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L296
	movs	r3, #2
	b	.L297
.L296:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L298
	movs	r3, #2
	b	.L297
.L298:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #64
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #28]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #28]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L304+4
	str	r2, [r3, #44]
	ldrh	r3, [r7, #6]
	ldrh	r2, [r7, #8]
	ldrh	r1, [r7, #10]
	movs	r0, #35
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	I2C_RequestMemoryWrite
	mov	r3, r0
	cmp	r3, #0
	beq	.L299
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L300
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L297
.L300:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L297
.L299:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #40]
	cmp	r3, #0
	beq	.L301
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1792
	str	r2, [r3, #4]
	b	.L302
.L301:
	movs	r3, #35
	movs	r2, #0
	ldr	r1, .L304+8
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L303
	movs	r3, #3
	b	.L297
.L303:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
.L302:
	movs	r3, #0
	b	.L297
.L295:
	movs	r3, #2
.L297:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L305:
	.align	2
.L304:
	.word	1048578
	.word	-65536
	.word	65664
	.size	HAL_I2C_Mem_Write_IT, .-HAL_I2C_Mem_Write_IT
	.section	.text.HAL_I2C_Mem_Read_IT,"ax",%progbits
	.align	1
	.global	HAL_I2C_Mem_Read_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Mem_Read_IT, %function
HAL_I2C_Mem_Read_IT:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L307
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L319
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L308
	movs	r3, #2
	b	.L309
.L308:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L310
	movs	r3, #2
	b	.L309
.L310:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #64
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #40]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #44]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #44]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L319+4
	str	r2, [r3, #44]
	ldrh	r3, [r7, #6]
	ldrh	r2, [r7, #8]
	ldrh	r1, [r7, #10]
	movs	r0, #35
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	I2C_RequestMemoryRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L311
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L312
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L309
.L312:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L309
.L311:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	bne	.L313
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	b	.L314
.L313:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #1
	bne	.L315
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	b	.L314
.L315:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #2
	bne	.L316
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	b	.L314
.L316:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
.L314:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	bne	.L317
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
.L317:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	beq	.L318
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1792
	str	r2, [r3, #4]
.L318:
	movs	r3, #0
	b	.L309
.L307:
	movs	r3, #2
.L309:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L320:
	.align	2
.L319:
	.word	1048578
	.word	-65536
	.size	HAL_I2C_Mem_Read_IT, .-HAL_I2C_Mem_Read_IT
	.section	.text.HAL_I2C_Mem_Write_DMA,"ax",%progbits
	.align	1
	.global	HAL_I2C_Mem_Write_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Mem_Write_DMA, %function
HAL_I2C_Mem_Write_DMA:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L322
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L333
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L323
	movs	r3, #2
	b	.L324
.L323:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L325
	movs	r3, #2
	b	.L324
.L325:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #33
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #64
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #28]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #28]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L333+4
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #40]
	cmp	r3, #0
	beq	.L326
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L333+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	ldr	r2, .L333+12
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #52]
	ldr	r1, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	mov	r2, r3
	ldrh	r3, [r7, #28]
	bl	HAL_DMA_Start_IT
	ldrh	r3, [r7, #6]
	ldrh	r2, [r7, #8]
	ldrh	r1, [r7, #10]
	movs	r0, #35
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	I2C_RequestMemoryWrite
	mov	r3, r0
	cmp	r3, #0
	beq	.L327
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L328
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L324
.L328:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L324
.L327:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #4]
	b	.L329
.L326:
	ldrh	r3, [r7, #6]
	ldrh	r2, [r7, #8]
	ldrh	r1, [r7, #10]
	movs	r0, #35
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	I2C_RequestMemoryRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L330
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L331
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L324
.L331:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L324
.L330:
	movs	r3, #35
	movs	r2, #0
	ldr	r1, .L333+16
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L332
	movs	r3, #3
	b	.L324
.L332:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
.L329:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L324
.L322:
	movs	r3, #2
.L324:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L334:
	.align	2
.L333:
	.word	1048578
	.word	-65536
	.word	I2C_DMAMemTransmitCplt
	.word	I2C_DMAError
	.word	65664
	.size	HAL_I2C_Mem_Write_DMA, .-HAL_I2C_Mem_Write_DMA
	.section	.text.HAL_I2C_Mem_Read_DMA,"ax",%progbits
	.align	1
	.global	HAL_I2C_Mem_Read_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_Mem_Read_DMA, %function
HAL_I2C_Mem_Read_DMA:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L336
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L348
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L337
	movs	r3, #2
	b	.L338
.L337:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L339
	movs	r3, #2
	b	.L338
.L339:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #64
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #36]	@ movhi
	strh	r2, [r3, #40]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #36]	@ movhi
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, .L348+4
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #40]
	cmp	r3, #0
	beq	.L340
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L348+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L348+12
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	mov	r1, r3
	ldr	r2, [r7, #32]
	ldrh	r3, [r7, #36]
	bl	HAL_DMA_Start_IT
	ldrh	r3, [r7, #6]
	ldrh	r2, [r7, #8]
	ldrh	r1, [r7, #10]
	movs	r0, #35
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	I2C_RequestMemoryRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L341
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L342
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L338
.L342:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L338
.L341:
	ldrh	r3, [r7, #36]
	cmp	r3, #1
	bne	.L343
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	b	.L344
.L343:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #4096
	str	r2, [r3, #4]
.L344:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	b	.L345
.L340:
	ldrh	r3, [r7, #6]
	ldrh	r2, [r7, #8]
	ldrh	r1, [r7, #10]
	movs	r0, #35
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	I2C_RequestMemoryRead
	mov	r3, r0
	cmp	r3, #0
	beq	.L346
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L347
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L338
.L347:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L338
.L346:
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
.L345:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L338
.L336:
	movs	r3, #2
.L338:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L349:
	.align	2
.L348:
	.word	1048578
	.word	-65536
	.word	I2C_DMAMemReceiveCplt
	.word	I2C_DMAError
	.size	HAL_I2C_Mem_Read_DMA, .-HAL_I2C_Mem_Read_DMA
	.section	.text.HAL_I2C_IsDeviceReady,"ax",%progbits
	.align	1
	.global	HAL_I2C_IsDeviceReady
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_IsDeviceReady, %function
HAL_I2C_IsDeviceReady:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #32
	bne	.L351
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L365
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L352
	movs	r3, #2
	b	.L353
.L352:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L354
	movs	r3, #2
	b	.L353
.L354:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #36
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, .L365+4
	str	r2, [r3, #44]
.L364:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	mov	r1, #65537
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L355
	movs	r3, #3
	b	.L353
.L355:
	ldrh	r3, [r7, #10]	@ movhi
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	and	r2, r2, #254
	str	r2, [r3, #16]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #2
	cmp	r3, #2
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #1024
	cmp	r3, #1024
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	str	r3, [r7, #28]
	b	.L356
.L360:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L357
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L358
.L357:
	ldr	r3, [r7, #12]
	movs	r2, #160
	strb	r2, [r3, #61]
.L358:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #2
	cmp	r3, #2
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #1024
	cmp	r3, #1024
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	str	r3, [r7, #28]
.L356:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L359
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L359
	ldr	r3, [r7, #28]
	cmp	r3, #160
	bne	.L360
.L359:
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #2
	cmp	r3, #2
	bne	.L361
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L365
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L362
	movs	r3, #3
	b	.L353
.L362:
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
	b	.L353
.L361:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mvn	r2, #1024
	str	r2, [r3, #20]
	movw	r3, #10000
	movs	r2, #1
	ldr	r1, .L365
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L363
	movs	r3, #3
	b	.L353
.L363:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	str	r2, [r7, #24]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bhi	.L364
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L353
.L351:
	movs	r3, #2
.L353:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L366:
	.align	2
.L365:
	.word	1048578
	.word	-65536
	.size	HAL_I2C_IsDeviceReady, .-HAL_I2C_IsDeviceReady
	.section	.text.HAL_I2C_EV_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_I2C_EV_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_EV_IRQHandler, %function
HAL_I2C_EV_IRQHandler:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	cmp	r3, #16
	beq	.L368
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	cmp	r3, #64
	bne	.L369
.L368:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L370
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #128
	cmp	r3, #128
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #1024
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #4
	cmp	r3, #4
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #512
	cmp	r3, #512
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L371
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L371
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L371
	ldr	r0, [r7, #4]
	bl	I2C_MasterTransmit_TXE
	b	.L373
.L371:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bne	.L382
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bne	.L382
	ldr	r0, [r7, #4]
	bl	I2C_MasterTransmit_BTF
	b	.L382
.L370:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #64
	cmp	r3, #64
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #1024
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #4
	cmp	r3, #4
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #512
	cmp	r3, #512
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L374
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L374
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L374
	ldr	r0, [r7, #4]
	bl	I2C_MasterReceive_RXNE
	b	.L373
.L374:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bne	.L382
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bne	.L382
	ldr	r0, [r7, #4]
	bl	I2C_MasterReceive_BTF
	b	.L382
.L373:
	b	.L382
.L369:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #2
	cmp	r3, #2
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #512
	cmp	r3, #512
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #16
	cmp	r3, #16
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	and	r3, r3, #4
	cmp	r3, #4
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L376
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L376
	ldr	r0, [r7, #4]
	bl	I2C_Slave_ADDR
	b	.L375
.L376:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bne	.L377
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L377
	ldr	r0, [r7, #4]
	bl	I2C_Slave_STOPF
	b	.L375
.L377:
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bne	.L378
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #128
	cmp	r3, #128
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #1024
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #4
	cmp	r3, #4
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #512
	cmp	r3, #512
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L379
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L379
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L379
	ldr	r0, [r7, #4]
	bl	I2C_SlaveTransmit_TXE
	b	.L375
.L379:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bne	.L383
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bne	.L383
	ldr	r0, [r7, #4]
	bl	I2C_SlaveTransmit_BTF
	b	.L383
.L378:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #64
	cmp	r3, #64
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #1024
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #4
	cmp	r3, #4
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #512
	cmp	r3, #512
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L381
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L381
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L381
	ldr	r0, [r7, #4]
	bl	I2C_SlaveReceive_RXNE
	b	.L375
.L381:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bne	.L383
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bne	.L383
	ldr	r0, [r7, #4]
	bl	I2C_SlaveReceive_BTF
	b	.L383
.L382:
	nop
.L375:
.L383:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_I2C_EV_IRQHandler, .-HAL_I2C_EV_IRQHandler
	.section	.text.HAL_I2C_ER_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_I2C_ER_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_ER_IRQHandler, %function
HAL_I2C_ER_IRQHandler:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #256
	cmp	r3, #256
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #256
	cmp	r3, #256
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L385
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L385
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #256
	str	r2, [r3, #20]
.L385:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #512
	cmp	r3, #512
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #256
	cmp	r3, #256
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L386
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L386
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #512
	str	r2, [r3, #20]
.L386:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #1024
	cmp	r3, #1024
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #256
	cmp	r3, #256
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L387
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L387
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #32
	bne	.L388
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L388
	ldr	r3, [r7, #12]
	cmp	r3, #33
	beq	.L389
	ldr	r3, [r7, #12]
	cmp	r3, #41
	beq	.L389
	ldr	r3, [r7, #12]
	cmp	r3, #40
	bne	.L388
	ldr	r3, [r7, #8]
	cmp	r3, #33
	bne	.L388
.L389:
	ldr	r0, [r7, #4]
	bl	I2C_Slave_AF
	b	.L387
.L388:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #1024
	str	r2, [r3, #20]
.L387:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #2048
	cmp	r3, #2048
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #256
	cmp	r3, #256
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L390
	ldr	r3, [r7, #16]
	cmp	r3, #1
	bne	.L390
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #2048
	str	r2, [r3, #20]
.L390:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L395
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #41
	beq	.L392
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #42
	bne	.L393
.L392:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #40
	strb	r2, [r3, #61]
	b	.L394
.L393:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
.L394:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_ErrorCallback
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #40
	bne	.L395
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L395
	ldr	r3, [r7, #4]
	ldr	r2, .L396
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_ListenCpltCallback
.L395:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L397:
	.align	2
.L396:
	.word	-65536
	.size	HAL_I2C_ER_IRQHandler, .-HAL_I2C_ER_IRQHandler
	.section	.text.HAL_I2C_MasterTxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_I2C_MasterTxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_MasterTxCpltCallback, %function
HAL_I2C_MasterTxCpltCallback:
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
	.size	HAL_I2C_MasterTxCpltCallback, .-HAL_I2C_MasterTxCpltCallback
	.section	.text.HAL_I2C_MasterRxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_I2C_MasterRxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_MasterRxCpltCallback, %function
HAL_I2C_MasterRxCpltCallback:
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
	.size	HAL_I2C_MasterRxCpltCallback, .-HAL_I2C_MasterRxCpltCallback
	.section	.text.HAL_I2C_SlaveTxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_I2C_SlaveTxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_SlaveTxCpltCallback, %function
HAL_I2C_SlaveTxCpltCallback:
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
	.size	HAL_I2C_SlaveTxCpltCallback, .-HAL_I2C_SlaveTxCpltCallback
	.section	.text.HAL_I2C_SlaveRxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_I2C_SlaveRxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_SlaveRxCpltCallback, %function
HAL_I2C_SlaveRxCpltCallback:
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
	.size	HAL_I2C_SlaveRxCpltCallback, .-HAL_I2C_SlaveRxCpltCallback
	.section	.text.HAL_I2C_AddrCallback,"ax",%progbits
	.align	1
	.weak	HAL_I2C_AddrCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_AddrCallback, %function
HAL_I2C_AddrCallback:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_I2C_AddrCallback, .-HAL_I2C_AddrCallback
	.section	.text.HAL_I2C_ListenCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_I2C_ListenCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_ListenCpltCallback, %function
HAL_I2C_ListenCpltCallback:
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
	.size	HAL_I2C_ListenCpltCallback, .-HAL_I2C_ListenCpltCallback
	.section	.text.HAL_I2C_MemTxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_I2C_MemTxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_MemTxCpltCallback, %function
HAL_I2C_MemTxCpltCallback:
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
	.size	HAL_I2C_MemTxCpltCallback, .-HAL_I2C_MemTxCpltCallback
	.section	.text.HAL_I2C_MemRxCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_I2C_MemRxCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_MemRxCpltCallback, %function
HAL_I2C_MemRxCpltCallback:
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
	.size	HAL_I2C_MemRxCpltCallback, .-HAL_I2C_MemRxCpltCallback
	.section	.text.HAL_I2C_ErrorCallback,"ax",%progbits
	.align	1
	.weak	HAL_I2C_ErrorCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_ErrorCallback, %function
HAL_I2C_ErrorCallback:
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
	.size	HAL_I2C_ErrorCallback, .-HAL_I2C_ErrorCallback
	.section	.text.HAL_I2C_GetState,"ax",%progbits
	.align	1
	.global	HAL_I2C_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_GetState, %function
HAL_I2C_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_I2C_GetState, .-HAL_I2C_GetState
	.section	.text.HAL_I2C_GetMode,"ax",%progbits
	.align	1
	.global	HAL_I2C_GetMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_GetMode, %function
HAL_I2C_GetMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_I2C_GetMode, .-HAL_I2C_GetMode
	.section	.text.HAL_I2C_GetError,"ax",%progbits
	.align	1
	.global	HAL_I2C_GetError
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_I2C_GetError, %function
HAL_I2C_GetError:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_I2C_GetError, .-HAL_I2C_GetError
	.section	.text.I2C_MasterTransmit_TXE,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_MasterTransmit_TXE, %function
I2C_MasterTransmit_TXE:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	bne	.L414
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #4]
	b	.L415
.L414:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
.L415:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	I2C_MasterTransmit_TXE, .-I2C_MasterTransmit_TXE
	.section	.text.I2C_MasterTransmit_BTF,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_MasterTransmit_BTF, %function
I2C_MasterTransmit_BTF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	beq	.L418
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
	b	.L419
.L418:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #4
	beq	.L420
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #8
	beq	.L420
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmn	r3, #65536
	beq	.L420
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1792
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	and	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_MasterTxCpltCallback
	b	.L419
.L420:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1792
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	cmp	r3, #64
	bne	.L421
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_MemTxCpltCallback
	b	.L419
.L421:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_MasterTxCpltCallback
.L419:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_MasterTransmit_BTF, .-I2C_MasterTransmit_BTF
	.section	.text.I2C_MasterReceive_RXNE,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_MasterReceive_RXNE, %function
I2C_MasterReceive_RXNE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #3
	bls	.L424
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	uxtb	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
	b	.L425
.L424:
	ldr	r3, [r7, #12]
	cmp	r3, #2
	beq	.L426
	ldr	r3, [r7, #12]
	cmp	r3, #3
	bne	.L427
.L426:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #2
	beq	.L428
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3]
	b	.L429
.L428:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
.L429:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #4]
	b	.L425
.L427:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #2
	beq	.L430
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	b	.L431
.L430:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
.L431:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1792
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	uxtb	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	cmp	r3, #64
	bne	.L432
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	and	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_MemRxCpltCallback
	b	.L425
.L432:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	and	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_MasterRxCpltCallback
.L425:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_MasterReceive_RXNE, .-I2C_MasterReceive_RXNE
	.section	.text.I2C_MasterReceive_BTF,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_MasterReceive_BTF, %function
I2C_MasterReceive_BTF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #3
	bne	.L435
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #4
	beq	.L436
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #8
	beq	.L436
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmn	r3, #65536
	bne	.L437
.L436:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #2
	beq	.L438
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	b	.L437
.L438:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
.L437:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	uxtb	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
	b	.L439
.L435:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #2
	bne	.L440
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #4
	beq	.L441
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #8
	beq	.L441
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmn	r3, #65536
	beq	.L441
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #2
	beq	.L442
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	b	.L443
.L442:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
.L443:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	and	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	b	.L444
.L441:
	ldr	r3, [r7, #4]
	movs	r2, #18
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
.L444:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	uxtb	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	uxtb	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #768
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	cmp	r3, #64
	bne	.L445
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_MemRxCpltCallback
	b	.L439
.L445:
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_MasterRxCpltCallback
	b	.L439
.L440:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	uxtb	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
.L439:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_MasterReceive_BTF, .-I2C_MasterReceive_BTF
	.section	.text.I2C_SlaveTransmit_TXE,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_SlaveTransmit_TXE, %function
I2C_SlaveTransmit_TXE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	beq	.L448
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	bne	.L448
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #41
	bne	.L448
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	and	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #40
	strb	r2, [r3, #61]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_SlaveTxCpltCallback
.L448:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_SlaveTransmit_TXE, .-I2C_SlaveTransmit_TXE
	.section	.text.I2C_SlaveTransmit_BTF,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_SlaveTransmit_BTF, %function
I2C_SlaveTransmit_BTF:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	beq	.L451
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
.L451:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	I2C_SlaveTransmit_BTF, .-I2C_SlaveTransmit_BTF
	.section	.text.I2C_SlaveReceive_RXNE,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_SlaveReceive_RXNE, %function
I2C_SlaveReceive_RXNE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	beq	.L454
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	uxtb	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	bne	.L454
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #42
	bne	.L454
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	and	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #40
	strb	r2, [r3, #61]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_SlaveRxCpltCallback
.L454:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_SlaveReceive_RXNE, .-I2C_SlaveReceive_RXNE
	.section	.text.I2C_SlaveReceive_BTF,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_SlaveReceive_BTF, %function
I2C_SlaveReceive_BTF:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	cmp	r3, #0
	beq	.L457
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #36]
	uxtb	r2, r0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #42]	@ movhi
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #42]	@ movhi
.L457:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	I2C_SlaveReceive_BTF, .-I2C_SlaveReceive_BTF
	.section	.text.I2C_Slave_ADDR,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_Slave_ADDR, %function
I2C_Slave_ADDR:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	and	r3, r3, #4
	cmp	r3, #4
	beq	.L460
	movs	r3, #1
	strb	r3, [r7, #15]
.L460:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	and	r3, r3, #128
	cmp	r3, #128
	beq	.L461
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	strh	r3, [r7, #12]	@ movhi
	b	.L462
.L461:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	strh	r3, [r7, #12]	@ movhi
.L462:
	ldrh	r2, [r7, #12]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	HAL_I2C_AddrCallback
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_Slave_ADDR, .-I2C_Slave_ADDR
	.section	.text.I2C_Slave_STOPF,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_Slave_STOPF, %function
I2C_Slave_STOPF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1792
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	and	r3, r3, #40
	cmp	r3, #40
	bne	.L465
	ldr	r3, [r7, #4]
	ldr	r2, .L469
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_ListenCpltCallback
	b	.L466
.L465:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	cmp	r3, #34
	beq	.L467
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #34
	bne	.L466
.L467:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_SlaveRxCpltCallback
.L466:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L470:
	.align	2
.L469:
	.word	-65536
	.size	I2C_Slave_STOPF, .-I2C_Slave_STOPF
	.section	.text.I2C_Slave_AF,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_Slave_AF, %function
I2C_Slave_AF:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #4
	beq	.L472
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #8
	bne	.L473
.L472:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #40
	bne	.L473
	ldr	r3, [r7, #4]
	ldr	r2, .L477
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1792
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #1024
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_ListenCpltCallback
	b	.L474
.L473:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	cmp	r3, #33
	bne	.L475
	ldr	r3, [r7, #4]
	ldr	r2, .L477
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #61]
	uxtb	r3, r3
	and	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #62]
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1792
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #1024
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	HAL_I2C_SlaveTxCpltCallback
	b	.L474
.L475:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #1024
	str	r2, [r3, #20]
.L474:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L478:
	.align	2
.L477:
	.word	-65536
	.size	I2C_Slave_AF, .-I2C_Slave_AF
	.section	.text.I2C_MasterRequestWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_MasterRequestWrite, %function
I2C_MasterRequestWrite:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #4
	beq	.L480
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #1
	beq	.L480
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmn	r3, #65536
	bne	.L481
.L480:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3]
	b	.L482
.L481:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #18
	bne	.L482
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3]
.L482:
	ldr	r3, [r7, #4]
	movs	r2, #0
	mov	r1, #65537
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L483
	movs	r3, #3
	b	.L484
.L483:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #16384
	bne	.L485
	ldrh	r3, [r7, #10]	@ movhi
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	and	r2, r2, #254
	str	r2, [r3, #16]
	b	.L486
.L485:
	ldrh	r3, [r7, #10]
	asrs	r3, r3, #7
	uxtb	r3, r3
	and	r3, r3, #6
	uxtb	r3, r3
	orn	r3, r3, #15
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldr	r2, [r7, #4]
	ldr	r1, .L491
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnMasterAddressFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L487
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L488
	movs	r3, #1
	b	.L484
.L488:
	movs	r3, #3
	b	.L484
.L487:
	ldrh	r3, [r7, #10]	@ movhi
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
.L486:
	ldr	r2, [r7, #4]
	ldr	r1, .L491+4
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnMasterAddressFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L489
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L490
	movs	r3, #1
	b	.L484
.L490:
	movs	r3, #3
	b	.L484
.L489:
	movs	r3, #0
.L484:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L492:
	.align	2
.L491:
	.word	65544
	.word	65538
	.size	I2C_MasterRequestWrite, .-I2C_MasterRequestWrite
	.section	.text.I2C_MasterRequestRead,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_MasterRequestRead, %function
I2C_MasterRequestRead:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #4
	beq	.L494
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #1
	beq	.L494
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmn	r3, #65536
	bne	.L495
.L494:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3]
	b	.L496
.L495:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #17
	bne	.L496
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3]
.L496:
	ldr	r3, [r7, #4]
	movs	r2, #0
	mov	r1, #65537
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L497
	movs	r3, #3
	b	.L498
.L497:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #16384
	bne	.L499
	ldrh	r3, [r7, #10]	@ movhi
	uxtb	r3, r3
	orr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	b	.L500
.L499:
	ldrh	r3, [r7, #10]
	asrs	r3, r3, #7
	uxtb	r3, r3
	and	r3, r3, #6
	uxtb	r3, r3
	orn	r3, r3, #15
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldr	r2, [r7, #4]
	ldr	r1, .L508
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnMasterAddressFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L501
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L502
	movs	r3, #1
	b	.L498
.L502:
	movs	r3, #3
	b	.L498
.L501:
	ldrh	r3, [r7, #10]	@ movhi
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldr	r2, [r7, #4]
	ldr	r1, .L508+4
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnMasterAddressFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L503
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L504
	movs	r3, #1
	b	.L498
.L504:
	movs	r3, #3
	b	.L498
.L503:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	mov	r1, #65537
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L505
	movs	r3, #3
	b	.L498
.L505:
	ldrh	r3, [r7, #10]
	asrs	r3, r3, #7
	uxtb	r3, r3
	and	r3, r3, #6
	uxtb	r3, r3
	orn	r3, r3, #14
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
.L500:
	ldr	r2, [r7, #4]
	ldr	r1, .L508+4
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnMasterAddressFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L506
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L507
	movs	r3, #1
	b	.L498
.L507:
	movs	r3, #3
	b	.L498
.L506:
	movs	r3, #0
.L498:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L509:
	.align	2
.L508:
	.word	65544
	.word	65538
	.size	I2C_MasterRequestRead, .-I2C_MasterRequestRead
	.section	.text.I2C_RequestMemoryWrite,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_RequestMemoryWrite, %function
I2C_RequestMemoryWrite:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3]
	ldr	r3, [r7, #32]
	movs	r2, #0
	mov	r1, #65537
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L511
	movs	r3, #3
	b	.L512
.L511:
	ldrh	r3, [r7, #10]	@ movhi
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	and	r2, r2, #254
	str	r2, [r3, #16]
	ldr	r2, [r7, #32]
	ldr	r1, .L521
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnMasterAddressFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L513
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L514
	movs	r3, #1
	b	.L512
.L514:
	movs	r3, #3
	b	.L512
.L513:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnTXEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L515
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L516
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	movs	r3, #1
	b	.L512
.L516:
	movs	r3, #3
	b	.L512
.L515:
	ldrh	r3, [r7, #6]
	cmp	r3, #1
	bne	.L517
	ldrh	r3, [r7, #8]	@ movhi
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	b	.L518
.L517:
	ldrh	r3, [r7, #8]
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnTXEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L519
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L520
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	movs	r3, #1
	b	.L512
.L520:
	movs	r3, #3
	b	.L512
.L519:
	ldrh	r3, [r7, #8]	@ movhi
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
.L518:
	movs	r3, #0
.L512:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L522:
	.align	2
.L521:
	.word	65538
	.size	I2C_RequestMemoryWrite, .-I2C_RequestMemoryWrite
	.section	.text.I2C_RequestMemoryRead,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_RequestMemoryRead, %function
I2C_RequestMemoryRead:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [r7, #8]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3]
	ldr	r3, [r7, #32]
	movs	r2, #0
	mov	r1, #65537
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L524
	movs	r3, #3
	b	.L525
.L524:
	ldrh	r3, [r7, #10]	@ movhi
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	and	r2, r2, #254
	str	r2, [r3, #16]
	ldr	r2, [r7, #32]
	ldr	r1, .L539
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnMasterAddressFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L526
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L527
	movs	r3, #1
	b	.L525
.L527:
	movs	r3, #3
	b	.L525
.L526:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnTXEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L528
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L529
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	movs	r3, #1
	b	.L525
.L529:
	movs	r3, #3
	b	.L525
.L528:
	ldrh	r3, [r7, #6]
	cmp	r3, #1
	bne	.L530
	ldrh	r3, [r7, #8]	@ movhi
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	b	.L531
.L530:
	ldrh	r3, [r7, #8]
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnTXEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L532
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L533
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	movs	r3, #1
	b	.L525
.L533:
	movs	r3, #3
	b	.L525
.L532:
	ldrh	r3, [r7, #8]	@ movhi
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
.L531:
	ldr	r1, [r7, #32]
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnTXEFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L534
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L535
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	movs	r3, #1
	b	.L525
.L535:
	movs	r3, #3
	b	.L525
.L534:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3]
	ldr	r3, [r7, #32]
	movs	r2, #0
	mov	r1, #65537
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L536
	movs	r3, #3
	b	.L525
.L536:
	ldrh	r3, [r7, #10]	@ movhi
	uxtb	r3, r3
	orr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r2, [r3, #16]
	ldr	r2, [r7, #32]
	ldr	r1, .L539
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnMasterAddressFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L537
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L538
	movs	r3, #1
	b	.L525
.L538:
	movs	r3, #3
	b	.L525
.L537:
	movs	r3, #0
.L525:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L540:
	.align	2
.L539:
	.word	65538
	.size	I2C_RequestMemoryRead, .-I2C_RequestMemoryRead
	.section	.text.I2C_DMAMasterTransmitCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_DMAMasterTransmitCplt, %function
I2C_DMAMasterTransmitCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	movs	r3, #35
	movs	r2, #0
	ldr	r1, .L546
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L542
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
.L542:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L543
	ldr	r0, [r7, #12]
	bl	HAL_I2C_ErrorCallback
	b	.L545
.L543:
	ldr	r0, [r7, #12]
	bl	HAL_I2C_MasterTxCpltCallback
.L545:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L547:
	.align	2
.L546:
	.word	65540
	.size	I2C_DMAMasterTransmitCplt, .-I2C_DMAMasterTransmitCplt
	.section	.text.I2C_DMASlaveTransmitCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_DMASlaveTransmitCplt, %function
I2C_DMASlaveTransmitCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	movs	r3, #35
	movs	r2, #0
	mov	r1, #66560
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L549
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
.L549:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mvn	r2, #1024
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L550
	ldr	r0, [r7, #12]
	bl	HAL_I2C_ErrorCallback
	b	.L552
.L550:
	ldr	r0, [r7, #12]
	bl	HAL_I2C_SlaveTxCpltCallback
.L552:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_DMASlaveTransmitCplt, .-I2C_DMASlaveTransmitCplt
	.section	.text.I2C_DMAMasterReceiveCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_DMAMasterReceiveCplt, %function
I2C_DMAMasterReceiveCplt:
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
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #4096
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L554
	ldr	r0, [r7, #12]
	bl	HAL_I2C_ErrorCallback
	b	.L556
.L554:
	ldr	r0, [r7, #12]
	bl	HAL_I2C_MasterRxCpltCallback
.L556:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_DMAMasterReceiveCplt, .-I2C_DMAMasterReceiveCplt
	.section	.text.I2C_DMASlaveReceiveCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_DMASlaveReceiveCplt, %function
I2C_DMASlaveReceiveCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	movs	r1, #35
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnSTOPFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L558
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #4
	bne	.L559
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #4
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	b	.L558
.L559:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
.L558:
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L560
	ldr	r0, [r7, #12]
	bl	HAL_I2C_ErrorCallback
	b	.L562
.L560:
	ldr	r0, [r7, #12]
	bl	HAL_I2C_SlaveRxCpltCallback
.L562:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_DMASlaveReceiveCplt, .-I2C_DMASlaveReceiveCplt
	.section	.text.I2C_DMAMemTransmitCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_DMAMemTransmitCplt, %function
I2C_DMAMemTransmitCplt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	str	r3, [r7, #12]
	movs	r3, #35
	movs	r2, #0
	ldr	r1, .L568
	ldr	r0, [r7, #12]
	bl	I2C_WaitOnFlagUntilTimeout
	mov	r3, r0
	cmp	r3, #0
	beq	.L564
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
.L564:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L565
	ldr	r0, [r7, #12]
	bl	HAL_I2C_ErrorCallback
	b	.L567
.L565:
	ldr	r0, [r7, #12]
	bl	HAL_I2C_MemTxCpltCallback
.L567:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L569:
	.align	2
.L568:
	.word	65540
	.size	I2C_DMAMemTransmitCplt, .-I2C_DMAMemTransmitCplt
	.section	.text.I2C_DMAMemReceiveCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_DMAMemReceiveCplt, %function
I2C_DMAMemReceiveCplt:
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
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #4096
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L571
	ldr	r0, [r7, #12]
	bl	HAL_I2C_ErrorCallback
	b	.L573
.L571:
	ldr	r0, [r7, #12]
	bl	HAL_I2C_MemRxCpltCallback
.L573:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_DMAMemReceiveCplt, .-I2C_DMAMemReceiveCplt
	.section	.text.I2C_DMAError,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_DMAError, %function
I2C_DMAError:
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
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #42]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #62]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r0, [r7, #12]
	bl	HAL_I2C_ErrorCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_DMAError, .-I2C_DMAError
	.section	.text.I2C_WaitOnFlagUntilTimeout,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_WaitOnFlagUntilTimeout, %function
I2C_WaitOnFlagUntilTimeout:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #20]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L584
	b	.L577
.L582:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L577
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L578
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L577
.L578:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L579
.L577:
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L580
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	mvns	r2, r3
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L581
.L580:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	mvns	r2, r3
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L581:
	cmp	r3, #0
	bne	.L582
	b	.L583
.L588:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L584
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L585
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L584
.L585:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L579
.L584:
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L586
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	mvns	r2, r3
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L587
.L586:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	mvns	r2, r3
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
.L587:
	cmp	r3, #0
	bne	.L588
.L583:
	movs	r3, #0
.L579:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_WaitOnFlagUntilTimeout, .-I2C_WaitOnFlagUntilTimeout
	.section	.text.I2C_WaitOnMasterAddressFlagUntilTimeout,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_WaitOnMasterAddressFlagUntilTimeout, %function
I2C_WaitOnMasterAddressFlagUntilTimeout:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	bl	HAL_GetTick
	str	r0, [r7, #20]
	b	.L590
.L596:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #1024
	cmp	r3, #1024
	bne	.L591
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #512
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mvn	r2, #1024
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #4
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L592
.L591:
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	beq	.L590
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L593
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bcs	.L590
.L593:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L592
.L590:
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #16
	uxtb	r3, r3
	cmp	r3, #1
	bne	.L594
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	mvns	r2, r3
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L595
.L594:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	mvns	r2, r3
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L595:
	cmp	r3, #0
	bne	.L596
	movs	r3, #0
.L592:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_WaitOnMasterAddressFlagUntilTimeout, .-I2C_WaitOnMasterAddressFlagUntilTimeout
	.section	.text.I2C_WaitOnTXEFlagUntilTimeout,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_WaitOnTXEFlagUntilTimeout, %function
I2C_WaitOnTXEFlagUntilTimeout:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	b	.L598
.L602:
	ldr	r0, [r7, #4]
	bl	I2C_IsAcknowledgeFailed
	mov	r3, r0
	cmp	r3, #0
	beq	.L599
	movs	r3, #1
	b	.L600
.L599:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L598
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L601
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L598
.L601:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L600
.L598:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #128
	cmp	r3, #128
	bne	.L602
	movs	r3, #0
.L600:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_WaitOnTXEFlagUntilTimeout, .-I2C_WaitOnTXEFlagUntilTimeout
	.section	.text.I2C_WaitOnBTFFlagUntilTimeout,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_WaitOnBTFFlagUntilTimeout, %function
I2C_WaitOnBTFFlagUntilTimeout:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	b	.L604
.L608:
	ldr	r0, [r7, #4]
	bl	I2C_IsAcknowledgeFailed
	mov	r3, r0
	cmp	r3, #0
	beq	.L605
	movs	r3, #1
	b	.L606
.L605:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L604
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L607
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L604
.L607:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L606
.L604:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L608
	movs	r3, #0
.L606:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_WaitOnBTFFlagUntilTimeout, .-I2C_WaitOnBTFFlagUntilTimeout
	.section	.text.I2C_WaitOnSTOPFlagUntilTimeout,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_WaitOnSTOPFlagUntilTimeout, %function
I2C_WaitOnSTOPFlagUntilTimeout:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	b	.L610
.L614:
	ldr	r0, [r7, #4]
	bl	I2C_IsAcknowledgeFailed
	mov	r3, r0
	cmp	r3, #0
	beq	.L611
	movs	r3, #1
	b	.L612
.L611:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L613
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L610
.L613:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L612
.L610:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L614
	movs	r3, #0
.L612:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_WaitOnSTOPFlagUntilTimeout, .-I2C_WaitOnSTOPFlagUntilTimeout
	.section	.text.I2C_WaitOnRXNEFlagUntilTimeout,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_WaitOnRXNEFlagUntilTimeout, %function
I2C_WaitOnRXNEFlagUntilTimeout:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	b	.L616
.L620:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #16
	cmp	r3, #16
	bne	.L617
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #16
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L618
.L617:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L619
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L616
.L619:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L618
.L616:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #64
	cmp	r3, #64
	bne	.L620
	movs	r3, #0
.L618:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	I2C_WaitOnRXNEFlagUntilTimeout, .-I2C_WaitOnRXNEFlagUntilTimeout
	.section	.text.I2C_IsAcknowledgeFailed,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	I2C_IsAcknowledgeFailed, %function
I2C_IsAcknowledgeFailed:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	and	r3, r3, #1024
	cmp	r3, #1024
	bne	.L622
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #1024
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #4
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r2, #32
	strb	r2, [r3, #61]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L623
.L622:
	movs	r3, #0
.L623:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	I2C_IsAcknowledgeFailed, .-I2C_IsAcknowledgeFailed
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
