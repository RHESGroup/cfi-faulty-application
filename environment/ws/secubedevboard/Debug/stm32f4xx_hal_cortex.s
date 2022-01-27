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
	.file	"stm32f4xx_hal_cortex.c"
	.text
	.section	.text.NVIC_SetPriorityGrouping,"ax",%progbits
	.align	1
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_SetPriorityGrouping, %function
NVIC_SetPriorityGrouping:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	and	r3, r3, #7
	str	r3, [r7, #12]
	ldr	r3, .L2
	ldr	r3, [r3, #12]
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	movw	r3, #63743
	ands	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	lsls	r2, r3, #8
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	orr	r3, r3, #100139008
	orr	r3, r3, #131072
	str	r3, [r7, #8]
	ldr	r2, .L2
	ldr	r3, [r7, #8]
	str	r3, [r2, #12]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L3:
	.align	2
.L2:
	.word	-536810240
	.size	NVIC_SetPriorityGrouping, .-NVIC_SetPriorityGrouping
	.section	.text.NVIC_GetPriorityGrouping,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_GetPriorityGrouping, %function
NVIC_GetPriorityGrouping:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L6
	ldr	r3, [r3, #12]
	lsrs	r3, r3, #8
	and	r3, r3, #7
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L7:
	.align	2
.L6:
	.word	-536810240
	.size	NVIC_GetPriorityGrouping, .-NVIC_GetPriorityGrouping
	.section	.text.NVIC_EnableIRQ,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_EnableIRQ, %function
NVIC_EnableIRQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r2, r3, #31
	ldr	r1, .L9
	ldrsb	r3, [r7, #7]
	lsrs	r3, r3, #5
	movs	r0, #1
	lsl	r2, r0, r2
	str	r2, [r1, r3, lsl #2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L10:
	.align	2
.L9:
	.word	-536813312
	.size	NVIC_EnableIRQ, .-NVIC_EnableIRQ
	.section	.text.NVIC_DisableIRQ,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_DisableIRQ, %function
NVIC_DisableIRQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r2, r3, #31
	ldr	r1, .L12
	ldrsb	r3, [r7, #7]
	lsrs	r3, r3, #5
	movs	r0, #1
	lsl	r2, r0, r2
	adds	r3, r3, #32
	str	r2, [r1, r3, lsl #2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L13:
	.align	2
.L12:
	.word	-536813312
	.size	NVIC_DisableIRQ, .-NVIC_DisableIRQ
	.section	.text.NVIC_GetPendingIRQ,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_GetPendingIRQ, %function
NVIC_GetPendingIRQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L16
	ldrsb	r3, [r7, #7]
	lsrs	r3, r3, #5
	adds	r3, r3, #64
	ldr	r2, [r2, r3, lsl #2]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r3, r3, #31
	lsr	r3, r2, r3
	and	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L17:
	.align	2
.L16:
	.word	-536813312
	.size	NVIC_GetPendingIRQ, .-NVIC_GetPendingIRQ
	.section	.text.NVIC_SetPendingIRQ,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_SetPendingIRQ, %function
NVIC_SetPendingIRQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r2, r3, #31
	ldr	r1, .L19
	ldrsb	r3, [r7, #7]
	lsrs	r3, r3, #5
	movs	r0, #1
	lsl	r2, r0, r2
	adds	r3, r3, #64
	str	r2, [r1, r3, lsl #2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L20:
	.align	2
.L19:
	.word	-536813312
	.size	NVIC_SetPendingIRQ, .-NVIC_SetPendingIRQ
	.section	.text.NVIC_ClearPendingIRQ,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_ClearPendingIRQ, %function
NVIC_ClearPendingIRQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r2, r3, #31
	ldr	r1, .L22
	ldrsb	r3, [r7, #7]
	lsrs	r3, r3, #5
	movs	r0, #1
	lsl	r2, r0, r2
	adds	r3, r3, #96
	str	r2, [r1, r3, lsl #2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L23:
	.align	2
.L22:
	.word	-536813312
	.size	NVIC_ClearPendingIRQ, .-NVIC_ClearPendingIRQ
	.section	.text.NVIC_GetActive,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_GetActive, %function
NVIC_GetActive:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L26
	ldrsb	r3, [r7, #7]
	lsrs	r3, r3, #5
	adds	r3, r3, #128
	ldr	r2, [r2, r3, lsl #2]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r3, r3, #31
	lsr	r3, r2, r3
	and	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L27:
	.align	2
.L26:
	.word	-536813312
	.size	NVIC_GetActive, .-NVIC_GetActive
	.section	.text.NVIC_SetPriority,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_SetPriority, %function
NVIC_SetPriority:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7]
	strb	r3, [r7, #7]
	ldrsb	r3, [r7, #7]
	cmp	r3, #0
	bge	.L29
	ldr	r3, [r7]
	uxtb	r2, r3
	ldr	r1, .L32
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r3, r3, #15
	subs	r3, r3, #4
	lsls	r2, r2, #4
	uxtb	r2, r2
	add	r3, r3, r1
	strb	r2, [r3, #24]
	b	.L31
.L29:
	ldr	r3, [r7]
	uxtb	r2, r3
	ldr	r1, .L32+4
	ldrsb	r3, [r7, #7]
	lsls	r2, r2, #4
	uxtb	r2, r2
	add	r3, r3, r1
	strb	r2, [r3, #768]
.L31:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L33:
	.align	2
.L32:
	.word	-536810240
	.word	-536813312
	.size	NVIC_SetPriority, .-NVIC_SetPriority
	.section	.text.NVIC_GetPriority,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_GetPriority, %function
NVIC_GetPriority:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrsb	r3, [r7, #7]
	cmp	r3, #0
	bge	.L35
	ldr	r2, .L37
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	and	r3, r3, #15
	subs	r3, r3, #4
	add	r3, r3, r2
	ldrb	r3, [r3, #24]
	uxtb	r3, r3
	lsrs	r3, r3, #4
	uxtb	r3, r3
	b	.L36
.L35:
	ldr	r2, .L37+4
	ldrsb	r3, [r7, #7]
	add	r3, r3, r2
	ldrb	r3, [r3, #768]
	uxtb	r3, r3
	lsrs	r3, r3, #4
	uxtb	r3, r3
.L36:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L38:
	.align	2
.L37:
	.word	-536810240
	.word	-536813312
	.size	NVIC_GetPriority, .-NVIC_GetPriority
	.section	.text.NVIC_EncodePriority,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_EncodePriority, %function
NVIC_EncodePriority:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	and	r3, r3, #7
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	rsb	r3, r3, #7
	cmp	r3, #4
	it	cs
	movcs	r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	cmp	r3, #6
	bls	.L40
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	b	.L41
.L40:
	movs	r3, #0
.L41:
	str	r3, [r7, #20]
	mov	r2, #-1
	ldr	r3, [r7, #24]
	lsl	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #8]
	ands	r2, r2, r3
	ldr	r3, [r7, #20]
	lsls	r2, r2, r3
	mov	r1, #-1
	ldr	r3, [r7, #20]
	lsl	r3, r1, r3
	mvns	r1, r3
	ldr	r3, [r7, #4]
	ands	r3, r3, r1
	orrs	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	NVIC_EncodePriority, .-NVIC_EncodePriority
	.section	.text.NVIC_DecodePriority,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_DecodePriority, %function
NVIC_DecodePriority:
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
	ldr	r3, [r7, #8]
	and	r3, r3, #7
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	rsb	r3, r3, #7
	cmp	r3, #4
	it	cs
	movcs	r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	cmp	r3, #6
	bls	.L44
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	b	.L45
.L44:
	movs	r3, #0
.L45:
	str	r3, [r7, #20]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	lsrs	r2, r2, r3
	mov	r1, #-1
	ldr	r3, [r7, #24]
	lsl	r3, r1, r3
	mvns	r3, r3
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	mov	r2, #-1
	ldr	r3, [r7, #20]
	lsl	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #12]
	ands	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	nop
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	NVIC_DecodePriority, .-NVIC_DecodePriority
	.section	.text.NVIC_SystemReset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	NVIC_SystemReset, %function
NVIC_SystemReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	.syntax unified
@ 429 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	ldr	r3, .L48
	ldr	r3, [r3, #12]
	and	r2, r3, #1792
	ldr	r1, .L48
	ldr	r3, .L48+4
	orrs	r3, r3, r2
	str	r3, [r1, #12]
	.syntax unified
@ 429 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
	nop
.L47:
	.syntax unified
@ 375 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	nop
@ 0 "" 2
	.thumb
	.syntax unified
	nop
	b	.L47
.L49:
	.align	2
.L48:
	.word	-536810240
	.word	100270084
	.size	NVIC_SystemReset, .-NVIC_SystemReset
	.section	.text.SysTick_Config,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SysTick_Config, %function
SysTick_Config:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	cmp	r3, #16777216
	bcc	.L51
	movs	r3, #1
	b	.L52
.L51:
	ldr	r2, .L53
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r2, #4]
	movs	r1, #15
	mov	r0, #-1
	bl	NVIC_SetPriority
	ldr	r3, .L53
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, .L53
	movs	r2, #7
	str	r2, [r3]
	movs	r3, #0
.L52:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L54:
	.align	2
.L53:
	.word	-536813552
	.size	SysTick_Config, .-SysTick_Config
	.section	.text.HAL_NVIC_SetPriorityGrouping,"ax",%progbits
	.align	1
	.global	HAL_NVIC_SetPriorityGrouping
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NVIC_SetPriorityGrouping, %function
HAL_NVIC_SetPriorityGrouping:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	NVIC_SetPriorityGrouping
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NVIC_SetPriorityGrouping, .-HAL_NVIC_SetPriorityGrouping
	.section	.text.HAL_NVIC_SetPriority,"ax",%progbits
	.align	1
	.global	HAL_NVIC_SetPriority
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NVIC_SetPriority, %function
HAL_NVIC_SetPriority:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #20]
	bl	NVIC_GetPriorityGrouping
	str	r0, [r7, #20]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #20]
	bl	NVIC_EncodePriority
	mov	r2, r0
	ldrsb	r3, [r7, #15]
	mov	r1, r2
	mov	r0, r3
	bl	NVIC_SetPriority
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NVIC_SetPriority, .-HAL_NVIC_SetPriority
	.section	.text.HAL_NVIC_EnableIRQ,"ax",%progbits
	.align	1
	.global	HAL_NVIC_EnableIRQ
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NVIC_EnableIRQ, %function
HAL_NVIC_EnableIRQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrsb	r3, [r7, #7]
	mov	r0, r3
	bl	NVIC_EnableIRQ
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NVIC_EnableIRQ, .-HAL_NVIC_EnableIRQ
	.section	.text.HAL_NVIC_DisableIRQ,"ax",%progbits
	.align	1
	.global	HAL_NVIC_DisableIRQ
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NVIC_DisableIRQ, %function
HAL_NVIC_DisableIRQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrsb	r3, [r7, #7]
	mov	r0, r3
	bl	NVIC_DisableIRQ
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NVIC_DisableIRQ, .-HAL_NVIC_DisableIRQ
	.section	.text.HAL_NVIC_SystemReset,"ax",%progbits
	.align	1
	.global	HAL_NVIC_SystemReset
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NVIC_SystemReset, %function
HAL_NVIC_SystemReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	NVIC_SystemReset
	nop
	pop	{r7, pc}
	.size	HAL_NVIC_SystemReset, .-HAL_NVIC_SystemReset
	.section	.text.HAL_SYSTICK_Config,"ax",%progbits
	.align	1
	.global	HAL_SYSTICK_Config
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SYSTICK_Config, %function
HAL_SYSTICK_Config:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	SysTick_Config
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_SYSTICK_Config, .-HAL_SYSTICK_Config
	.section	.text.HAL_MPU_ConfigRegion,"ax",%progbits
	.align	1
	.global	HAL_MPU_ConfigRegion
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_MPU_ConfigRegion, %function
HAL_MPU_ConfigRegion:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldr	r3, .L66
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L63
	ldr	r2, .L66
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r2, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	lsls	r2, r3, #28
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	lsls	r3, r3, #24
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	lsls	r3, r3, #19
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	lsls	r3, r3, #18
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #14]	@ zero_extendqisi2
	lsls	r3, r3, #17
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #15]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	lsls	r3, r3, #1
	orrs	r3, r3, r2
	ldr	r2, [r7, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r2, .L66
	orrs	r3, r3, r1
	str	r3, [r2, #16]
	b	.L65
.L63:
	ldr	r3, .L66
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L66
	movs	r2, #0
	str	r2, [r3, #16]
.L65:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L67:
	.align	2
.L66:
	.word	-536810096
	.size	HAL_MPU_ConfigRegion, .-HAL_MPU_ConfigRegion
	.section	.text.HAL_NVIC_GetPriorityGrouping,"ax",%progbits
	.align	1
	.global	HAL_NVIC_GetPriorityGrouping
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NVIC_GetPriorityGrouping, %function
HAL_NVIC_GetPriorityGrouping:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	NVIC_GetPriorityGrouping
	mov	r3, r0
	mov	r0, r3
	pop	{r7, pc}
	.size	HAL_NVIC_GetPriorityGrouping, .-HAL_NVIC_GetPriorityGrouping
	.section	.text.HAL_NVIC_GetPriority,"ax",%progbits
	.align	1
	.global	HAL_NVIC_GetPriority
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NVIC_GetPriority, %function
HAL_NVIC_GetPriority:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0
	strb	r3, [r7, #15]
	ldrsb	r3, [r7, #15]
	mov	r0, r3
	bl	NVIC_GetPriority
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	bl	NVIC_DecodePriority
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NVIC_GetPriority, .-HAL_NVIC_GetPriority
	.section	.text.HAL_NVIC_SetPendingIRQ,"ax",%progbits
	.align	1
	.global	HAL_NVIC_SetPendingIRQ
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NVIC_SetPendingIRQ, %function
HAL_NVIC_SetPendingIRQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrsb	r3, [r7, #7]
	mov	r0, r3
	bl	NVIC_SetPendingIRQ
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NVIC_SetPendingIRQ, .-HAL_NVIC_SetPendingIRQ
	.section	.text.HAL_NVIC_GetPendingIRQ,"ax",%progbits
	.align	1
	.global	HAL_NVIC_GetPendingIRQ
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NVIC_GetPendingIRQ, %function
HAL_NVIC_GetPendingIRQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrsb	r3, [r7, #7]
	mov	r0, r3
	bl	NVIC_GetPendingIRQ
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NVIC_GetPendingIRQ, .-HAL_NVIC_GetPendingIRQ
	.section	.text.HAL_NVIC_ClearPendingIRQ,"ax",%progbits
	.align	1
	.global	HAL_NVIC_ClearPendingIRQ
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NVIC_ClearPendingIRQ, %function
HAL_NVIC_ClearPendingIRQ:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrsb	r3, [r7, #7]
	mov	r0, r3
	bl	NVIC_ClearPendingIRQ
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NVIC_ClearPendingIRQ, .-HAL_NVIC_ClearPendingIRQ
	.section	.text.HAL_NVIC_GetActive,"ax",%progbits
	.align	1
	.global	HAL_NVIC_GetActive
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_NVIC_GetActive, %function
HAL_NVIC_GetActive:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrsb	r3, [r7, #7]
	mov	r0, r3
	bl	NVIC_GetActive
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	HAL_NVIC_GetActive, .-HAL_NVIC_GetActive
	.section	.text.HAL_SYSTICK_CLKSourceConfig,"ax",%progbits
	.align	1
	.global	HAL_SYSTICK_CLKSourceConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SYSTICK_CLKSourceConfig, %function
HAL_SYSTICK_CLKSourceConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #4
	bne	.L78
	ldr	r3, .L81
	ldr	r3, [r3]
	ldr	r2, .L81
	orr	r3, r3, #4
	str	r3, [r2]
	b	.L80
.L78:
	ldr	r3, .L81
	ldr	r3, [r3]
	ldr	r2, .L81
	bic	r3, r3, #4
	str	r3, [r2]
.L80:
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L82:
	.align	2
.L81:
	.word	-536813552
	.size	HAL_SYSTICK_CLKSourceConfig, .-HAL_SYSTICK_CLKSourceConfig
	.section	.text.HAL_SYSTICK_IRQHandler,"ax",%progbits
	.align	1
	.global	HAL_SYSTICK_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SYSTICK_IRQHandler, %function
HAL_SYSTICK_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	HAL_SYSTICK_Callback
	nop
	pop	{r7, pc}
	.size	HAL_SYSTICK_IRQHandler, .-HAL_SYSTICK_IRQHandler
	.section	.text.HAL_SYSTICK_Callback,"ax",%progbits
	.align	1
	.weak	HAL_SYSTICK_Callback
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	HAL_SYSTICK_Callback, %function
HAL_SYSTICK_Callback:
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
	.size	HAL_SYSTICK_Callback, .-HAL_SYSTICK_Callback
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
