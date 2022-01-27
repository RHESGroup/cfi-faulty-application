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
	.file	"se3_flash.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	flash,28,4
	.section	.text.flash_fill,"ax",%progbits
	.align	1
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	flash_fill, %function
flash_fill:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	movs	r3, #1
	strb	r3, [r7, #23]
	bl	HAL_FLASH_Unlock
	b	.L2
.L5:
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	mov	r3, #0
	ldr	r1, [r7, #12]
	movs	r0, #0
	bl	HAL_FLASH_Program
	mov	r3, r0
	cmp	r3, #0
	beq	.L3
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, .L7
	movs	r2, #1
	strh	r2, [r3]	@ movhi
	b	.L4
.L3:
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L5
.L4:
	bl	HAL_FLASH_Lock
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	hwerror
	.size	flash_fill, .-flash_fill
	.section	.text.flash_zero,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	flash_zero, %function
flash_zero:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #1
	strb	r3, [r7, #15]
	bl	HAL_FLASH_Unlock
	b	.L10
.L13:
	mov	r2, #0
	mov	r3, #0
	ldr	r1, [r7, #4]
	movs	r0, #0
	bl	HAL_FLASH_Program
	mov	r3, r0
	cmp	r3, #0
	beq	.L11
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, .L15
	movs	r2, #1
	strh	r2, [r3]	@ movhi
	b	.L12
.L11:
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L10:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L13
.L12:
	bl	HAL_FLASH_Lock
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L16:
	.align	2
.L15:
	.word	hwerror
	.size	flash_zero, .-flash_zero
	.section	.text.flash_program,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	flash_program, %function
flash_program:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #1
	strb	r3, [r7, #23]
	bl	HAL_FLASH_Unlock
	b	.L18
.L21:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	ldr	r1, [r7, #12]
	movs	r0, #0
	bl	HAL_FLASH_Program
	mov	r3, r0
	cmp	r3, #0
	beq	.L19
	movs	r3, #0
	strb	r3, [r7, #23]
	b	.L20
.L19:
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L18:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L21
.L20:
	bl	HAL_FLASH_Lock
	ldrb	r3, [r7, #23]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L22
	ldr	r3, .L24
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L22:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L25:
	.align	2
.L24:
	.word	hwerror
	.size	flash_program, .-flash_program
	.section	.text.flash_erase,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	flash_erase, %function
flash_erase:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	strb	r3, [r7, #39]
	bl	HAL_FLASH_Unlock
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #2
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	movs	r3, #1
	str	r3, [r7, #28]
	add	r2, r7, #12
	add	r3, r7, #16
	mov	r1, r2
	mov	r0, r3
	bl	HAL_FLASHEx_Erase
	mov	r3, r0
	strb	r3, [r7, #38]
	ldrb	r3, [r7, #38]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L27
	movs	r3, #0
	strb	r3, [r7, #39]
	ldr	r3, .L29
	movs	r2, #1
	strh	r2, [r3]	@ movhi
.L27:
	bl	HAL_FLASH_Lock
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L30:
	.align	2
.L29:
	.word	hwerror
	.size	flash_erase, .-flash_erase
	.section	.text.flash_swap,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	flash_swap, %function
flash_swap:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	ldr	r3, .L47
	ldr	r3, [r3]
	cmp	r3, #10
	bne	.L32
	movs	r3, #11
	str	r3, [r7, #44]
	ldr	r3, .L47+4
	str	r3, [r7, #40]
	b	.L33
.L32:
	ldr	r3, .L47
	ldr	r3, [r3]
	cmp	r3, #11
	bne	.L34
	movs	r3, #10
	str	r3, [r7, #44]
	ldr	r3, .L47+8
	str	r3, [r7, #40]
	b	.L33
.L34:
	movs	r3, #0
	b	.L46
.L33:
	ldr	r3, [r7, #40]
	adds	r3, r3, #32
	str	r3, [r7, #24]
	ldr	r0, [r7, #44]
	bl	flash_erase
	ldr	r3, .L47
	ldr	r3, [r3, #16]
	cmp	r3, #2016
	bcs	.L36
	ldr	r3, .L47
	ldr	r3, [r3, #16]
	rsb	r3, r3, #2016
	str	r3, [r7, #20]
	ldr	r3, .L47
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, .L47
	ldr	r3, [r3, #16]
	add	r3, r3, r2
	ldr	r1, [r7, #20]
	mov	r0, r3
	bl	flash_zero
.L36:
	movs	r3, #1
	strb	r3, [r7, #31]
	mov	r3, #2048
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	mov	r3, r7
	mov	r0, r3
	bl	se3_flash_it_init
	b	.L37
.L42:
	ldrb	r3, [r7, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L37
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r0, r2, r3
	ldr	r3, .L47
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #6
	add	r3, r3, r2
	ldrh	r2, [r7, #8]
	lsls	r2, r2, #6
	mov	r1, r3
	bl	flash_program
	mov	r3, r0
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L38
	movs	r3, #0
	strb	r3, [r7, #31]
	b	.L39
.L38:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	adds	r0, r2, r3
	mov	r3, r7
	adds	r3, r3, #4
	movs	r2, #1
	mov	r1, r3
	bl	flash_program
	mov	r3, r0
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L40
	movs	r3, #0
	strb	r3, [r7, #31]
	b	.L39
.L40:
	ldrh	r3, [r7, #8]
	cmp	r3, #1
	bls	.L41
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #1
	ldrh	r2, [r7, #8]
	subs	r2, r2, #1
	movs	r1, #254
	mov	r0, r3
	bl	flash_fill
	mov	r3, r0
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L41
	movs	r3, #0
	strb	r3, [r7, #31]
	b	.L39
.L41:
	ldrh	r3, [r7, #8]
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldrh	r3, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
.L37:
	mov	r3, r7
	mov	r0, r3
	bl	se3_flash_it_next
	mov	r3, r0
	cmp	r3, #0
	bne	.L42
.L39:
	ldrb	r3, [r7, #31]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L43
	movs	r3, #0
	b	.L46
.L43:
	movs	r2, #32
	ldr	r1, .L47+12
	ldr	r0, [r7, #40]
	bl	flash_program
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L44
	movs	r3, #0
	b	.L46
.L44:
	ldr	r3, .L47
	ldr	r3, [r3, #4]
	movs	r1, #1
	mov	r0, r3
	bl	flash_zero
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L45
	movs	r3, #0
	b	.L46
.L45:
	ldr	r3, [r7, #40]
	ldr	r2, .L47
	str	r3, [r2, #4]
	ldr	r2, .L47
	ldr	r3, [r7, #44]
	str	r3, [r2]
	ldr	r3, .L47
	ldr	r3, [r3, #4]
	adds	r3, r3, #32
	ldr	r2, .L47
	str	r3, [r2, #8]
	ldr	r3, .L47
	ldr	r3, [r3, #8]
	add	r3, r3, #2016
	ldr	r2, .L47
	str	r3, [r2, #12]
	ldr	r2, .L47
	ldr	r3, [r7, #36]
	str	r3, [r2, #20]
	ldr	r3, .L47
	ldr	r3, [r3, #20]
	ldr	r2, .L47
	str	r3, [r2, #24]
	ldr	r2, .L47
	ldr	r3, [r7, #32]
	str	r3, [r2, #16]
	movs	r3, #1
.L46:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L48:
	.align	2
.L47:
	.word	flash
	.word	135135232
	.word	135004160
	.word	se3_magic
	.size	flash_swap, .-flash_swap
	.section	.text.se3_flash_info_setup,"ax",%progbits
	.align	1
	.global	se3_flash_info_setup
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_flash_info_setup, %function
se3_flash_info_setup:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, .L50
	ldr	r3, [r7]
	str	r3, [r2, #4]
	ldr	r2, .L50
	ldr	r3, [r7, #4]
	str	r3, [r2]
	ldr	r3, .L50
	ldr	r3, [r3, #4]
	adds	r3, r3, #32
	ldr	r2, .L50
	str	r3, [r2, #8]
	ldr	r3, .L50
	ldr	r3, [r3, #8]
	add	r3, r3, #2016
	ldr	r2, .L50
	str	r3, [r2, #12]
	ldr	r3, .L50
	mov	r2, #2048
	str	r2, [r3, #20]
	ldr	r3, .L50
	ldr	r3, [r3, #20]
	ldr	r2, .L50
	str	r3, [r2, #24]
	ldr	r3, .L50
	movs	r2, #0
	str	r2, [r3, #16]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L51:
	.align	2
.L50:
	.word	flash
	.size	se3_flash_info_setup, .-se3_flash_info_setup
	.section	.text.se3_flash_canfit,"ax",%progbits
	.align	1
	.global	se3_flash_canfit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_flash_canfit, %function
se3_flash_canfit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, .L54
	ldr	r3, [r3, #20]
	rsb	r3, r3, #131072
	ldr	r2, [r7, #12]
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L55:
	.align	2
.L54:
	.word	flash
	.size	se3_flash_canfit, .-se3_flash_canfit
	.section	.text.se3_flash_init,"ax",%progbits
	.align	1
	.global	se3_flash_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_flash_init, %function
se3_flash_init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	movs	r2, #32
	ldr	r1, .L66
	ldr	r0, .L66+4
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	strb	r3, [r7, #23]
	movs	r2, #32
	ldr	r1, .L66
	ldr	r0, .L66+8
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	strb	r3, [r7, #22]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L57
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L57
	ldr	r3, .L66+12
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L58
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r1, #1
	ldr	r0, .L66+4
	bl	flash_zero
	b	.L57
.L58:
	movs	r3, #0
	strb	r3, [r7, #22]
	movs	r1, #1
	ldr	r0, .L66+8
	bl	flash_zero
.L57:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L59
	ldr	r3, .L66+4
	str	r3, [r7, #28]
	movs	r3, #10
	str	r3, [r7, #24]
	b	.L60
.L59:
	ldrb	r3, [r7, #22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L61
	ldr	r3, .L66+8
	str	r3, [r7, #28]
	movs	r3, #11
	str	r3, [r7, #24]
	b	.L60
.L61:
	movs	r0, #10
	bl	flash_erase
	movs	r2, #32
	ldr	r1, .L66
	ldr	r0, .L66+4
	bl	flash_program
	ldr	r3, .L66+4
	str	r3, [r7, #28]
	movs	r3, #10
	str	r3, [r7, #24]
.L60:
	ldr	r1, [r7, #28]
	ldr	r0, [r7, #24]
	bl	se3_flash_info_setup
	adds	r3, r7, #4
	mov	r0, r3
	bl	se3_flash_it_init
	b	.L62
.L63:
	ldr	r3, .L66+16
	ldr	r3, [r3, #24]
	ldrh	r2, [r7, #12]
	lsls	r2, r2, #6
	add	r3, r3, r2
	ldr	r2, .L66+16
	str	r3, [r2, #24]
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L62
	ldr	r3, .L66+16
	ldr	r3, [r3, #20]
	ldrh	r2, [r7, #12]
	lsls	r2, r2, #6
	add	r3, r3, r2
	ldr	r2, .L66+16
	str	r3, [r2, #20]
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L62
	ldr	r2, [r7, #4]
	ldr	r3, .L66+20
	ldr	r5, [r2]	@ unaligned
	ldr	r4, [r2, #4]	@ unaligned
	ldr	r0, [r2, #8]	@ unaligned
	ldr	r1, [r2, #12]	@ unaligned
	str	r5, [r3]	@ unaligned
	str	r4, [r3, #4]	@ unaligned
	str	r0, [r3, #8]	@ unaligned
	str	r1, [r3, #12]	@ unaligned
	ldr	r5, [r2, #16]	@ unaligned
	ldr	r4, [r2, #20]	@ unaligned
	ldr	r0, [r2, #24]	@ unaligned
	ldr	r1, [r2, #28]	@ unaligned
	str	r5, [r3, #16]	@ unaligned
	str	r4, [r3, #20]	@ unaligned
	str	r0, [r3, #24]	@ unaligned
	str	r1, [r3, #28]	@ unaligned
	ldr	r3, .L66+20
	movs	r2, #1
	strb	r2, [r3, #32]
.L62:
	adds	r3, r7, #4
	mov	r0, r3
	bl	se3_flash_it_next
	mov	r3, r0
	cmp	r3, #0
	bne	.L63
	ldr	r3, [r7, #16]
	cmp	r3, #2016
	bls	.L64
	mov	r3, #2016
	str	r3, [r7, #16]
.L64:
	ldr	r3, [r7, #16]
	ldr	r2, .L66+16
	str	r3, [r2, #16]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L67:
	.align	2
.L66:
	.word	se3_magic
	.word	135004160
	.word	135135232
	.word	135137279
	.word	flash
	.word	serial
	.size	se3_flash_init, .-se3_flash_init
	.section	.text.se3_flash_it_write,"ax",%progbits
	.align	1
	.global	se3_flash_it_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_flash_it_write, %function
se3_flash_it_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [r7, #10]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [r7, #8]	@ movhi
	ldrh	r2, [r7, #10]
	ldrh	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #6]
	adds	r3, r3, #2
	cmp	r2, r3
	ble	.L69
	movs	r3, #0
	b	.L70
.L69:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, r3
	ldrh	r3, [r7, #10]
	add	r3, r3, r2
	ldrh	r2, [r7, #8]
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	flash_program
	mov	r3, r0
.L70:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_flash_it_write, .-se3_flash_it_write
	.section	.text.se3_flash_it_init,"ax",%progbits
	.align	1
	.global	se3_flash_it_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_flash_it_init, %function
se3_flash_it_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	se3_flash_it_init, .-se3_flash_it_init
	.section	.text.se3_flash_it_next,"ax",%progbits
	.align	1
	.global	se3_flash_it_next
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_flash_it_next, %function
se3_flash_it_next:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L73
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, .L83
	ldr	r3, [r3, #12]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L75
.L73:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	b	.L75
.L82:
	ldr	r3, .L83
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L76
	movs	r3, #0
	b	.L77
.L76:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #254
	beq	.L78
	ldr	r3, .L83
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #6
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	ldr	r2, [r7, #12]
	ldrh	r2, [r2]	@ unaligned
	uxth	r2, r2
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #19]
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L79
.L81:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L79:
	ldr	r3, [r7, #20]
	cmp	r3, #2016
	bcs	.L80
	ldr	r3, .L83
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #254
	beq	.L81
.L80:
	ldr	r3, [r7, #20]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	movs	r3, #1
	b	.L77
.L78:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L75:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #2016
	bcc	.L82
	movs	r3, #0
.L77:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L84:
	.align	2
.L83:
	.word	flash
	.size	se3_flash_it_next, .-se3_flash_it_next
	.section	.text.se3_flash_unused,"ax",%progbits
	.align	1
	.global	se3_flash_unused
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_flash_unused, %function
se3_flash_unused:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L87
	ldr	r3, [r3, #20]
	rsb	r3, r3, #131072
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L88:
	.align	2
.L87:
	.word	flash
	.size	se3_flash_unused, .-se3_flash_unused
	.section	.text.se3_flash_it_new,"ax",%progbits
	.align	1
	.global	se3_flash_it_new
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_flash_it_new, %function
se3_flash_it_new:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	mov	r3, r2	@ movhi
	strh	r3, [r7]	@ movhi
	ldr	r3, .L100
	ldr	r3, [r3, #24]
	rsb	r3, r3, #131072
	str	r3, [r7, #24]
	ldrh	r3, [r7]
	adds	r3, r3, #2
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #22]
	cmp	r3, #4096
	bls	.L90
	movs	r3, #0
	b	.L91
.L90:
	ldrh	r2, [r7, #22]
	ldr	r3, .L100
	ldr	r3, [r3, #20]
	rsb	r3, r3, #131072
	cmp	r2, r3
	bls	.L92
	movs	r3, #0
	b	.L91
.L92:
	ldrh	r3, [r7, #22]
	ldr	r2, [r7, #24]
	cmp	r2, r3
	bcs	.L93
	bl	flash_swap
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L93
	movs	r3, #0
	b	.L91
.L93:
	ldr	r3, .L100
	ldr	r3, [r3, #16]
	cmp	r3, #2016
	bcc	.L94
	movs	r3, #0
	b	.L91
.L94:
	ldr	r3, .L100
	ldr	r3, [r3, #16]
	str	r3, [r7, #16]
	ldr	r3, .L100
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #6
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldrh	r3, [r7, #22]
	lsrs	r3, r3, #6
	uxth	r3, r3
	str	r3, [r7, #28]
	ldrh	r3, [r7, #22]	@ movhi
	and	r3, r3, #63
	uxth	r3, r3
	cmp	r3, #0
	beq	.L95
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L95:
	ldr	r3, .L100
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	adds	r1, r7, #3
	movs	r2, #1
	mov	r0, r3
	bl	flash_program
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L96
	movs	r3, #0
	b	.L91
.L96:
	ldr	r3, .L100
	ldr	r3, [r3, #16]
	adds	r3, r3, #1
	ldr	r2, .L100
	str	r3, [r2, #16]
	ldr	r3, [r7, #28]
	cmp	r3, #1
	bls	.L97
	ldr	r3, .L100
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	adds	r0, r3, #1
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	mov	r2, r3
	movs	r1, #254
	bl	flash_fill
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L98
	movs	r3, #0
	b	.L91
.L98:
	ldr	r3, .L100
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, .L100
	str	r3, [r2, #16]
.L97:
	ldr	r3, [r7, #12]
	mov	r1, r7
	movs	r2, #2
	mov	r0, r3
	bl	flash_program
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L99
	movs	r3, #0
	b	.L91
.L99:
	ldr	r3, [r7, #12]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #12]
	ldrh	r2, [r7]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #6]	@ movhi
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #4]
	ldr	r3, [r7, #28]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, .L100
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #6
	add	r3, r3, r2
	ldr	r2, .L100
	str	r3, [r2, #20]
	ldr	r3, .L100
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #6
	add	r3, r3, r2
	ldr	r2, .L100
	str	r3, [r2, #24]
	movs	r3, #1
.L91:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L101:
	.align	2
.L100:
	.word	flash
	.size	se3_flash_it_new, .-se3_flash_it_new
	.section	.text.se3_flash_pos_delete,"ax",%progbits
	.align	1
	.global	se3_flash_pos_delete
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_flash_pos_delete, %function
se3_flash_pos_delete:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #2016
	bcc	.L103
	movs	r3, #0
	b	.L104
.L103:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L105
.L107:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L105:
	ldr	r3, [r7, #12]
	cmp	r3, #2016
	bcs	.L106
	ldr	r3, .L110
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #254
	beq	.L107
.L106:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	cmp	r3, #2016
	bls	.L108
	movs	r3, #0
	b	.L104
.L108:
	ldr	r3, .L110
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	flash_zero
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L109
	movs	r3, #0
	b	.L104
.L109:
	ldr	r3, .L110
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #6
	subs	r3, r2, r3
	ldr	r2, .L110
	str	r3, [r2, #20]
	movs	r3, #1
.L104:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L111:
	.align	2
.L110:
	.word	flash
	.size	se3_flash_pos_delete, .-se3_flash_pos_delete
	.section	.text.se3_flash_it_delete,"ax",%progbits
	.align	1
	.global	se3_flash_it_delete
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_flash_it_delete, %function
se3_flash_it_delete:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #8]
	add	r3, r3, r2
	cmp	r3, #2016
	bls	.L113
	movs	r3, #0
	b	.L114
.L113:
	ldr	r3, .L116
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	mov	r1, r3
	mov	r0, r2
	bl	flash_zero
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L115
	movs	r3, #0
	b	.L114
.L115:
	ldr	r3, .L116
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #8]
	lsls	r2, r2, #6
	subs	r3, r3, r2
	ldr	r2, .L116
	str	r3, [r2, #20]
	movs	r3, #1
.L114:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L117:
	.align	2
.L116:
	.word	flash
	.size	se3_flash_it_delete, .-se3_flash_it_delete
	.section	.text.se3_flash_bootmode_reset,"ax",%progbits
	.align	1
	.global	se3_flash_bootmode_reset
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_flash_bootmode_reset, %function
se3_flash_bootmode_reset:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	flash_zero
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_flash_bootmode_reset, .-se3_flash_bootmode_reset
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
