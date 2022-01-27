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
	.file	"se3_common.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.global	se3_magic
	.section	.rodata.se3_magic,"a"
	.align	2
	.type	se3_magic, %object
	.size	se3_magic, 32
se3_magic:
	.ascii	"<\253x\266\002dG\3510&\324\037\255h\"'A\2442\272\276"
	.ascii	"T\203\356\253kb\316\360\\\007\221"
	.section	.text.se3_req_len_data,"ax",%progbits
	.align	1
	.global	se3_req_len_data
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_req_len_data, %function
se3_req_len_data:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	cmp	r3, #15
	bhi	.L2
	movs	r3, #0
	b	.L3
.L2:
	ldrh	r3, [r7, #6]
	lsrs	r3, r3, #9
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #6]	@ movhi
	ubfx	r3, r3, #0, #9
	uxth	r3, r3
	cmp	r3, #0
	beq	.L4
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L4:
	ldrh	r3, [r7, #14]
	cmp	r3, #0
	bne	.L5
	movs	r3, #0
	b	.L3
.L5:
	ldrh	r3, [r7, #14]	@ movhi
	subs	r3, r3, #1
	uxth	r3, r3
	lsls	r3, r3, #2
	uxth	r3, r3
	ldrh	r2, [r7, #6]	@ movhi
	subs	r3, r2, r3
	uxth	r3, r3
	subs	r3, r3, #16
	uxth	r3, r3
.L3:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	se3_req_len_data, .-se3_req_len_data
	.section	.text.se3_req_len_data_and_headers,"ax",%progbits
	.align	1
	.global	se3_req_len_data_and_headers
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_req_len_data_and_headers, %function
se3_req_len_data_and_headers:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	cmp	r3, #496
	bhi	.L7
	ldrh	r3, [r7, #6]	@ movhi
	adds	r3, r3, #16
	uxth	r3, r3
	b	.L8
.L7:
	ldrh	r3, [r7, #6]	@ movhi
	sub	r3, r3, #496
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	lsrs	r3, r3, #2
	ldr	r2, .L10
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #6]
	lsrs	r3, r2, #2
	ldr	r1, .L10
	umull	r1, r3, r1, r3
	lsrs	r1, r3, #5
	mov	r3, r1
	lsls	r3, r3, #7
	subs	r3, r3, r1
	lsls	r3, r3, #2
	subs	r3, r2, r3
	uxth	r3, r3
	cmp	r3, #0
	beq	.L9
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L9:
	ldrh	r3, [r7, #14]	@ movhi
	lsls	r3, r3, #2
	uxth	r2, r3
	ldrh	r3, [r7, #6]	@ movhi
	add	r3, r3, r2
	uxth	r3, r3
	add	r3, r3, #512
	uxth	r3, r3
.L8:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L11:
	.align	2
.L10:
	.word	1082196485
	.size	se3_req_len_data_and_headers, .-se3_req_len_data_and_headers
	.section	.text.se3_resp_len_data,"ax",%progbits
	.align	1
	.global	se3_resp_len_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_resp_len_data, %function
se3_resp_len_data:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	cmp	r3, #15
	bhi	.L13
	movs	r3, #0
	b	.L14
.L13:
	ldrh	r3, [r7, #6]
	lsrs	r3, r3, #9
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #6]	@ movhi
	ubfx	r3, r3, #0, #9
	uxth	r3, r3
	cmp	r3, #0
	beq	.L15
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L15:
	ldrh	r3, [r7, #14]
	cmp	r3, #0
	bne	.L16
	movs	r3, #0
	b	.L14
.L16:
	ldrh	r3, [r7, #14]	@ movhi
	subs	r3, r3, #1
	uxth	r3, r3
	lsls	r3, r3, #2
	uxth	r3, r3
	ldrh	r2, [r7, #6]	@ movhi
	subs	r3, r2, r3
	uxth	r3, r3
	subs	r3, r3, #16
	uxth	r3, r3
.L14:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	se3_resp_len_data, .-se3_resp_len_data
	.section	.text.se3_resp_len_data_and_headers,"ax",%progbits
	.align	1
	.global	se3_resp_len_data_and_headers
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_resp_len_data_and_headers, %function
se3_resp_len_data_and_headers:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	cmp	r3, #496
	bhi	.L18
	ldrh	r3, [r7, #6]	@ movhi
	adds	r3, r3, #16
	uxth	r3, r3
	b	.L19
.L18:
	ldrh	r3, [r7, #6]	@ movhi
	sub	r3, r3, #496
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	lsrs	r3, r3, #2
	ldr	r2, .L21
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #6]
	lsrs	r3, r2, #2
	ldr	r1, .L21
	umull	r1, r3, r1, r3
	lsrs	r1, r3, #5
	mov	r3, r1
	lsls	r3, r3, #7
	subs	r3, r3, r1
	lsls	r3, r3, #2
	subs	r3, r2, r3
	uxth	r3, r3
	cmp	r3, #0
	beq	.L20
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L20:
	ldrh	r3, [r7, #14]	@ movhi
	lsls	r3, r3, #2
	uxth	r2, r3
	ldrh	r3, [r7, #6]	@ movhi
	add	r3, r3, r2
	uxth	r3, r3
	add	r3, r3, #512
	uxth	r3, r3
.L19:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L22:
	.align	2
.L21:
	.word	1082196485
	.size	se3_resp_len_data_and_headers, .-se3_resp_len_data_and_headers
	.section	.text.se3_nblocks,"ax",%progbits
	.align	1
	.global	se3_nblocks
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_nblocks, %function
se3_nblocks:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	lsrs	r3, r3, #9
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #6]	@ movhi
	ubfx	r3, r3, #0, #9
	uxth	r3, r3
	cmp	r3, #0
	beq	.L24
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L24:
	ldrh	r3, [r7, #14]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	se3_nblocks, .-se3_nblocks
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
