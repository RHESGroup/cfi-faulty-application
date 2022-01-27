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
	.file	"se3_core_time.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	now,8,8
	.comm	now_initialized,1,1
	.global	flag
	.section	.data.flag,"aw"
	.align	2
	.type	flag, %object
	.size	flag, 4
flag:
	.word	1
	.section	.text.se3_time_init,"ax",%progbits
	.align	1
	.global	se3_time_init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_time_init, %function
se3_time_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r1, .L2+4
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L3:
	.align	2
.L2:
	.word	now_initialized
	.word	now
	.size	se3_time_init, .-se3_time_init
	.section	.text.se3_time_get,"ax",%progbits
	.align	1
	.global	se3_time_get
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_time_get, %function
se3_time_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L6
	ldrd	r2, [r3]
	mov	r0, r2
	mov	r1, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L7:
	.align	2
.L6:
	.word	now
	.size	se3_time_get, .-se3_time_get
	.section	.text.se3_time_set,"ax",%progbits
	.align	1
	.global	se3_time_set
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_time_set, %function
se3_time_set:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	strd	r0, [r7]
	ldr	r1, .L9
	ldrd	r2, [r7]
	strd	r2, [r1]
	ldr	r3, .L9+4
	movs	r2, #1
	strb	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L10:
	.align	2
.L9:
	.word	now
	.word	now_initialized
	.size	se3_time_set, .-se3_time_set
	.section	.text.se3_time_inc,"ax",%progbits
	.align	1
	.global	se3_time_inc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_time_inc, %function
se3_time_inc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L14
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L14
	str	r3, [r2]
	ldr	r3, .L14
	ldr	r3, [r3]
	cmp	r3, #1000
	bne	.L13
	ldr	r3, .L14+4
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L14+8
	ldrd	r2, [r3]
	adds	r0, r2, #1
	adc	r1, r3, #0
	ldr	r3, .L14+8
	strd	r0, [r3]
	ldr	r3, .L14
	movs	r2, #0
	str	r2, [r3]
.L13:
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L15:
	.align	2
.L14:
	.word	ms.5396
	.word	flag
	.word	now
	.size	se3_time_inc, .-se3_time_inc
	.section	.text.get_now_initialized,"ax",%progbits
	.align	1
	.global	get_now_initialized
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	get_now_initialized, %function
get_now_initialized:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L18
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L19:
	.align	2
.L18:
	.word	now_initialized
	.size	get_now_initialized, .-get_now_initialized
	.section	.bss.ms.5396,"aw",%nobits
	.align	2
	.type	ms.5396, %object
	.size	ms.5396, 4
ms.5396:
	.space	4
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
