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
	.file	"utility.c"
	.text
	.section	.text.split_string,"ax",%progbits
	.align	1
	.global	split_string
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	split_string, %function
split_string:
	@ args = 0, pretend = 0, frame = 1064
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	subw	sp, sp, #1068
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	mov	r0, r1
	mov	r1, r2
	adds	r3, r7, #3
	mov	r2, r0
	strb	r2, [r3]
	adds	r3, r7, #2
	mov	r2, r1
	strb	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #1052]
	movs	r3, #0
	str	r3, [r7, #1044]
	adds	r3, r7, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L2
	movs	r3, #0
	str	r3, [r7, #1060]
	b	.L3
.L5:
	ldr	r3, [r7, #1060]
	adds	r3, r3, #1
	str	r3, [r7, #1060]
.L3:
	ldr	r3, [r7, #1060]
	adds	r2, r7, #4
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L4
	ldr	r3, [r7, #1060]
	adds	r2, r7, #4
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L5
.L4:
	ldr	r3, [r7, #1060]
	str	r3, [r7, #1048]
	b	.L6
.L2:
	adds	r3, r7, #4
	ldr	r0, [r3]
	bl	strlen
	mov	r3, r0
	str	r3, [r7, #1048]
.L6:
	movs	r3, #0
	str	r3, [r7, #1060]
	b	.L7
.L9:
	ldr	r3, [r7, #1060]
	adds	r2, r7, #4
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r2, r7, #3
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L8
	ldr	r3, [r7, #1052]
	adds	r3, r3, #1
	str	r3, [r7, #1052]
.L8:
	ldr	r3, [r7, #1060]
	adds	r3, r3, #1
	str	r3, [r7, #1060]
.L7:
	ldr	r2, [r7, #1060]
	ldr	r3, [r7, #1048]
	cmp	r2, r3
	blt	.L9
	ldr	r3, [r7, #1052]
	lsls	r3, r3, #2
	adds	r3, r3, #1
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [r7, #1040]
	ldr	r3, [r7, #1040]
	cmp	r3, #0
	bne	.L10
	movs	r3, #0
	b	.L1
.L10:
	add	r3, r7, #12
	mov	r2, #-1
	str	r2, [r3]
	ldr	r3, [r7, #1052]
	adds	r2, r3, #1
	add	r3, r7, #12
	ldr	r1, [r7, #1048]
	str	r1, [r3, r2, lsl #2]
	movs	r3, #1
	str	r3, [r7, #1056]
	movs	r3, #0
	str	r3, [r7, #1060]
	b	.L12
.L14:
	ldr	r3, [r7, #1060]
	adds	r2, r7, #4
	ldr	r2, [r2]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r2, r7, #3
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L13
	add	r3, r7, #12
	ldr	r2, [r7, #1056]
	ldr	r1, [r7, #1060]
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #1056]
	adds	r3, r3, #1
	str	r3, [r7, #1056]
.L13:
	ldr	r3, [r7, #1060]
	adds	r3, r3, #1
	str	r3, [r7, #1060]
.L12:
	ldr	r2, [r7, #1060]
	ldr	r3, [r7, #1048]
	cmp	r2, r3
	blt	.L14
	movs	r3, #0
	str	r3, [r7, #1060]
	b	.L15
.L17:
	ldr	r3, [r7, #1060]
	adds	r2, r3, #1
	add	r3, r7, #12
	ldr	r2, [r3, r2, lsl #2]
	add	r3, r7, #12
	ldr	r1, [r7, #1060]
	ldr	r3, [r3, r1, lsl #2]
	subs	r3, r2, r3
	subs	r3, r3, #1
	str	r3, [r7, #1044]
	add	r3, r7, #12
	ldr	r2, [r7, #1060]
	ldr	r3, [r3, r2, lsl #2]
	adds	r3, r3, #1
	str	r3, [r7, #1036]
	ldr	r3, [r7, #1044]
	adds	r3, r3, #1
	mov	r1, r3
	ldr	r3, [r7, #1060]
	lsls	r3, r3, #2
	ldr	r2, [r7, #1040]
	adds	r4, r2, r3
	mov	r0, r1
	bl	malloc
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #1060]
	lsls	r3, r3, #2
	ldr	r2, [r7, #1040]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L16
	movs	r3, #0
	b	.L1
.L16:
	ldr	r3, [r7, #1060]
	lsls	r3, r3, #2
	ldr	r2, [r7, #1040]
	add	r3, r3, r2
	ldr	r0, [r3]
	ldr	r3, [r7, #1036]
	adds	r2, r7, #4
	ldr	r2, [r2]
	add	r3, r3, r2
	ldr	r2, [r7, #1044]
	mov	r1, r3
	bl	memcpy
	ldr	r3, [r7, #1060]
	lsls	r3, r3, #2
	ldr	r2, [r7, #1040]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #1044]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #1060]
	adds	r3, r3, #1
	str	r3, [r7, #1060]
.L15:
	ldr	r2, [r7, #1052]
	ldr	r3, [r7, #1060]
	cmp	r2, r3
	bge	.L17
	ldr	r3, [r7, #1040]
	cmp	r3, #0
	bne	.L18
	movs	r3, #0
	b	.L1
.L18:
.L1:
	mov	r0, r3
	addw	r7, r7, #1068
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	split_string, .-split_string
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Hex not valid\000"
	.section	.text.string_to_hex,"ax",%progbits
	.align	1
	.global	string_to_hex
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	string_to_hex, %function
string_to_hex:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #11]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L21
.L42:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	isalpha
	mov	r3, r0
	cmp	r3, #0
	beq	.L22
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	tolower
	mov	r1, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
.L22:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #54
	bhi	.L23
	adr	r2, .L25
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L25:
	.word	.L44+1
	.word	.L39+1
	.word	.L38+1
	.word	.L37+1
	.word	.L36+1
	.word	.L35+1
	.word	.L34+1
	.word	.L33+1
	.word	.L32+1
	.word	.L31+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L23+1
	.word	.L30+1
	.word	.L29+1
	.word	.L28+1
	.word	.L27+1
	.word	.L26+1
	.word	.L24+1
	.p2align 1
.L39:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #1
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L38:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #2
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L37:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #3
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L36:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #4
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L35:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #5
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L34:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #6
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L33:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #7
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L32:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #8
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L31:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #9
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L30:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #10
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L29:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #11
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L28:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #12
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L27:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #13
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L26:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #14
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L24:
	ldr	r3, [r7, #12]
	rsb	r3, r3, #1
	lsls	r3, r3, #2
	movs	r2, #15
	lsl	r3, r2, r3
	sxtb	r2, r3
	ldrsb	r3, [r7, #11]
	orrs	r3, r3, r2
	sxtb	r3, r3
	strb	r3, [r7, #11]
	b	.L41
.L23:
	ldr	r0, .L45
	bl	puts
	b	.L41
.L44:
	nop
.L41:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L21:
	ldr	r3, [r7, #12]
	cmp	r3, #1
	ble	.L42
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L46:
	.align	2
.L45:
	.word	.LC0
	.size	string_to_hex, .-string_to_hex
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
