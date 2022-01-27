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
	.file	"se3_memory.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.section	.text.se3_mem_reset,"ax",%progbits
	.align	1
	.global	se3_mem_reset
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_mem_reset, %function
se3_mem_reset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #5
	mov	r2, r3
	movs	r1, #0
	bl	memset
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	cmp	r2, r3
	bcc	.L3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldrh	r2, [r7, #10]
	strh	r2, [r3]	@ unaligned
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #2
	ldrh	r2, [r7, #10]
	strh	r2, [r3]	@ unaligned
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_mem_reset, .-se3_mem_reset
	.section	.text.se3_mem_init,"ax",%progbits
	.align	1
	.global	se3_mem_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_mem_init, %function
se3_mem_init:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	lsrs	r3, r3, #5
	strh	r3, [r7, #22]	@ movhi
	ldrh	r2, [r7, #22]
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #8]
	ldr	r0, [r7, #12]
	bl	se3_mem_reset
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_mem_init, .-se3_mem_init
	.section	.text.se3_mem_compact,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_mem_compact, %function
se3_mem_compact:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #19]
	b	.L6
.L9:
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	sxth	r3, r3
	cmp	r3, #0
	blt	.L11
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #16]	@ movhi
	ldrh	r3, [r7, #16]
	lsls	r3, r3, #5
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	movs	r3, #1
	strb	r3, [r7, #19]
.L6:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L9
	b	.L8
.L11:
	nop
.L8:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L12
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	lsrs	r3, r3, #5
	uxth	r3, r3
	strh	r3, [r7, #16]	@ movhi
	ldrh	r2, [r7, #16]
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ unaligned
.L12:
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	se3_mem_compact, .-se3_mem_compact
	.section	.text.se3_mem_defrag,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_mem_defrag, %function
se3_mem_defrag:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #5
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	b	.L14
.L17:
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]
	sxth	r3, r3
	cmp	r3, #0
	bge	.L28
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #5
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
.L14:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L17
	b	.L16
.L28:
	nop
.L16:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L18
	ldr	r3, [r7, #28]
	b	.L27
.L18:
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #5
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #24]
	b	.L20
.L22:
	ldr	r3, [r7, #24]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]
	and	r3, r3, #32768
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #17]
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L21
	ldrh	r3, [r7, #14]
	lsls	r3, r3, #5
	mov	r2, r3
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #28]
	bl	memmove
	ldrh	r3, [r7, #14]
	lsls	r3, r3, #5
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
.L21:
	ldrh	r3, [r7, #14]
	lsls	r3, r3, #5
	mov	r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #24]
.L20:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L22
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L23
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	lsrs	r3, r3, #5
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldrh	r2, [r7, #10]
	ldr	r3, [r7, #28]
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]
	ubfx	r3, r3, #0, #15
	uxth	r3, r3
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldrh	r2, [r7, #12]
	strh	r2, [r3]	@ unaligned
.L23:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	b	.L24
.L26:
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]
	sxth	r3, r3
	cmp	r3, #0
	bge	.L25
	ldrh	r3, [r7, #12]
	ubfx	r3, r3, #0, #15
	strh	r3, [r7, #18]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldrh	r3, [r7, #18]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	str	r2, [r3]
.L25:
	ldr	r3, [r7, #24]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]
	lsls	r3, r3, #5
	mov	r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #24]
.L24:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L26
	ldr	r3, [r7, #28]
.L27:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_mem_defrag, .-se3_mem_defrag
	.section	.text.se3_mem_alloc,"ax",%progbits
	.align	1
	.global	se3_mem_alloc
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_mem_alloc, %function
se3_mem_alloc:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #5
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7]
	adds	r3, r3, #4
	str	r3, [r7]
	ldr	r3, [r7]
	lsrs	r3, r3, #5
	uxth	r3, r3
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7]
	and	r3, r3, #31
	cmp	r3, #0
	beq	.L30
	ldrh	r3, [r7, #12]
	adds	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r7, #12]	@ movhi
.L30:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldrh	r2, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bls	.L31
	mov	r3, #-1
	b	.L47
.L31:
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L33
.L36:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L48
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L33:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	bcc	.L36
	b	.L35
.L48:
	nop
.L35:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	bcc	.L38
	mov	r3, #-1
	b	.L47
.L44:
	ldr	r3, [r7, #36]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #16]	@ movhi
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #18]	@ movhi
	ldrh	r3, [r7, #18]
	and	r3, r3, #32768
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	strb	r3, [r7, #27]
	ldrh	r3, [r7, #16]
	cmp	r3, #0
	bne	.L39
	mov	r3, #-1
	b	.L47
.L39:
	ldrb	r3, [r7, #27]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L40
	ldrh	r2, [r7, #16]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L41
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #36]
	bl	se3_mem_compact
.L41:
	ldrh	r2, [r7, #16]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	beq	.L49
	ldrh	r2, [r7, #16]
	ldrh	r3, [r7, #12]
	cmp	r2, r3
	bls	.L40
	ldrh	r3, [r7, #12]
	lsls	r3, r3, #5
	mov	r2, r3
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldrh	r2, [r7, #16]
	ldrh	r3, [r7, #12]
	subs	r3, r2, r3
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]
	ldr	r3, [r7, #20]
	strh	r2, [r3]	@ unaligned
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	ldrh	r2, [r7, #14]
	strh	r2, [r3]	@ unaligned
	b	.L43
.L40:
	ldrh	r3, [r7, #16]
	lsls	r3, r3, #5
	mov	r2, r3
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
.L38:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L44
	b	.L43
.L49:
	nop
.L43:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L45
	ldr	r0, [r7, #4]
	bl	se3_mem_defrag
	str	r0, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L46
	ldr	r3, [r7, #36]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #16]	@ movhi
	ldrh	r3, [r7, #12]
	lsls	r3, r3, #5
	mov	r2, r3
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldrh	r2, [r7, #16]
	ldrh	r3, [r7, #12]
	subs	r3, r2, r3
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r2, [r7, #14]
	ldr	r3, [r7, #20]
	strh	r2, [r3]	@ unaligned
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	ldrh	r2, [r7, #14]
	strh	r2, [r3]	@ unaligned
	b	.L45
.L46:
	mov	r3, #-1
	b	.L47
.L45:
	ldrh	r2, [r7, #12]
	ldr	r3, [r7, #36]
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #32]
	uxth	r3, r3
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	ldrh	r2, [r7, #14]
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldrh	r2, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #32]
.L47:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_mem_alloc, .-se3_mem_alloc
	.section	.text.se3_mem_ptr,"ax",%progbits
	.align	1
	.global	se3_mem_ptr
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_mem_ptr, %function
se3_mem_ptr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L51
	movs	r3, #0
	b	.L52
.L51:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L53
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L54
	movs	r3, #0
	b	.L52
.L54:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	adds	r3, r3, #4
	b	.L52
.L53:
	movs	r3, #0
.L52:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	se3_mem_ptr, .-se3_mem_ptr
	.section	.text.se3_mem_free,"ax",%progbits
	.align	1
	.global	se3_mem_free
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_mem_free, %function
se3_mem_free:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L59
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L55
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #8]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]
	ubfx	r3, r3, #0, #15
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrh	r2, [r7, #10]
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldrh	r2, [r7, #8]
	subs	r2, r3, r2
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	b	.L55
.L59:
	nop
.L55:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	se3_mem_free, .-se3_mem_free
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
