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
	.file	"stm32f4xx_hal_rcc_ex.c"
	.text
	.section	.text.HAL_RCC_DeInit,"ax",%progbits
	.align	1
	.global	HAL_RCC_DeInit
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
	ldr	r3, .L2
	ldr	r3, [r3]
	ldr	r2, .L2
	orr	r3, r3, #129
	str	r3, [r2]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L2
	ldr	r3, [r3]
	ldr	r2, .L2
	bic	r3, r3, #84410368
	bic	r3, r3, #65536
	str	r3, [r2]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, .L2
	ldr	r2, [r3, #4]
	ldr	r1, .L2
	ldr	r3, .L2+4
	orrs	r3, r3, r2
	str	r3, [r1, #4]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #132]
	ldr	r3, .L2
	ldr	r3, [r3, #132]
	ldr	r2, .L2
	orr	r3, r3, #536870912
	orr	r3, r3, #12288
	str	r3, [r2, #132]
	ldr	r3, .L2
	ldr	r3, [r3]
	ldr	r2, .L2
	bic	r3, r3, #262144
	str	r3, [r2]
	ldr	r3, .L2
	movs	r2, #0
	str	r2, [r3, #12]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L3:
	.align	2
.L2:
	.word	1073887232
	.word	67121168
	.size	HAL_RCC_DeInit, .-HAL_RCC_DeInit
	.section	.text.HAL_RCCEx_PeriphCLKConfig,"ax",%progbits
	.align	1
	.global	HAL_RCCEx_PeriphCLKConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCCEx_PeriphCLKConfig, %function
HAL_RCCEx_PeriphCLKConfig:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #112
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #108]
	movs	r3, #0
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L5
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L6
.L5:
	ldr	r3, .L42
	movs	r2, #0
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #108]
	b	.L7
.L9:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #108]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L7
	movs	r3, #3
	b	.L8
.L7:
	ldr	r3, .L42+4
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	bne	.L9
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L10
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	movw	r3, #32704
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	clz	r3, r3
	lsls	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	mov	r3, #1879048192
	str	r3, [r7, #100]
	ldr	r3, [r7, #100]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	clz	r3, r3
	lsl	r3, r1, r3
	ldr	r1, .L42+4
	orrs	r3, r3, r2
	str	r3, [r1, #132]
.L10:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L13
	ldr	r3, .L42+4
	ldr	r3, [r3, #132]
	and	r2, r3, #1879048192
	mov	r3, #1879048192
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	clz	r3, r3
	lsr	r3, r2, r3
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #24
	orrs	r2, r2, r3
	ldr	r3, [r7, #104]
	lsls	r3, r3, #28
	ldr	r1, .L42+4
	orrs	r3, r3, r2
	str	r3, [r1, #132]
	ldr	r3, .L42+4
	ldr	r3, [r3, #140]
	bic	r2, r3, #31
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	subs	r3, r3, #1
	ldr	r1, .L42+4
	orrs	r3, r3, r2
	str	r3, [r1, #140]
.L13:
	ldr	r3, .L42
	movs	r2, #1
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #108]
	b	.L15
.L16:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #108]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L15
	movs	r3, #3
	b	.L8
.L15:
	ldr	r3, .L42+4
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L16
.L6:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L17
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L18
.L17:
	ldr	r3, .L42+8
	movs	r2, #0
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #108]
	b	.L19
.L20:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #108]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L19
	movs	r3, #3
	b	.L8
.L19:
	ldr	r3, .L42+4
	ldr	r3, [r3]
	and	r3, r3, #536870912
	cmp	r3, #536870912
	beq	.L20
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L21
	ldr	r3, .L42+4
	ldr	r3, [r3, #136]
	and	r2, r3, #1879048192
	mov	r3, #1879048192
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	clz	r3, r3
	lsr	r3, r2, r3
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	movw	r3, #32704
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	clz	r3, r3
	lsls	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #20]
	mov	r3, #251658240
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	clz	r3, r3
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	mov	r3, #1879048192
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	clz	r3, r3
	ldr	r1, [r7, #104]
	lsl	r3, r1, r3
	ldr	r1, .L42+4
	orrs	r3, r3, r2
	str	r3, [r1, #136]
	ldr	r3, .L42+4
	ldr	r3, [r3, #140]
	bic	r2, r3, #7936
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	subs	r3, r3, #1
	lsls	r3, r3, #8
	ldr	r1, .L42+4
	orrs	r3, r3, r2
	str	r3, [r1, #140]
.L21:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L26
	ldr	r3, .L42+4
	ldr	r3, [r3, #136]
	and	r2, r3, #251658240
	mov	r3, #251658240
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
	lsr	r3, r2, r3
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	movw	r3, #32704
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
	lsls	r2, r2, r3
	mov	r3, #251658240
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
	ldr	r1, [r7, #104]
	lsl	r3, r1, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #24]
	mov	r3, #1879048192
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	clz	r3, r3
	lsl	r3, r1, r3
	ldr	r1, .L42+4
	orrs	r3, r3, r2
	str	r3, [r1, #136]
	ldr	r3, .L42+4
	ldr	r3, [r3, #140]
	bic	r2, r3, #196608
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	ldr	r1, .L42+4
	orrs	r3, r3, r2
	str	r3, [r1, #140]
.L26:
	ldr	r3, .L42+8
	movs	r2, #1
	str	r2, [r3]
	bl	HAL_GetTick
	str	r0, [r7, #108]
	b	.L31
.L32:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #108]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L31
	movs	r3, #3
	b	.L8
.L43:
	.align	2
.L42:
	.word	1111949416
	.word	1073887232
	.word	1111949424
.L31:
	ldr	r3, .L44
	ldr	r3, [r3]
	and	r3, r3, #536870912
	cmp	r3, #536870912
	bne	.L32
.L18:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L33
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L44
	ldr	r3, [r3, #64]
	ldr	r2, .L44
	orr	r3, r3, #268435456
	str	r3, [r2, #64]
	ldr	r3, .L44
	ldr	r3, [r3, #64]
	and	r3, r3, #268435456
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, .L44+4
	ldr	r3, [r3]
	ldr	r2, .L44+4
	orr	r3, r3, #256
	str	r3, [r2]
	bl	HAL_GetTick
	str	r0, [r7, #108]
	b	.L34
.L35:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #108]
	subs	r3, r2, r3
	cmp	r3, #2
	bls	.L34
	movs	r3, #3
	b	.L8
.L34:
	ldr	r3, .L44+4
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L35
	ldr	r3, .L44
	ldr	r2, [r3, #112]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	eors	r3, r3, r2
	and	r3, r3, #768
	cmp	r3, #0
	beq	.L33
	ldr	r3, .L44
	ldr	r3, [r3, #112]
	bic	r3, r3, #768
	str	r3, [r7, #104]
	ldr	r3, .L44+8
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, .L44+8
	movs	r2, #0
	str	r2, [r3]
	ldr	r2, .L44
	ldr	r3, [r7, #104]
	str	r3, [r2, #112]
	ldr	r3, [r7, #104]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L36
	bl	HAL_GetTick
	str	r0, [r7, #108]
	b	.L37
.L38:
	bl	HAL_GetTick
	mov	r2, r0
	ldr	r3, [r7, #108]
	subs	r3, r2, r3
	movw	r2, #5000
	cmp	r3, r2
	bls	.L37
	movs	r3, #3
	b	.L8
.L37:
	ldr	r3, .L44
	ldr	r3, [r3, #112]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L38
.L36:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	and	r3, r3, #768
	cmp	r3, #768
	bne	.L39
	ldr	r3, .L44
	ldr	r3, [r3, #8]
	bic	r2, r3, #2031616
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	bic	r3, r3, #-268435456
	bic	r3, r3, #768
	ldr	r1, .L44
	orrs	r3, r3, r2
	str	r3, [r1, #8]
	b	.L40
.L39:
	ldr	r3, .L44
	ldr	r3, [r3, #8]
	ldr	r2, .L44
	bic	r3, r3, #2031616
	str	r3, [r2, #8]
.L40:
	ldr	r3, .L44
	ldr	r2, [r3, #112]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	ubfx	r3, r3, #0, #12
	ldr	r1, .L44
	orrs	r3, r3, r2
	str	r3, [r1, #112]
.L33:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	ldr	r3, .L44+12
	str	r2, [r3]
.L41:
	movs	r3, #0
.L8:
	mov	r0, r3
	adds	r7, r7, #112
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	2
.L44:
	.word	1073887232
	.word	1073770496
	.word	1111952960
	.word	1111953888
	.size	HAL_RCCEx_PeriphCLKConfig, .-HAL_RCCEx_PeriphCLKConfig
	.section	.text.HAL_RCCEx_GetPeriphCLKConfig,"ax",%progbits
	.align	1
	.global	HAL_RCCEx_GetPeriphCLKConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_RCCEx_GetPeriphCLKConfig, %function
HAL_RCCEx_GetPeriphCLKConfig:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #84
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #63
	str	r2, [r3]
	ldr	r3, .L58
	ldr	r2, [r3, #132]
	movw	r3, #32704
	ands	r3, r3, r2
	movw	r2, #32704
	str	r2, [r7, #16]
	ldr	r2, [r7, #16]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r2, r2
@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [r7, #12]
	ldr	r2, [r7, #12]
	clz	r2, r2
	lsr	r2, r3, r2
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, .L58
	ldr	r3, [r3, #132]
	and	r2, r3, #1879048192
	mov	r3, #1879048192
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
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, .L58
	ldr	r3, [r3, #132]
	and	r2, r3, #251658240
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
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, .L58
	ldr	r2, [r3, #136]
	movw	r3, #32704
	ands	r3, r3, r2
	movw	r2, #32704
	str	r2, [r7, #40]
	ldr	r2, [r7, #40]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r2, r2
@ 0 "" 2
	.thumb
	.syntax unified
	str	r2, [r7, #36]
	ldr	r2, [r7, #36]
	clz	r2, r2
	lsr	r2, r3, r2
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, .L58
	ldr	r3, [r3, #136]
	and	r2, r3, #1879048192
	mov	r3, #1879048192
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
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, .L58
	ldr	r3, [r3, #136]
	and	r2, r3, #251658240
	mov	r3, #251658240
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	clz	r3, r3
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, .L58
	ldr	r3, [r3, #140]
	and	r2, r3, #31
	movs	r3, #31
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	clz	r3, r3
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, .L58
	ldr	r3, [r3, #140]
	and	r2, r3, #7936
	mov	r3, #7936
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	.syntax unified
@ 531 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	rbit r3, r3
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	clz	r3, r3
	lsrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, .L58
	ldr	r3, [r3, #140]
	and	r2, r3, #196608
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, .L58
	ldr	r3, [r3, #8]
	and	r3, r3, #2031616
	str	r3, [r7, #76]
	ldr	r3, .L58
	ldr	r3, [r3, #112]
	and	r2, r3, #768
	ldr	r3, [r7, #76]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, .L58
	ldr	r3, [r3, #140]
	and	r3, r3, #16777216
	cmp	r3, #0
	bne	.L55
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #44]
	b	.L57
.L55:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #44]
.L57:
	nop
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L59:
	.align	2
.L58:
	.word	1073887232
	.size	HAL_RCCEx_GetPeriphCLKConfig, .-HAL_RCCEx_GetPeriphCLKConfig
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
