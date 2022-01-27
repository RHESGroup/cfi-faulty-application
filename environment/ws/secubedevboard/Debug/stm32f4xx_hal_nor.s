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
	.file	"stm32f4xx_hal_nor.c"
	.text
	.section	.text.HAL_NOR_Init,"ax",%progbits
	.align	1
	.global	HAL_NOR_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_Init, %function
HAL_NOR_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L2
	movs	r3, #1
	b	.L3
.L2:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	ldr	r0, [r7, #12]
	bl	HAL_NOR_MspInit
.L4:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	mov	r1, r3
	mov	r0, r2
	bl	FMC_NORSRAM_Init
	ldr	r3, [r7, #12]
	ldr	r0, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r1, [r7, #8]
	bl	FMC_NORSRAM_Timing_Init
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	ldr	r1, [r7, #4]
	bl	FMC_NORSRAM_Extended_Timing_Init
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	ldr	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	orr	r1, r1, #1
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #73]
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NOR_Init, .-HAL_NOR_Init
	.section	.text.HAL_NOR_DeInit,"ax",%progbits
	.align	1
	.global	HAL_NOR_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_DeInit, %function
HAL_NOR_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	HAL_NOR_MspDeInit
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	bl	FMC_NORSRAM_DeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NOR_DeInit, .-HAL_NOR_DeInit
	.section	.text.HAL_NOR_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_NOR_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_MspInit, %function
HAL_NOR_MspInit:
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
	.size	HAL_NOR_MspInit, .-HAL_NOR_MspInit
	.section	.text.HAL_NOR_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_NOR_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_MspDeInit, %function
HAL_NOR_MspDeInit:
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
	.size	HAL_NOR_MspDeInit, .-HAL_NOR_MspDeInit
	.section	.text.HAL_NOR_MspWait,"ax",%progbits
	.align	1
	.weak	HAL_NOR_MspWait
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_MspWait, %function
HAL_NOR_MspWait:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_NOR_MspWait, .-HAL_NOR_MspWait
	.section	.text.HAL_NOR_Read_ID,"ax",%progbits
	.align	1
	.global	HAL_NOR_Read_ID
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_Read_ID, %function
HAL_NOR_Read_ID:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L11
	movs	r3, #2
	b	.L12
.L11:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L13
	movs	r3, #2
	b	.L12
.L13:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L14
	mov	r3, #1610612736
	str	r3, [r7, #12]
	b	.L15
.L14:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	bne	.L16
	mov	r3, #1677721600
	str	r3, [r7, #12]
	b	.L15
.L16:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L17
	mov	r3, #1744830464
	str	r3, [r7, #12]
	b	.L15
.L17:
	mov	r3, #1811939328
	str	r3, [r7, #12]
.L15:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	addw	r3, r3, #2730
	movs	r2, #170
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	addw	r3, r3, #1364
	movs	r2, #85
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	addw	r3, r3, #2730
	movs	r2, #144
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #30
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L12:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_NOR_Read_ID, .-HAL_NOR_Read_ID
	.section	.text.HAL_NOR_ReturnToReadMode,"ax",%progbits
	.align	1
	.global	HAL_NOR_ReturnToReadMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_ReturnToReadMode, %function
HAL_NOR_ReturnToReadMode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L19
	movs	r3, #2
	b	.L20
.L19:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L21
	movs	r3, #2
	b	.L20
.L21:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L22
	mov	r3, #1610612736
	str	r3, [r7, #12]
	b	.L23
.L22:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	bne	.L24
	mov	r3, #1677721600
	str	r3, [r7, #12]
	b	.L23
.L24:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L25
	mov	r3, #1744830464
	str	r3, [r7, #12]
	b	.L23
.L25:
	mov	r3, #1811939328
	str	r3, [r7, #12]
.L23:
	ldr	r3, [r7, #12]
	movs	r2, #240
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L20:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_NOR_ReturnToReadMode, .-HAL_NOR_ReturnToReadMode
	.section	.text.HAL_NOR_Read,"ax",%progbits
	.align	1
	.global	HAL_NOR_Read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_Read, %function
HAL_NOR_Read:
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
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L27
	movs	r3, #2
	b	.L28
.L27:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L29
	movs	r3, #2
	b	.L28
.L29:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L30
	mov	r3, #1610612736
	str	r3, [r7, #20]
	b	.L31
.L30:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	bne	.L32
	mov	r3, #1677721600
	str	r3, [r7, #20]
	b	.L31
.L32:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L33
	mov	r3, #1744830464
	str	r3, [r7, #20]
	b	.L31
.L33:
	mov	r3, #1811939328
	str	r3, [r7, #20]
.L31:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #73]
	ldr	r3, [r7, #20]
	addw	r3, r3, #2730
	movs	r2, #170
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	addw	r3, r3, #1364
	movs	r2, #85
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #240
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L28:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_NOR_Read, .-HAL_NOR_Read
	.section	.text.HAL_NOR_Program,"ax",%progbits
	.align	1
	.global	HAL_NOR_Program
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_Program, %function
HAL_NOR_Program:
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
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L35
	movs	r3, #2
	b	.L36
.L35:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L37
	movs	r3, #2
	b	.L36
.L37:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L38
	mov	r3, #1610612736
	str	r3, [r7, #20]
	b	.L39
.L38:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	bne	.L40
	mov	r3, #1677721600
	str	r3, [r7, #20]
	b	.L39
.L40:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L41
	mov	r3, #1744830464
	str	r3, [r7, #20]
	b	.L39
.L41:
	mov	r3, #1811939328
	str	r3, [r7, #20]
.L39:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #73]
	ldr	r3, [r7, #20]
	addw	r3, r3, #2730
	movs	r2, #170
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	addw	r3, r3, #1364
	movs	r2, #85
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	addw	r3, r3, #2730
	movs	r2, #160
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r3]
	ldr	r3, [r7, #8]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L36:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_NOR_Program, .-HAL_NOR_Program
	.section	.text.HAL_NOR_ReadBuffer,"ax",%progbits
	.align	1
	.global	HAL_NOR_ReadBuffer
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_ReadBuffer, %function
HAL_NOR_ReadBuffer:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L43
	movs	r3, #2
	b	.L44
.L43:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L45
	movs	r3, #2
	b	.L44
.L45:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L46
	mov	r3, #1610612736
	str	r3, [r7, #20]
	b	.L47
.L46:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	bne	.L48
	mov	r3, #1677721600
	str	r3, [r7, #20]
	b	.L47
.L48:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L49
	mov	r3, #1744830464
	str	r3, [r7, #20]
	b	.L47
.L49:
	mov	r3, #1811939328
	str	r3, [r7, #20]
.L47:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #73]
	ldr	r3, [r7, #20]
	addw	r3, r3, #2730
	movs	r2, #170
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	addw	r3, r3, #1364
	movs	r2, #85
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #240
	strh	r2, [r3]	@ movhi
	b	.L50
.L51:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r1, r3, #2
	str	r1, [r7, #4]
	ldrh	r2, [r2]	@ movhi
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
.L50:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L51
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L44:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_NOR_ReadBuffer, .-HAL_NOR_ReadBuffer
	.section	.text.HAL_NOR_ProgramBuffer,"ax",%progbits
	.align	1
	.global	HAL_NOR_ProgramBuffer
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_ProgramBuffer, %function
HAL_NOR_ProgramBuffer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L53
	movs	r3, #2
	b	.L54
.L53:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L55
	movs	r3, #2
	b	.L54
.L55:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L56
	mov	r3, #1610612736
	str	r3, [r7, #20]
	b	.L57
.L56:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	bne	.L58
	mov	r3, #1677721600
	str	r3, [r7, #20]
	b	.L57
.L58:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L59
	mov	r3, #1744830464
	str	r3, [r7, #20]
	b	.L57
.L59:
	mov	r3, #1811939328
	str	r3, [r7, #20]
.L57:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #73]
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	addw	r3, r3, #2730
	movs	r2, #170
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	addw	r3, r3, #1364
	movs	r2, #85
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	lsls	r2, r3, #1
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	movs	r2, #37
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7]
	uxth	r3, r3
	ldr	r2, [r7, #8]
	lsls	r1, r2, #1
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	subs	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2]	@ movhi
	b	.L60
.L61:
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	adds	r2, r3, #2
	str	r2, [r7, #4]
	ldrh	r2, [r3]
	ldr	r3, [r7, #28]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	str	r3, [r7, #28]
.L60:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bls	.L61
	ldr	r3, [r7, #24]
	movs	r2, #41
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L54:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_NOR_ProgramBuffer, .-HAL_NOR_ProgramBuffer
	.section	.text.HAL_NOR_Erase_Block,"ax",%progbits
	.align	1
	.global	HAL_NOR_Erase_Block
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_Erase_Block, %function
HAL_NOR_Erase_Block:
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
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L63
	movs	r3, #2
	b	.L64
.L63:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L65
	movs	r3, #2
	b	.L64
.L65:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L66
	mov	r3, #1610612736
	str	r3, [r7, #20]
	b	.L67
.L66:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	bne	.L68
	mov	r3, #1677721600
	str	r3, [r7, #20]
	b	.L67
.L68:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L69
	mov	r3, #1744830464
	str	r3, [r7, #20]
	b	.L67
.L69:
	mov	r3, #1811939328
	str	r3, [r7, #20]
.L67:
	ldr	r3, [r7, #12]
	movs	r2, #2
	strb	r2, [r3, #73]
	ldr	r3, [r7, #20]
	addw	r3, r3, #2730
	movs	r2, #170
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	addw	r3, r3, #1364
	movs	r2, #85
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	addw	r3, r3, #2730
	movs	r2, #128
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	addw	r3, r3, #2730
	movs	r2, #170
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	addw	r3, r3, #1364
	movs	r2, #85
	strh	r2, [r3]	@ movhi
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #48
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L64:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_NOR_Erase_Block, .-HAL_NOR_Erase_Block
	.section	.text.HAL_NOR_Erase_Chip,"ax",%progbits
	.align	1
	.global	HAL_NOR_Erase_Chip
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_Erase_Chip, %function
HAL_NOR_Erase_Chip:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L71
	movs	r3, #2
	b	.L72
.L71:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L73
	movs	r3, #2
	b	.L72
.L73:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L74
	mov	r3, #1610612736
	str	r3, [r7, #12]
	b	.L75
.L74:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	bne	.L76
	mov	r3, #1677721600
	str	r3, [r7, #12]
	b	.L75
.L76:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L77
	mov	r3, #1744830464
	str	r3, [r7, #12]
	b	.L75
.L77:
	mov	r3, #1811939328
	str	r3, [r7, #12]
.L75:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	addw	r3, r3, #2730
	movs	r2, #170
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	addw	r3, r3, #1364
	movs	r2, #85
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	addw	r3, r3, #2730
	movs	r2, #128
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	addw	r3, r3, #2730
	movs	r2, #170
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	addw	r3, r3, #1364
	movs	r2, #85
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	addw	r3, r3, #2730
	movs	r2, #16
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L72:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_NOR_Erase_Chip, .-HAL_NOR_Erase_Chip
	.section	.text.HAL_NOR_Read_CFI,"ax",%progbits
	.align	1
	.global	HAL_NOR_Read_CFI
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_Read_CFI, %function
HAL_NOR_Read_CFI:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L79
	movs	r3, #2
	b	.L80
.L79:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L81
	movs	r3, #2
	b	.L80
.L81:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L82
	mov	r3, #1610612736
	str	r3, [r7, #12]
	b	.L83
.L82:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	bne	.L84
	mov	r3, #1677721600
	str	r3, [r7, #12]
	b	.L83
.L84:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L85
	mov	r3, #1744830464
	str	r3, [r7, #12]
	b	.L83
.L85:
	mov	r3, #1811939328
	str	r3, [r7, #12]
.L83:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #73]
	ldr	r3, [r7, #12]
	adds	r3, r3, #170
	movs	r2, #152
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #194
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #196
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #198
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #200
	ldrh	r3, [r3]	@ movhi
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L80:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_NOR_Read_CFI, .-HAL_NOR_Read_CFI
	.section	.text.HAL_NOR_WriteOperation_Enable,"ax",%progbits
	.align	1
	.global	HAL_NOR_WriteOperation_Enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_WriteOperation_Enable, %function
HAL_NOR_WriteOperation_Enable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L87
	movs	r3, #2
	b	.L88
.L87:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r1, r3
	mov	r0, r2
	bl	FMC_NORSRAM_WriteOperation_Enable
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L88:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NOR_WriteOperation_Enable, .-HAL_NOR_WriteOperation_Enable
	.section	.text.HAL_NOR_WriteOperation_Disable,"ax",%progbits
	.align	1
	.global	HAL_NOR_WriteOperation_Disable
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_WriteOperation_Disable, %function
HAL_NOR_WriteOperation_Disable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #72]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L90
	movs	r3, #2
	b	.L91
.L90:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #72]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r1, r3
	mov	r0, r2
	bl	FMC_NORSRAM_WriteOperation_Disable
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #73]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #72]
	movs	r3, #0
.L91:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NOR_WriteOperation_Disable, .-HAL_NOR_WriteOperation_Disable
	.section	.text.HAL_NOR_GetState,"ax",%progbits
	.align	1
	.global	HAL_NOR_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_GetState, %function
HAL_NOR_GetState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #73]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_NOR_GetState, .-HAL_NOR_GetState
	.section	.text.HAL_NOR_GetStatus,"ax",%progbits
	.align	1
	.global	HAL_NOR_GetStatus
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NOR_GetStatus, %function
HAL_NOR_GetStatus:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #1
	strb	r3, [r7, #31]
	movs	r3, #0
	strh	r3, [r7, #28]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	HAL_NOR_MspWait
	bl	HAL_GetTick
	str	r0, [r7, #20]
	b	.L95
.L103:
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	beq	.L96
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L97
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bcs	.L96
.L97:
	movs	r3, #3
	strb	r3, [r7, #31]
.L96:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #28]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #26]	@ movhi
	ldrh	r2, [r7, #28]	@ movhi
	ldrh	r3, [r7, #26]	@ movhi
	eors	r3, r3, r2
	uxth	r3, r3
	and	r3, r3, #64
	cmp	r3, #0
	bne	.L98
	movs	r3, #0
	b	.L99
.L98:
	ldrh	r3, [r7, #28]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L100
	movs	r3, #1
	strb	r3, [r7, #31]
.L100:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #28]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #26]	@ movhi
	ldrh	r2, [r7, #28]	@ movhi
	ldrh	r3, [r7, #26]	@ movhi
	eors	r3, r3, r2
	uxth	r3, r3
	and	r3, r3, #64
	cmp	r3, #0
	bne	.L101
	movs	r3, #0
	b	.L99
.L101:
	ldrh	r3, [r7, #28]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L95
	movs	r3, #2
	b	.L99
.L95:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L102
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L103
.L102:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
.L99:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NOR_GetStatus, .-HAL_NOR_GetStatus
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
