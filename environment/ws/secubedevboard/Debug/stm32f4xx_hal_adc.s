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
	.file	"stm32f4xx_hal_adc.c"
	.text
	.section	.text.HAL_ADC_Init,"ax",%progbits
	.align	1
	.global	HAL_ADC_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_Init, %function
HAL_ADC_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	movs	r3, #1
	b	.L3
.L2:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r0, [r7, #4]
	bl	HAL_ADC_MspInit
.L4:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L5
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #4352
	bic	r3, r3, #2
	orr	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r0, [r7, #4]
	bl	ADC_Init
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #3
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	b	.L6
.L5:
	movs	r3, #1
	strb	r3, [r7, #15]
.L6:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_ADC_Init, .-HAL_ADC_Init
	.section	.text.HAL_ADC_DeInit,"ax",%progbits
	.align	1
	.global	HAL_ADC_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_DeInit, %function
HAL_ADC_DeInit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L8
	movs	r3, #1
	b	.L9
.L8:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L10
	ldr	r0, [r7, #4]
	bl	HAL_ADC_MspDeInit
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #64]
.L10:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L9:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_ADC_DeInit, .-HAL_ADC_DeInit
	.section	.text.HAL_ADC_MspInit,"ax",%progbits
	.align	1
	.weak	HAL_ADC_MspInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_MspInit, %function
HAL_ADC_MspInit:
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
	.size	HAL_ADC_MspInit, .-HAL_ADC_MspInit
	.section	.text.HAL_ADC_MspDeInit,"ax",%progbits
	.align	1
	.weak	HAL_ADC_MspDeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_MspDeInit, %function
HAL_ADC_MspDeInit:
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
	.size	HAL_ADC_MspDeInit, .-HAL_ADC_MspDeInit
	.section	.text.HAL_ADC_Start,"ax",%progbits
	.align	1
	.global	HAL_ADC_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_Start, %function
HAL_ADC_Start:
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
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L14
	movs	r3, #2
	b	.L15
.L14:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	beq	.L16
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, .L24
	ldr	r3, [r3]
	ldr	r2, .L24+4
	umull	r2, r3, r2, r3
	lsrs	r2, r3, #18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L17
.L18:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L17:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L18
.L16:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #1792
	bic	r3, r3, #1
	orr	r2, r3, #256
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #12288
	orr	r2, r3, #4096
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L20:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #4096
	cmp	r3, #0
	beq	.L21
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	bic	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #68]
	b	.L22
.L21:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #68]
.L22:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #2
	str	r2, [r3]
	ldr	r3, .L24+8
	ldr	r3, [r3, #4]
	and	r3, r3, #31
	cmp	r3, #0
	bne	.L23
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1073741824
	str	r2, [r3, #8]
	b	.L19
.L23:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L24+12
	cmp	r3, r2
	bne	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1073741824
	str	r2, [r3, #8]
.L19:
	movs	r3, #0
.L15:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L25:
	.align	2
.L24:
	.word	SystemCoreClock
	.word	1125899907
	.word	1073816320
	.word	1073815552
	.size	HAL_ADC_Start, .-HAL_ADC_Start
	.section	.text.HAL_ADC_Stop,"ax",%progbits
	.align	1
	.global	HAL_ADC_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_Stop, %function
HAL_ADC_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L27
	movs	r3, #2
	b	.L28
.L27:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L29
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #4352
	bic	r3, r3, #1
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L29:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
.L28:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_ADC_Stop, .-HAL_ADC_Stop
	.section	.text.HAL_ADC_PollForConversion,"ax",%progbits
	.align	1
	.global	HAL_ADC_PollForConversion
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_PollForConversion, %function
HAL_ADC_PollForConversion:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #1
	b	.L32
.L31:
	bl	HAL_GetTick
	str	r0, [r7, #12]
	b	.L33
.L35:
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L33
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L34
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L33
.L34:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L32
.L33:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #2
	bne	.L35
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #18
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #512
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L36
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L36
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #44]
	and	r3, r3, #15728640
	cmp	r3, #0
	beq	.L37
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L36
.L37:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r2, r3, #256
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #4096
	cmp	r3, #0
	bne	.L36
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L36:
	movs	r3, #0
.L32:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_ADC_PollForConversion, .-HAL_ADC_PollForConversion
	.section	.text.HAL_ADC_PollForEvent,"ax",%progbits
	.align	1
	.global	HAL_ADC_PollForEvent
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_PollForEvent, %function
HAL_ADC_PollForEvent:
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
	b	.L39
.L42:
	ldr	r3, [r7, #4]
	cmp	r3, #-1
	beq	.L39
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L40
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bcs	.L39
.L40:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #4
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #3
	b	.L41
.L39:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ands	r3, r3, r2
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bne	.L42
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bne	.L43
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #65536
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mvn	r2, #1
	str	r2, [r3]
	b	.L44
.L43:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #1024
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	orr	r2, r3, #2
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mvn	r2, #32
	str	r2, [r3]
.L44:
	movs	r3, #0
.L41:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_ADC_PollForEvent, .-HAL_ADC_PollForEvent
	.section	.text.HAL_ADC_Start_IT,"ax",%progbits
	.align	1
	.global	HAL_ADC_Start_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_Start_IT, %function
HAL_ADC_Start_IT:
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
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L46
	movs	r3, #2
	b	.L47
.L46:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	beq	.L48
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, .L56
	ldr	r3, [r3]
	ldr	r2, .L56+4
	umull	r2, r3, r2, r3
	lsrs	r2, r3, #18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L49
.L50:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L49:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L50
.L48:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #1792
	bic	r3, r3, #1
	orr	r2, r3, #256
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #12288
	orr	r2, r3, #4096
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L52:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #4096
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	bic	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #68]
	b	.L54
.L53:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #68]
.L54:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	orr	r3, r3, #67108864
	orr	r3, r3, #32
	str	r3, [r2, #4]
	ldr	r3, .L56+8
	ldr	r3, [r3, #4]
	and	r3, r3, #31
	cmp	r3, #0
	bne	.L55
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1073741824
	str	r2, [r3, #8]
	b	.L51
.L55:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L56+12
	cmp	r3, r2
	bne	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L51
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #1073741824
	str	r2, [r3, #8]
.L51:
	movs	r3, #0
.L47:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L57:
	.align	2
.L56:
	.word	SystemCoreClock
	.word	1125899907
	.word	1073816320
	.word	1073815552
	.size	HAL_ADC_Start_IT, .-HAL_ADC_Start_IT
	.section	.text.HAL_ADC_Stop_IT,"ax",%progbits
	.align	1
	.global	HAL_ADC_Stop_IT
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_Stop_IT, %function
HAL_ADC_Stop_IT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L59
	movs	r3, #2
	b	.L60
.L59:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L61
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	bic	r3, r3, #67108864
	bic	r3, r3, #32
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #4352
	bic	r3, r3, #1
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L61:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
.L60:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_ADC_Stop_IT, .-HAL_ADC_Stop_IT
	.section	.text.HAL_ADC_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_ADC_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_IRQHandler, %function
HAL_ADC_IRQHandler:
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
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #2
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #32
	cmp	r3, #32
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L63
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L63
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L64
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #512
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L64:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L65
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L65
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #44]
	and	r3, r3, #15728640
	cmp	r3, #0
	beq	.L66
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L65
.L66:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #32
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r2, r3, #256
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #4096
	cmp	r3, #0
	bne	.L65
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L65:
	ldr	r0, [r7, #4]
	bl	HAL_ADC_ConvCpltCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #18
	str	r2, [r3]
.L63:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
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
	and	r3, r3, #128
	cmp	r3, #128
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L68
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #8192
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L68:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #3145728
	cmp	r3, #0
	bne	.L69
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #56]
	and	r3, r3, #3145728
	cmp	r3, #0
	beq	.L70
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L69
.L70:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L69
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L69
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L69
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #128
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r2, r3, #4096
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L69
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L69:
	ldr	r0, [r7, #4]
	bl	HAL_ADCEx_InjectedConvCpltCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #12
	str	r2, [r3]
.L67:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #64
	cmp	r3, #64
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L71
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L71
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L71
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	orr	r2, r3, #65536
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r0, [r7, #4]
	bl	HAL_ADC_LevelOutOfWindowCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #1
	str	r2, [r3]
.L71:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #32
	cmp	r3, #32
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #67108864
	cmp	r3, #67108864
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	orr	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #32
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	HAL_ADC_ErrorCallback
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mvn	r2, #32
	str	r2, [r3]
.L73:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_ADC_IRQHandler, .-HAL_ADC_IRQHandler
	.section	.text.HAL_ADC_Start_DMA,"ax",%progbits
	.align	1
	.global	HAL_ADC_Start_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_Start_DMA, %function
HAL_ADC_Start_DMA:
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
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L75
	movs	r3, #2
	b	.L76
.L75:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #1
	beq	.L77
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, .L85
	ldr	r3, [r3]
	ldr	r2, .L85+4
	umull	r2, r3, r2, r3
	lsrs	r2, r3, #18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #20]
	b	.L78
.L79:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L78:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L79
.L77:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	bic	r3, r3, #1792
	bic	r3, r3, #1
	orr	r2, r3, #256
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L81
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	bic	r3, r3, #12288
	orr	r2, r3, #4096
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
.L81:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	and	r3, r3, #4096
	cmp	r3, #0
	beq	.L82
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	bic	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	b	.L83
.L82:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #68]
.L83:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L85+8
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L85+12
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, .L85+16
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mvn	r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #67108864
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #256
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #76
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	HAL_DMA_Start_IT
	ldr	r3, .L85+20
	ldr	r3, [r3, #4]
	and	r3, r3, #31
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L80
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1073741824
	str	r2, [r3, #8]
	b	.L80
.L84:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, .L85+24
	cmp	r3, r2
	bne	.L80
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L80
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	orr	r2, r2, #1073741824
	str	r2, [r3, #8]
.L80:
	movs	r3, #0
.L76:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L86:
	.align	2
.L85:
	.word	SystemCoreClock
	.word	1125899907
	.word	ADC_DMAConvCplt
	.word	ADC_DMAHalfConvCplt
	.word	ADC_DMAError
	.word	1073816320
	.word	1073815552
	.size	HAL_ADC_Start_DMA, .-HAL_ADC_Start_DMA
	.section	.text.HAL_ADC_Stop_DMA,"ax",%progbits
	.align	1
	.global	HAL_ADC_Stop_DMA
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_Stop_DMA, %function
HAL_ADC_Stop_DMA:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L88
	movs	r3, #2
	b	.L89
.L88:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L90
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #256
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	mov	r0, r3
	bl	HAL_DMA_Abort
	mov	r3, r0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #67108864
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #64]
	bic	r3, r3, #4352
	bic	r3, r3, #1
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
.L90:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L89:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_ADC_Stop_DMA, .-HAL_ADC_Stop_DMA
	.section	.text.HAL_ADC_GetValue,"ax",%progbits
	.align	1
	.global	HAL_ADC_GetValue
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_GetValue, %function
HAL_ADC_GetValue:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #76]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_ADC_GetValue, .-HAL_ADC_GetValue
	.section	.text.HAL_ADC_ConvCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_ADC_ConvCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_ConvCpltCallback, %function
HAL_ADC_ConvCpltCallback:
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
	.size	HAL_ADC_ConvCpltCallback, .-HAL_ADC_ConvCpltCallback
	.section	.text.HAL_ADC_ConvHalfCpltCallback,"ax",%progbits
	.align	1
	.weak	HAL_ADC_ConvHalfCpltCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_ConvHalfCpltCallback, %function
HAL_ADC_ConvHalfCpltCallback:
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
	.size	HAL_ADC_ConvHalfCpltCallback, .-HAL_ADC_ConvHalfCpltCallback
	.section	.text.HAL_ADC_LevelOutOfWindowCallback,"ax",%progbits
	.align	1
	.weak	HAL_ADC_LevelOutOfWindowCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_LevelOutOfWindowCallback, %function
HAL_ADC_LevelOutOfWindowCallback:
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
	.size	HAL_ADC_LevelOutOfWindowCallback, .-HAL_ADC_LevelOutOfWindowCallback
	.section	.text.HAL_ADC_ErrorCallback,"ax",%progbits
	.align	1
	.weak	HAL_ADC_ErrorCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_ErrorCallback, %function
HAL_ADC_ErrorCallback:
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
	.size	HAL_ADC_ErrorCallback, .-HAL_ADC_ErrorCallback
	.section	.text.HAL_ADC_ConfigChannel,"ax",%progbits
	.align	1
	.global	HAL_ADC_ConfigChannel
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_ConfigChannel, %function
HAL_ADC_ConfigChannel:
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
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L98
	movs	r3, #2
	b	.L99
.L98:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #9
	bls	.L100
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	subs	r3, r3, #30
	movs	r2, #7
	lsl	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ands	r2, r2, r1
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r3
	mov	r3, r0
	lsls	r3, r3, #1
	add	r3, r3, r0
	subs	r3, r3, #30
	lsls	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #12]
	b	.L101
.L100:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #7
	lsl	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ands	r2, r2, r1
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r3
	mov	r3, r0
	lsls	r3, r3, #1
	add	r3, r3, r0
	lsls	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #16]
.L101:
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #6
	bhi	.L102
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #52]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	subs	r3, r3, #5
	movs	r2, #31
	lsl	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ands	r2, r2, r1
	str	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #52]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r3
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	subs	r3, r3, #5
	lsl	r2, r0, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #52]
	b	.L103
.L102:
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #12
	bhi	.L104
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #48]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	subs	r3, r3, #35
	movs	r2, #31
	lsl	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ands	r2, r2, r1
	str	r2, [r3, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #48]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r3
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	subs	r3, r3, #35
	lsl	r2, r0, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #48]
	b	.L103
.L104:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #44]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	subs	r3, r3, #65
	movs	r2, #31
	lsl	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ands	r2, r2, r1
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #44]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxth	r3, r3
	mov	r0, r3
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	subs	r3, r3, #65
	lsl	r2, r0, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #44]
.L103:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L110
	cmp	r3, r2
	bne	.L105
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #18
	bne	.L105
	ldr	r3, .L110+4
	ldr	r3, [r3, #4]
	ldr	r2, .L110+4
	orr	r3, r3, #4194304
	str	r3, [r2, #4]
.L105:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, .L110
	cmp	r3, r2
	bne	.L106
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, .L110+8
	cmp	r3, r2
	beq	.L107
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #17
	bne	.L106
.L107:
	ldr	r3, .L110+4
	ldr	r3, [r3, #4]
	ldr	r2, .L110+4
	orr	r3, r3, #8388608
	str	r3, [r2, #4]
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, .L110+8
	cmp	r3, r2
	bne	.L106
	ldr	r3, .L110+12
	ldr	r3, [r3]
	ldr	r2, .L110+16
	umull	r2, r3, r2, r3
	lsrs	r2, r3, #18
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	str	r3, [r7, #12]
	b	.L108
.L109:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L108:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L109
.L106:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
.L99:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L111:
	.align	2
.L110:
	.word	1073815552
	.word	1073816320
	.word	268435474
	.word	SystemCoreClock
	.word	1125899907
	.size	HAL_ADC_ConfigChannel, .-HAL_ADC_ConfigChannel
	.section	.text.HAL_ADC_AnalogWDGConfig,"ax",%progbits
	.align	1
	.global	HAL_ADC_AnalogWDGConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_AnalogWDGConfig, %function
HAL_ADC_AnalogWDGConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L113
	movs	r3, #2
	b	.L114
.L113:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #60]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L115
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #64
	str	r2, [r3, #4]
	b	.L116
.L115:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #64
	str	r2, [r3, #4]
.L116:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	bic	r3, r3, #12582912
	bic	r3, r3, #512
	str	r3, [r2, #4]
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
	ldr	r2, [r7]
	ldr	r2, [r2, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldr	r2, [r2, #8]
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #31
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	uxth	r3, r3
	mov	r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #60]
	movs	r3, #0
.L114:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_ADC_AnalogWDGConfig, .-HAL_ADC_AnalogWDGConfig
	.section	.text.HAL_ADC_GetState,"ax",%progbits
	.align	1
	.global	HAL_ADC_GetState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_GetState, %function
HAL_ADC_GetState:
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
	.size	HAL_ADC_GetState, .-HAL_ADC_GetState
	.section	.text.HAL_ADC_GetError,"ax",%progbits
	.align	1
	.global	HAL_ADC_GetError
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_ADC_GetError, %function
HAL_ADC_GetError:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_ADC_GetError, .-HAL_ADC_GetError
	.section	.text.ADC_Init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ADC_Init, %function
ADC_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L127
	ldr	r3, [r3, #4]
	ldr	r2, .L127
	bic	r3, r3, #196608
	str	r3, [r2, #4]
	ldr	r3, .L127
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r1, .L127
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #256
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r2, r3, #8
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #50331648
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	ldr	r2, .L127+4
	cmp	r3, r2
	beq	.L122
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #251658240
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #805306368
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	b	.L123
.L122:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #251658240
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #805306368
	str	r2, [r3, #8]
.L123:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	lsls	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L124
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orr	r2, r2, #2048
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #57344
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	subs	r2, r3, #1
	mov	r3, #57344
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	clz	r3, r3
	lsl	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #4]
	b	.L126
.L124:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #2048
	str	r2, [r3, #4]
.L126:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #15728640
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	subs	r3, r3, #1
	lsls	r2, r3, #20
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #512
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	lsls	r2, r3, #9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r2, #1024
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	lsls	r2, r3, #10
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	orrs	r2, r2, r1
	str	r2, [r3, #8]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L128:
	.align	2
.L127:
	.word	1073816320
	.word	251658241
	.size	ADC_Init, .-ADC_Init
	.section	.text.ADC_DMAConvCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ADC_DMAConvCplt, %function
ADC_DMAConvCplt:
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
	ldr	r3, [r3, #64]
	and	r3, r3, #80
	cmp	r3, #0
	bne	.L130
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #512
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #805306368
	cmp	r3, #0
	bne	.L131
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L131
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #44]
	and	r3, r3, #15728640
	cmp	r3, #0
	beq	.L132
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L131
.L132:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	bic	r2, r2, #32
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	bic	r2, r3, #256
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	and	r3, r3, #4096
	cmp	r3, #0
	bne	.L131
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	orr	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #64]
.L131:
	ldr	r0, [r7, #12]
	bl	HAL_ADC_ConvCpltCallback
	b	.L134
.L130:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #72]
	ldr	r0, [r7, #4]
	blx	r3
.L134:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ADC_DMAConvCplt, .-ADC_DMAConvCplt
	.section	.text.ADC_DMAHalfConvCplt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ADC_DMAHalfConvCplt, %function
ADC_DMAHalfConvCplt:
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
	bl	HAL_ADC_ConvHalfCpltCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ADC_DMAHalfConvCplt, .-ADC_DMAHalfConvCplt
	.section	.text.ADC_DMAError,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	ADC_DMAError, %function
ADC_DMAError:
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
	movs	r2, #64
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	orr	r2, r3, #4
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r0, [r7, #12]
	bl	HAL_ADC_ErrorCallback
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ADC_DMAError, .-ADC_DMAError
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
