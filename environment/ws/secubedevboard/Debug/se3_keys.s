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
	.file	"se3_keys.c"
	.text
	.section	.text.se3_key_find,"ax",%progbits
	.align	1
	.global	se3_key_find
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_key_find, %function
se3_key_find:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r0, [r7]
	bl	se3_flash_it_init
	b	.L2
.L4:
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L2
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	bne	.L2
	movs	r3, #1
	b	.L5
.L2:
	ldr	r0, [r7]
	bl	se3_flash_it_next
	mov	r3, r0
	cmp	r3, #0
	bne	.L4
	movs	r3, #0
.L5:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_key_find, .-se3_key_find
	.section	.text.se3_key_remove,"ax",%progbits
	.align	1
	.global	se3_key_remove
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_key_remove, %function
se3_key_remove:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	se3_flash_it_delete
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L7
	movs	r3, #0
	b	.L8
.L7:
	movs	r3, #1
.L8:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_key_remove, .-se3_key_remove
	.section	.text.se3_key_new,"ax",%progbits
	.align	1
	.global	se3_key_new
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_key_new, %function
se3_key_new:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r2, [r3, #8]
	ldr	r3, [r7]
	ldrh	r3, [r3, #10]
	add	r3, r3, r2
	uxth	r3, r3
	adds	r3, r3, #12
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	movw	r2, #4094
	cmp	r3, r2
	bls	.L10
	movs	r3, #0
	b	.L11
.L10:
	ldrh	r3, [r7, #14]
	mov	r2, r3
	movs	r1, #100
	ldr	r0, [r7, #4]
	bl	se3_flash_it_new
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L12
	movs	r3, #0
	b	.L11
.L12:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	se3_key_write
	mov	r3, r0
.L11:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_key_new, .-se3_key_new
	.section	.text.se3_key_read,"ax",%progbits
	.align	1
	.global	se3_key_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_key_read, %function
se3_key_read:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	adds	r2, r2, #4
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
	ldr	r3, [r7]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	adds	r2, r2, #8
	ldrh	r2, [r2]	@ unaligned
	uxth	r2, r2
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7]
	adds	r3, r3, #10
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	adds	r2, r2, #10
	ldrh	r2, [r2]	@ unaligned
	uxth	r2, r2
	strh	r2, [r3]	@ unaligned
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r7]
	ldr	r0, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r1, r3, #12
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	mov	r2, r3
	bl	memcpy
.L14:
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r7]
	ldr	r0, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	adds	r3, r3, #12
	adds	r1, r2, r3
	ldr	r3, [r7]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	bl	memcpy
.L16:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_key_read, .-se3_key_read
	.section	.text.se3_key_equal,"ax",%progbits
	.align	1
	.global	se3_key_equal
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_key_equal, %function
se3_key_equal:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L18
	movs	r3, #0
	b	.L27
.L18:
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L20
	movs	r3, #0
	b	.L27
.L20:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	beq	.L21
	movs	r3, #0
	b	.L27
.L21:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	beq	.L22
	movs	r3, #0
	b	.L27
.L22:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #8]
	ldrh	r3, [r7, #10]
	cmp	r2, r3
	beq	.L23
	movs	r3, #0
	b	.L27
.L23:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #10
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	ldrh	r2, [r3, #10]
	ldrh	r3, [r7, #10]
	cmp	r2, r3
	beq	.L24
	movs	r3, #0
	b	.L27
.L24:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r0, r3, #12
	ldr	r3, [r7]
	ldr	r1, [r3, #12]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	mov	r2, r3
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L25
	movs	r3, #0
	b	.L27
.L25:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	adds	r3, r3, #12
	adds	r0, r2, r3
	ldr	r3, [r7]
	ldr	r1, [r3, #16]
	ldr	r3, [r7]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L26
	movs	r3, #0
	b	.L27
.L26:
	movs	r3, #1
.L27:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_key_equal, .-se3_key_equal
	.section	.text.se3_key_read_data,"ax",%progbits
	.align	1
	.global	se3_key_read_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_key_read_data, %function
se3_key_read_data:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldrh	r2, [r7, #10]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	memcpy
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_key_read_data, .-se3_key_read_data
	.section	.text.se3_key_write,"ax",%progbits
	.align	1
	.global	se3_key_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_key_write, %function
se3_key_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r2, [r7]
	movs	r3, #4
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L37
	ldr	r3, [r7]
	adds	r2, r3, #4
	movs	r3, #4
	movs	r1, #4
	ldr	r0, [r7, #4]
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L38
	ldr	r3, [r7]
	adds	r3, r3, #8
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #8]	@ movhi
	add	r3, r7, #8
	adds	r3, r3, #2
	ldr	r2, [r7]
	adds	r2, r2, #10
	ldrh	r2, [r2]	@ unaligned
	uxth	r2, r2
	strh	r2, [r3]	@ unaligned
	add	r2, r7, #8
	movs	r3, #4
	movs	r1, #8
	ldr	r0, [r7, #4]
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L39
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	movs	r1, #12
	ldr	r0, [r7, #4]
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L40
.L34:
	ldr	r3, [r7]
	ldrh	r3, [r3, #10]
	cmp	r3, #0
	beq	.L35
	ldr	r3, [r7]
	ldrh	r3, [r3, #8]
	adds	r3, r3, #12
	uxth	r1, r3
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	ldrh	r3, [r3, #10]
	ldr	r0, [r7, #4]
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L41
.L35:
	movs	r3, #1
	strb	r3, [r7, #15]
	b	.L31
.L37:
	nop
	b	.L31
.L38:
	nop
	b	.L31
.L39:
	nop
	b	.L31
.L40:
	nop
	b	.L31
.L41:
	nop
.L31:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_key_write, .-se3_key_write
	.section	.text.se3_key_fingerprint,"ax",%progbits
	.align	1
	.global	se3_key_fingerprint
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_key_fingerprint, %function
se3_key_fingerprint:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #8]
	mov	r1, r3
	movs	r3, #32
	str	r3, [sp, #8]
	ldr	r3, [r7, #4]
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #32
	ldr	r2, [r7, #8]
	bl	PBKDF2HmacSha256
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	se3_key_fingerprint, .-se3_key_fingerprint
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
