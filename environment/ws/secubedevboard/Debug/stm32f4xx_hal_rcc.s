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
	.file	"stm32f4xx_hal_rcc.c"
	.text
	.global	APBAHBPrescTable
	.section	.rodata.APBAHBPrescTable,"a"
	.align	2
	.type	APBAHBPrescTable, %object
	.size	APBAHBPrescTable, 16
APBAHBPrescTable:
	.ascii	"\000\000\000\000\001\002\003\004\001\002\003\004\006"
	.ascii	"\007\010\011"
	.section	.text.HAL_RCC_DeInit,"ax",%progbits
	.align	1
	.weak	HAL_RCC_DeInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_DeInit, %function
HAL_RCC_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_RCC_DeInit, .-HAL_RCC_DeInit
	.section	.text.HAL_RCC_OscConfig,"ax",%progbits
	.align	1
	.weak	HAL_RCC_OscConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_OscConfig, %function
HAL_RCC_OscConfig:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L3
	ldr	r3, .L51
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #4
	beq	.L4
	ldr	r3, .L51
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #8
	bne	.L5
	ldr	r3, .L51
	ldr	r3, [r3, #4]
	and	r3, r3, #4194304
	cmp	r3, #4194304
	bne	.L5
.L4:
	ldr	r3, .L51
	ldr	r3, [r3]
	and	r3, r3, #131072
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L50
	movs	r3, #1
	b	.L7
.L5:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, .L51+4
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L8
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L9
.L10:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	cmp	r3, #100
	bls	.L9
	movs	r3, #3
	b	.L7
.L9:
	ldr	r3, .L51
	ldr	r3, [r3]
	and	r3, r3, #131072
	cmp	r3, #0
	beq	.L10
	b	.L3
.L8:
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L11
.L12:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	cmp	r3, #100
	bls	.L11
	movs	r3, #3
	b	.L7
.L11:
	ldr	r3, .L51
	ldr	r3, [r3]
	and	r3, r3, #131072
	cmp	r3, #0
	bne	.L12
	b	.L3
.L50:
	nop
.L3:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L13
	ldr	r3, .L51
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #0
	beq	.L14
	ldr	r3, .L51
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #8
	bne	.L15
	ldr	r3, .L51
	ldr	r3, [r3, #4]
	and	r3, r3, #4194304
	cmp	r3, #0
	bne	.L15
.L14:
	ldr	r3, .L51
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #1
	beq	.L16
	movs	r3, #1
	b	.L7
.L16:
	ldr	r3, .L51
	ldr	r3, [r3]
	bic	r2, r3, #248
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #16]
	movs	r3, #248
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	clz	r3, r3
	lsl	r3, r1, r3
	ldr	r1, .L51
	orrs	r3, r3, r2
	str	r3, [r1]
	b	.L13
.L15:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L18
	ldr	r3, .L51+8
	movs	r2, #1
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L19
.L20:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L19
	movs	r3, #3
	b	.L7
.L19:
	ldr	r3, .L51
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L20
	ldr	r3, .L51
	ldr	r3, [r3]
	bic	r2, r3, #248
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #16]
	movs	r3, #248
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	clz	r3, r3
	lsl	r3, r1, r3
	ldr	r1, .L51
	orrs	r3, r3, r2
	str	r3, [r1]
	b	.L13
.L18:
	ldr	r3, .L51+8
	movs	r2, #0
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L22
.L23:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L22
	movs	r3, #3
	b	.L7
.L22:
	ldr	r3, .L51
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L23
.L13:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L25
	ldr	r3, .L51+12
	movs	r2, #1
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L26
.L27:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L26
	movs	r3, #3
	b	.L7
.L26:
	ldr	r3, .L51
	ldr	r3, [r3, #116]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L27
	b	.L24
.L25:
	ldr	r3, .L51+12
	movs	r2, #0
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L28
.L29:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L28
	movs	r3, #3
	b	.L7
.L28:
	ldr	r3, .L51
	ldr	r3, [r3, #116]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L29
.L24:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L30
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L51
	ldr	r3, [r3, #64]
	ldr	r2, .L51
	orr	r3, r3, #268435456
	str	r3, [r2, #64]
	ldr	r3, .L51
	ldr	r3, [r3, #64]
	and	r3, r3, #268435456
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, .L51+16
	ldr	r3, [r3]
	ldr	r2, .L51+16
	orr	r3, r3, #256
	str	r3, [r2]
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L31
.L32:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L31
	movs	r3, #3
	b	.L7
.L31:
	ldr	r3, .L51+16
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, .L51+20
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L33
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L34
.L35:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	movw	r2, #5000
	cmp	r3, r2
	bls	.L34
	movs	r3, #3
	b	.L7
.L52:
	.align	2
.L51:
	.word	1073887232
	.word	1073887234
	.word	1111949312
	.word	1111953024
	.word	1073770496
	.word	1073887344
.L34:
	ldr	r3, .L53
	ldr	r3, [r3, #112]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L35
	b	.L30
.L33:
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L36
.L37:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	movw	r2, #5000
	cmp	r3, r2
	bls	.L36
	movs	r3, #3
	b	.L7
.L36:
	ldr	r3, .L53
	ldr	r3, [r3, #112]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L37
.L30:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L38
	ldr	r3, .L53
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #8
	beq	.L39
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #2
	bne	.L40
	ldr	r3, .L53+4
	movs	r2, #0
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L41
.L42:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L41
	movs	r3, #3
	b	.L7
.L41:
	ldr	r3, .L53
	ldr	r3, [r3]
	and	r3, r3, #33554432
	cmp	r3, #0
	bne	.L42
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #36]
	movw	r3, #32704
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	clz	r3, r3
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	lsrs	r3, r3, #1
	subs	r1, r3, #1
	mov	r3, #196608
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	clz	r3, r3
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #44]
	mov	r3, #251658240
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	clz	r3, r3
	lsl	r3, r1, r3
	ldr	r1, .L53
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, .L53+4
	movs	r2, #1
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L46
.L47:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L46
	movs	r3, #3
	b	.L7
.L46:
	ldr	r3, .L53
	ldr	r3, [r3]
	and	r3, r3, #33554432
	cmp	r3, #0
	beq	.L47
	b	.L38
.L40:
	ldr	r3, .L53+4
	movs	r2, #0
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #52]
	b	.L48
.L49:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L48
	movs	r3, #3
	b	.L7
.L48:
	ldr	r3, .L53
	ldr	r3, [r3]
	and	r3, r3, #33554432
	cmp	r3, #0
	bne	.L49
	b	.L38
.L39:
	movs	r3, #1
	b	.L7
.L38:
	movs	r3, #0
.L7:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L54:
	.align	2
.L53:
	.word	1073887232
	.word	1111949408
	.size	HAL_RCC_OscConfig, .-HAL_RCC_OscConfig
	.section	.text.HAL_RCC_ClockConfig,"ax",%progbits
	.align	1
	.global	HAL_RCC_ClockConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_ClockConfig, %function
HAL_RCC_ClockConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L79
	ldr	r3, [r3]
	and	r3, r3, #15
	ldr	r2, [r7]
	cmp	r2, r3
	bls	.L56
	ldr	r3, .L79
	ldr	r2, [r7]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, .L79
	ldr	r3, [r3]
	and	r3, r3, #15
	ldr	r2, [r7]
	cmp	r2, r3
	beq	.L56
	movs	r3, #1
	b	.L57
.L56:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L58
	ldr	r3, .L79+4
	ldr	r3, [r3, #8]
	bic	r2, r3, #240
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r1, .L79+4
	orrs	r3, r3, r2
	str	r3, [r1, #8]
.L58:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L59
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L60
	ldr	r3, .L79+4
	ldr	r3, [r3]
	and	r3, r3, #131072
	cmp	r3, #0
	bne	.L61
	movs	r3, #1
	b	.L57
.L60:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	beq	.L62
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	bne	.L63
.L62:
	ldr	r3, .L79+4
	ldr	r3, [r3]
	and	r3, r3, #33554432
	cmp	r3, #0
	bne	.L61
	movs	r3, #1
	b	.L57
.L63:
	ldr	r3, .L79+4
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L61
	movs	r3, #1
	b	.L57
.L61:
	ldr	r3, .L79+4
	ldr	r3, [r3, #8]
	bic	r2, r3, #3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r1, .L79+4
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	bl	HAL_GetTick
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L65
	b	.L66
.L67:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	movw	r2, #5000
	cmp	r3, r2
	bls	.L66
	movs	r3, #3
	b	.L57
.L66:
	ldr	r3, .L79+4
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #4
	bne	.L67
	b	.L59
.L65:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L68
	b	.L69
.L70:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	movw	r2, #5000
	cmp	r3, r2
	bls	.L69
	movs	r3, #3
	b	.L57
.L69:
	ldr	r3, .L79+4
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #8
	bne	.L70
	b	.L59
.L68:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	bne	.L74
	b	.L72
.L73:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	movw	r2, #5000
	cmp	r3, r2
	bls	.L72
	movs	r3, #3
	b	.L57
.L72:
	ldr	r3, .L79+4
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #3
	bne	.L73
	b	.L59
.L75:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	movw	r2, #5000
	cmp	r3, r2
	bls	.L74
	movs	r3, #3
	b	.L57
.L74:
	ldr	r3, .L79+4
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #0
	bne	.L75
.L59:
	ldr	r3, .L79
	ldr	r3, [r3]
	and	r3, r3, #15
	ldr	r2, [r7]
	cmp	r2, r3
	bcs	.L76
	ldr	r3, .L79
	ldr	r2, [r7]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, .L79
	ldr	r3, [r3]
	and	r3, r3, #15
	ldr	r2, [r7]
	cmp	r2, r3
	beq	.L76
	movs	r3, #1
	b	.L57
.L76:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L77
	ldr	r3, .L79+4
	ldr	r3, [r3, #8]
	bic	r2, r3, #7168
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r1, .L79+4
	orrs	r3, r3, r2
	str	r3, [r1, #8]
.L77:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L78
	ldr	r3, .L79+4
	ldr	r3, [r3, #8]
	bic	r2, r3, #57344
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #3
	ldr	r1, .L79+4
	orrs	r3, r3, r2
	str	r3, [r1, #8]
.L78:
	movs	r0, #0
	bl	HAL_InitTick
	movs	r3, #0
.L57:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L80:
	.align	2
.L79:
	.word	1073888256
	.word	1073887232
	.size	HAL_RCC_ClockConfig, .-HAL_RCC_ClockConfig
	.section	.text.HAL_RCC_MCOConfig,"ax",%progbits
	.align	1
	.global	HAL_RCC_MCOConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_MCOConfig, %function
HAL_RCC_MCOConfig:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L82
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, .L85
	ldr	r3, [r3, #48]
	ldr	r2, .L85
	orr	r3, r3, #1
	str	r3, [r2, #48]
	ldr	r3, .L85
	ldr	r3, [r3, #48]
	and	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	mov	r3, #256
	str	r3, [r7, #28]
	movs	r3, #2
	str	r3, [r7, #32]
	movs	r3, #3
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #44]
	add	r3, r7, #28
	mov	r1, r3
	ldr	r0, .L85+4
	bl	HAL_GPIO_Init
	ldr	r3, .L85
	ldr	r3, [r3, #8]
	bic	r2, r3, #123731968
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #4]
	orrs	r3, r3, r1
	ldr	r1, .L85
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	b	.L84
.L82:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, .L85
	ldr	r3, [r3, #48]
	ldr	r2, .L85
	orr	r3, r3, #4
	str	r3, [r2, #48]
	ldr	r3, .L85
	ldr	r3, [r3, #48]
	and	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	mov	r3, #512
	str	r3, [r7, #28]
	movs	r3, #2
	str	r3, [r7, #32]
	movs	r3, #3
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #44]
	add	r3, r7, #28
	mov	r1, r3
	ldr	r0, .L85+8
	bl	HAL_GPIO_Init
	ldr	r3, .L85
	ldr	r3, [r3, #8]
	bic	r2, r3, #-134217728
	ldr	r3, [r7, #4]
	lsls	r1, r3, #3
	ldr	r3, [r7, #8]
	orrs	r3, r3, r1
	ldr	r1, .L85
	orrs	r3, r3, r2
	str	r3, [r1, #8]
.L84:
	nop
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L86:
	.align	2
.L85:
	.word	1073887232
	.word	1073872896
	.word	1073874944
	.size	HAL_RCC_MCOConfig, .-HAL_RCC_MCOConfig
	.section	.text.HAL_RCC_EnableCSS,"ax",%progbits
	.align	1
	.global	HAL_RCC_EnableCSS
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_EnableCSS, %function
HAL_RCC_EnableCSS:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L88
	movs	r2, #1
	str	r2, [r3]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L89:
	.align	2
.L88:
	.word	1111949388
	.size	HAL_RCC_EnableCSS, .-HAL_RCC_EnableCSS
	.section	.text.HAL_RCC_DisableCSS,"ax",%progbits
	.align	1
	.global	HAL_RCC_DisableCSS
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_DisableCSS, %function
HAL_RCC_DisableCSS:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L91
	movs	r2, #0
	str	r2, [r3]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L92:
	.align	2
.L91:
	.word	1111949388
	.size	HAL_RCC_DisableCSS, .-HAL_RCC_DisableCSS
	.section	.text.HAL_RCC_GetSysClockFreq,"ax",%progbits
	.align	1
	.weak	HAL_RCC_GetSysClockFreq
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_GetSysClockFreq, %function
HAL_RCC_GetSysClockFreq:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, .L105
	ldr	r3, [r3, #8]
	and	r3, r3, #12
	cmp	r3, #8
	beq	.L94
	cmp	r3, #8
	bhi	.L95
	cmp	r3, #0
	beq	.L96
	cmp	r3, #4
	beq	.L97
	b	.L95
.L96:
	ldr	r3, .L105+4
	str	r3, [r7, #32]
	b	.L98
.L97:
	ldr	r3, .L105+4
	str	r3, [r7, #32]
	b	.L98
.L94:
	ldr	r3, .L105
	ldr	r3, [r3, #4]
	and	r3, r3, #63
	str	r3, [r7, #28]
	ldr	r3, .L105
	ldr	r3, [r3, #4]
	and	r3, r3, #4194304
	cmp	r3, #0
	beq	.L99
	ldr	r2, .L105+4
	ldr	r3, [r7, #28]
	udiv	r2, r2, r3
	ldr	r3, .L105
	ldr	r1, [r3, #4]
	movw	r3, #32704
	ands	r3, r3, r1
	movw	r1, #32704
	str	r1, [r7, #20]
	ldr	r1, [r7, #20]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r1, r1
@ 0 "" 2
	.thumb
	.syntax unified
	str	r1, [r7, #16]
	ldr	r1, [r7, #16]
	clz	r1, r1
	lsrs	r3, r3, r1
	mul	r3, r3, r2
	str	r3, [r7, #36]
	b	.L101
.L99:
	ldr	r2, .L105+4
	ldr	r3, [r7, #28]
	udiv	r2, r2, r3
	ldr	r3, .L105
	ldr	r1, [r3, #4]
	movw	r3, #32704
	ands	r3, r3, r1
	movw	r1, #32704
	str	r1, [r7, #12]
	ldr	r1, [r7, #12]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r1, r1
@ 0 "" 2
	.thumb
	.syntax unified
	str	r1, [r7, #8]
	ldr	r1, [r7, #8]
	clz	r1, r1
	lsrs	r3, r3, r1
	mul	r3, r3, r2
	str	r3, [r7, #36]
.L101:
	ldr	r3, .L105
	ldr	r3, [r3, #4]
	and	r2, r3, #196608
	mov	r3, #196608
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7]
	ldr	r3, [r7]
	clz	r3, r3
	lsr	r3, r2, r3
	adds	r3, r3, #1
	lsls	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	udiv	r3, r2, r3
	str	r3, [r7, #32]
	b	.L98
.L95:
	ldr	r3, .L105+4
	str	r3, [r7, #32]
	nop
.L98:
	ldr	r3, [r7, #32]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L106:
	.align	2
.L105:
	.word	1073887232
	.word	16000000
	.size	HAL_RCC_GetSysClockFreq, .-HAL_RCC_GetSysClockFreq
	.section	.text.HAL_RCC_GetHCLKFreq,"ax",%progbits
	.align	1
	.global	HAL_RCC_GetHCLKFreq
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_GetHCLKFreq, %function
HAL_RCC_GetHCLKFreq:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	bl	HAL_RCC_GetSysClockFreq
	mov	r1, r0
	ldr	r3, .L110
	ldr	r3, [r3, #8]
	and	r2, r3, #240
	movs	r3, #240
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7]
	ldr	r3, [r7]
	clz	r3, r3
	lsr	r3, r2, r3
	ldr	r2, .L110+4
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	lsr	r3, r1, r3
	ldr	r2, .L110+8
	str	r3, [r2]
	ldr	r3, .L110+8
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L111:
	.align	2
.L110:
	.word	1073887232
	.word	APBAHBPrescTable
	.word	SystemCoreClock
	.size	HAL_RCC_GetHCLKFreq, .-HAL_RCC_GetHCLKFreq
	.section	.text.HAL_RCC_GetPCLK1Freq,"ax",%progbits
	.align	1
	.global	HAL_RCC_GetPCLK1Freq
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_GetPCLK1Freq, %function
HAL_RCC_GetPCLK1Freq:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	bl	HAL_RCC_GetHCLKFreq
	mov	r1, r0
	ldr	r3, .L115
	ldr	r3, [r3, #8]
	and	r2, r3, #7168
	mov	r3, #7168
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7]
	ldr	r3, [r7]
	clz	r3, r3
	lsr	r3, r2, r3
	ldr	r2, .L115+4
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	lsr	r3, r1, r3
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L116:
	.align	2
.L115:
	.word	1073887232
	.word	APBAHBPrescTable
	.size	HAL_RCC_GetPCLK1Freq, .-HAL_RCC_GetPCLK1Freq
	.section	.text.HAL_RCC_GetPCLK2Freq,"ax",%progbits
	.align	1
	.global	HAL_RCC_GetPCLK2Freq
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_GetPCLK2Freq, %function
HAL_RCC_GetPCLK2Freq:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	bl	HAL_RCC_GetHCLKFreq
	mov	r1, r0
	ldr	r3, .L120
	ldr	r3, [r3, #8]
	and	r2, r3, #57344
	mov	r3, #57344
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7]
	ldr	r3, [r7]
	clz	r3, r3
	lsr	r3, r2, r3
	ldr	r2, .L120+4
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	lsr	r3, r1, r3
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L121:
	.align	2
.L120:
	.word	1073887232
	.word	APBAHBPrescTable
	.size	HAL_RCC_GetPCLK2Freq, .-HAL_RCC_GetPCLK2Freq
	.section	.text.HAL_RCC_GetOscConfig,"ax",%progbits
	.align	1
	.weak	HAL_RCC_GetOscConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_GetOscConfig, %function
HAL_RCC_GetOscConfig:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #15
	str	r2, [r3]
	ldr	r3, .L139
	ldr	r3, [r3]
	and	r3, r3, #262144
	cmp	r3, #262144
	bne	.L123
	ldr	r3, [r7, #4]
	movs	r2, #5
	str	r2, [r3, #4]
	b	.L124
.L123:
	ldr	r3, .L139
	ldr	r3, [r3]
	and	r3, r3, #65536
	cmp	r3, #65536
	bne	.L125
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #4]
	b	.L124
.L125:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
.L124:
	ldr	r3, .L139
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L126
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #12]
	b	.L127
.L126:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
.L127:
	ldr	r3, .L139
	ldr	r3, [r3]
	and	r2, r3, #248
	movs	r3, #248
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	clz	r3, r3
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, .L139
	ldr	r3, [r3, #112]
	and	r3, r3, #4
	cmp	r3, #4
	bne	.L129
	ldr	r3, [r7, #4]
	movs	r2, #5
	str	r2, [r3, #8]
	b	.L130
.L129:
	ldr	r3, .L139
	ldr	r3, [r3, #112]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L131
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #8]
	b	.L130
.L131:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
.L130:
	ldr	r3, .L139
	ldr	r3, [r3, #116]
	and	r3, r3, #1
	cmp	r3, #1
	bne	.L132
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #20]
	b	.L133
.L132:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
.L133:
	ldr	r3, .L139
	ldr	r3, [r3]
	and	r3, r3, #16777216
	cmp	r3, #16777216
	bne	.L134
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #24]
	b	.L135
.L134:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #24]
.L135:
	ldr	r3, .L139
	ldr	r3, [r3, #4]
	and	r2, r3, #4194304
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, .L139
	ldr	r3, [r3, #4]
	and	r2, r3, #63
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, .L139
	ldr	r2, [r3, #4]
	movw	r3, #32704
	ands	r3, r3, r2
	movw	r2, #32704
	str	r2, [r7, #12]
	ldr	r2, [r7, #12]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r2, r2
@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [r7, #8]
	ldr	r2, [r7, #8]
	clz	r2, r2
	lsr	r2, r3, r2
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, .L139
	ldr	r3, [r3, #4]
	and	r3, r3, #196608
	add	r3, r3, #65536
	lsls	r2, r3, #1
	mov	r3, #196608
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	clz	r3, r3
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, .L139
	ldr	r3, [r3, #4]
	and	r2, r3, #251658240
	mov	r3, #251658240
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	clz	r3, r3
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	nop
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L140:
	.align	2
.L139:
	.word	1073887232
	.size	HAL_RCC_GetOscConfig, .-HAL_RCC_GetOscConfig
	.section	.text.HAL_RCC_GetClockConfig,"ax",%progbits
	.align	1
	.global	HAL_RCC_GetClockConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_GetClockConfig, %function
HAL_RCC_GetClockConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	movs	r2, #15
	str	r2, [r3]
	ldr	r3, .L142
	ldr	r3, [r3, #8]
	and	r2, r3, #3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, .L142
	ldr	r3, [r3, #8]
	and	r2, r3, #240
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, .L142
	ldr	r3, [r3, #8]
	and	r2, r3, #7168
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, .L142
	ldr	r3, [r3, #8]
	lsrs	r3, r3, #3
	and	r2, r3, #7168
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, .L142+4
	ldr	r3, [r3]
	and	r2, r3, #15
	ldr	r3, [r7]
	str	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L143:
	.align	2
.L142:
	.word	1073887232
	.word	1073888256
	.size	HAL_RCC_GetClockConfig, .-HAL_RCC_GetClockConfig
	.section	.text.HAL_RCC_NMI_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_RCC_NMI_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_NMI_IRQHandler, %function
HAL_RCC_NMI_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L147
	ldr	r3, [r3, #12]
	and	r3, r3, #128
	cmp	r3, #128
	bne	.L146
	bl	HAL_RCC_CSSCallback
	ldr	r3, .L147+4
	movs	r2, #128
	strb	r2, [r3]
.L146:
	nop
	pop	{r7, pc}
.L148:
	.align	2
.L147:
	.word	1073887232
	.word	1073887246
	.size	HAL_RCC_NMI_IRQHandler, .-HAL_RCC_NMI_IRQHandler
	.section	.text.HAL_RCC_CSSCallback,"ax",%progbits
	.align	1
	.weak	HAL_RCC_CSSCallback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCC_CSSCallback, %function
HAL_RCC_CSSCallback:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	HAL_RCC_CSSCallback, .-HAL_RCC_CSSCallback
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
