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
	.file	"se3_sekey.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.comm	se3_algo_impl_t,1,1
	.comm	login_struct,1228,4
	.section	.data.handlers,"aw"
	.align	2
	.type	handlers, %object
	.size	handlers, 192
handlers:
	.word	0
	.word	challenge
	.word	login
	.word	logout
	.word	config
	.word	key_edit
	.word	key_list
	.word	crypto_init
	.word	crypto_update
	.word	crypto_list
	.word	crypto_set_time
	.word	0
	.word	sekey_utilities
	.word	0
	.word	0
	.word	error
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.global	key_iterator
	.section	.bss.key_iterator,"aw",%nobits
	.align	2
	.type	key_iterator, %object
	.size	key_iterator, 16
key_iterator:
	.space	16
	.section	.text.sekey_get_implementation_info,"ax",%progbits
	.align	1
	.global	sekey_get_implementation_info
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sekey_get_implementation_info, %function
sekey_get_implementation_info:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #4]
	bl	sekey_get_auth
	mov	r3, r0
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	movs	r2, #0
	strb	r2, [r3]
.L2:
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	sekey_get_implementation_info, .-sekey_get_implementation_info
	.section	.text.sekey_get_auth,"ax",%progbits
	.align	1
	.global	sekey_get_auth
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sekey_get_auth, %function
sekey_get_auth:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	sekey_get_auth, .-sekey_get_auth
	.section	.rodata
	.align	2
.LC0:
	.ascii	"SEKEY_OK\000"
	.section	.text.store_user_info,"ax",%progbits
	.align	1
	.global	store_user_info
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	store_user_info, %function
store_user_info:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #47]
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	movs	r3, #0
	strh	r3, [r7, #44]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, .L20
	ldrh	r3, [r3, #2]
	cmp	r3, #1000
	beq	.L7
	movs	r3, #100
	b	.L19
.L7:
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #35]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldrb	r2, [r7, #35]	@ zero_extendqisi2
	ldrb	r3, [r7, #47]
	add	r3, r3, r2
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #34]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, .L20
	ldrh	r3, [r3, #2]
	cmp	r3, #1000
	beq	.L9
	movs	r3, #100
	b	.L19
.L9:
	ldrh	r3, [r7, #14]
	subs	r2, r3, #2
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	mov	r1, r3
	ldrb	r3, [r7, #34]	@ zero_extendqisi2
	add	r3, r3, r1
	adds	r3, r3, #2
	cmp	r2, r3
	beq	.L10
	movs	r3, #200
	b	.L19
.L10:
	add	r3, r7, #16
	mov	r0, r3
	bl	se3_flash_it_init
	b	.L11
.L12:
	ldrb	r3, [r7, #20]	@ zero_extendqisi2
	cmp	r3, #117
	bne	.L11
	add	r3, r7, #16
	mov	r0, r3
	bl	se3_flash_it_delete
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L11
	movw	r3, #61441
	b	.L19
.L11:
	add	r3, r7, #16
	mov	r0, r3
	bl	se3_flash_it_next
	mov	r3, r0
	cmp	r3, #0
	bne	.L12
	add	r3, r7, #16
	mov	r0, r3
	bl	se3_flash_it_init
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	uxth	r2, r3
	ldrb	r3, [r7, #34]	@ zero_extendqisi2
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	adds	r3, r3, #2
	strh	r3, [r7, #44]	@ movhi
	ldrh	r3, [r7, #44]
	movw	r2, #4094
	cmp	r3, r2
	bls	.L13
	mov	r3, #400
	b	.L19
.L13:
	ldrh	r2, [r7, #44]
	add	r3, r7, #16
	movs	r1, #117
	mov	r0, r3
	bl	se3_flash_it_new
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L14
	mov	r3, #400
	b	.L19
.L14:
	movs	r3, #0
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	uxth	r1, r3
	add	r2, r7, #35
	add	r0, r7, #16
	movs	r3, #1
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L15
	movw	r3, #61441
	b	.L19
.L15:
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	uxth	r1, r3
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	uxth	r3, r3
	add	r0, r7, #16
	ldr	r2, [r7, #40]
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L16
	movw	r3, #61441
	b	.L19
.L16:
	ldrb	r2, [r7, #35]	@ zero_extendqisi2
	ldrb	r3, [r7, #47]
	add	r3, r3, r2
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	uxth	r1, r3
	add	r2, r7, #34
	add	r0, r7, #16
	movs	r3, #1
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L17
	movw	r3, #61441
	b	.L19
.L17:
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #47]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	uxth	r1, r3
	ldrb	r3, [r7, #34]	@ zero_extendqisi2
	uxth	r3, r3
	add	r0, r7, #16
	ldr	r2, [r7, #36]
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L18
	movw	r3, #61441
	b	.L19
.L18:
	ldr	r3, [r7, #4]
	movs	r2, #8
	strh	r2, [r3]	@ movhi
	movs	r2, #8
	ldr	r1, .L20+4
	ldr	r0, [r7]
	bl	memcpy
	movs	r3, #0
.L19:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L21:
	.align	2
.L20:
	.word	login_struct
	.word	.LC0
	.size	store_user_info, .-store_user_info
	.section	.text.load_user_info,"ax",%progbits
	.align	1
	.global	load_user_info
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	load_user_info, %function
load_user_info:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	strb	r3, [r7, #47]
	movs	r3, #0
	strb	r3, [r7, #46]
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	movs	r3, #0
	str	r3, [r7, #40]
	add	r3, r7, #20
	mov	r0, r3
	bl	se3_flash_it_init
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L23
.L29:
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	cmp	r3, #117
	bne	.L23
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L25
	ldr	r0, [r7, #40]
	bl	free
.L25:
	movs	r3, #200
	b	.L33
.L24:
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #47]
	movs	r3, #0
	strb	r3, [r7, #39]
	ldr	r2, [r7, #20]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #38]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #39]
	ldrb	r2, [r7, #38]	@ zero_extendqisi2
	ldrb	r3, [r7, #39]
	add	r3, r3, r2
	strb	r3, [r7, #39]
	ldr	r2, [r7, #20]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #37]
	ldrb	r2, [r7, #38]	@ zero_extendqisi2
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	adds	r3, r3, #2
	strb	r3, [r7, #46]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L27
	ldr	r0, [r7, #40]
	bl	free
	movs	r3, #0
	str	r3, [r7, #40]
.L27:
	ldrb	r3, [r7, #46]	@ zero_extendqisi2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L28
	mov	r3, #400
	b	.L33
.L28:
	ldr	r3, [r7, #20]
	ldrb	r2, [r7, #46]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #40]
	bl	memcpy
.L23:
	add	r3, r7, #20
	mov	r0, r3
	bl	se3_flash_it_next
	mov	r3, r0
	cmp	r3, #0
	bne	.L29
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L30
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L31
	ldr	r0, [r7, #40]
	bl	free
.L31:
	movs	r3, #200
	b	.L33
.L30:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L32
	ldrb	r3, [r7, #46]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r1, [r7, #40]
	ldr	r0, [r7]
	bl	memcpy
	ldrb	r3, [r7, #46]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r0, [r7, #40]
	bl	free
.L32:
	movs	r3, #0
.L33:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	load_user_info, .-load_user_info
	.section	.text.load_encrypted_key_data,"ax",%progbits
	.align	1
	.global	load_encrypted_key_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	load_encrypted_key_data, %function
load_encrypted_key_data:
	@ args = 0, pretend = 0, frame = 2432
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	subw	sp, sp, #2436
	add	r7, sp, #0
	mov	r4, r0
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r3, r7, #14
	mov	r2, r4	@ movhi
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	str	r3, [r7, #2416]
	movs	r3, #0
	str	r3, [r7, #2412]
	movs	r3, #0
	str	r3, [r7, #2408]
	movs	r3, #0
	strh	r3, [r7, #2406]	@ movhi
	movs	r3, #0
	str	r3, [r7, #2428]
	movs	r3, #0
	str	r3, [r7, #2424]
	addw	r3, r7, #2388
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	r3, .L56
	ldrh	r3, [r3, #2]
	cmp	r3, #1000
	beq	.L35
	movs	r3, #100
	b	.L55
.L35:
	add	r3, r7, #14
	ldrh	r3, [r3]
	cmp	r3, #10
	beq	.L37
	movw	r3, #61446
	b	.L55
.L37:
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #2416]
	add	r3, r7, #8
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #2408]
	ldr	r3, [r7, #2408]
	cmp	r3, #0
	bne	.L38
	movw	r3, #61446
	b	.L55
.L38:
	addw	r3, r7, #2388
	mov	r0, r3
	bl	se3_flash_it_init
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L39
.L44:
	ldrb	r3, [r7, #2392]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L39
	ldr	r3, [r7, #2388]
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #2412]
	ldr	r2, [r7, #2412]
	ldr	r3, [r7, #2416]
	cmp	r2, r3
	bne	.L39
	ldr	r3, [r7, #2424]
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r7, #2428]
	cmp	r3, #0
	beq	.L41
	ldr	r0, [r7, #2428]
	bl	free
.L41:
	movs	r3, #200
	b	.L55
.L40:
	ldr	r3, [r7, #2424]
	adds	r3, r3, #1
	str	r3, [r7, #2424]
	ldr	r3, [r7, #2388]
	adds	r3, r3, #8
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #2406]	@ movhi
	ldr	r3, [r7, #2428]
	cmp	r3, #0
	beq	.L42
	ldr	r0, [r7, #2428]
	bl	free
	movs	r3, #0
	str	r3, [r7, #2428]
.L42:
	ldrh	r3, [r7, #2406]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [r7, #2428]
	ldr	r3, [r7, #2428]
	cmp	r3, #0
	bne	.L43
	mov	r3, #400
	b	.L55
.L43:
	ldr	r3, [r7, #2388]
	adds	r3, r3, #12
	ldrh	r2, [r7, #2406]
	mov	r1, r3
	ldr	r0, [r7, #2428]
	bl	memcpy
.L39:
	addw	r3, r7, #2388
	mov	r0, r3
	bl	se3_flash_it_next
	mov	r3, r0
	cmp	r3, #0
	bne	.L44
	ldr	r3, [r7, #2424]
	cmp	r3, #1
	beq	.L45
	ldr	r3, [r7, #2428]
	cmp	r3, #0
	beq	.L46
	ldr	r0, [r7, #2428]
	bl	free
.L46:
	movs	r3, #200
	b	.L55
.L45:
	add	r3, r7, #66
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	add	r3, r7, #64
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	add	r3, r7, #62
	movw	r2, #257
	strh	r2, [r3]	@ movhi
	add	r3, r7, #60
	movw	r2, #32769
	strh	r2, [r3]	@ movhi
	add	r3, r7, #58
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldrh	r2, [r7, #2406]
	add	r3, r7, #56
	strh	r2, [r3]	@ movhi
	add	r3, r7, #54
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	add	r3, r7, #48
	mov	r2, #-1
	str	r2, [r3]
	add	r3, r7, #324
	mov	r2, #2064
	movs	r1, #0
	mov	r0, r3
	bl	memset
	add	r3, r7, #68
	mov	r2, #256
	movs	r1, #0
	mov	r0, r3
	bl	memset
	add	r3, r7, #64
	ldrh	r2, [r3]
	add	r3, r7, #324
	strh	r2, [r3]	@ movhi
	add	r3, r7, #324
	adds	r3, r3, #2
	add	r2, r7, #62
	ldrh	r2, [r2]
	strh	r2, [r3]	@ unaligned
	add	r3, r7, #324
	adds	r3, r3, #4
	ldr	r2, [r7, #2408]
	str	r2, [r3]	@ unaligned
	add	r3, r7, #68
	add	r2, r7, #66
	add	r1, r7, #324
	movs	r0, #8
	bl	crypto_init
	mov	r3, r0
	strh	r3, [r7, #2422]	@ movhi
	ldrh	r3, [r7, #2422]
	cmp	r3, #0
	bne	.L47
	add	r3, r7, #66
	ldrh	r3, [r3]
	cmp	r3, #4
	beq	.L48
.L47:
	ldr	r3, [r7, #2428]
	cmp	r3, #0
	beq	.L49
	ldr	r0, [r7, #2428]
	bl	free
.L49:
	movs	r3, #200
	b	.L55
.L48:
	add	r3, r7, #66
	ldrh	r3, [r3]
	mov	r2, r3
	add	r1, r7, #68
	add	r3, r7, #48
	mov	r0, r3
	bl	memcpy
	add	r3, r7, #324
	mov	r2, #2064
	movs	r1, #0
	mov	r0, r3
	bl	memset
	add	r3, r7, #68
	mov	r2, #256
	movs	r1, #0
	mov	r0, r3
	bl	memset
	add	r3, r7, #48
	ldr	r2, [r3]
	add	r3, r7, #324
	str	r2, [r3]
	add	r3, r7, #324
	adds	r3, r3, #4
	add	r2, r7, #60
	ldrh	r2, [r2]
	strh	r2, [r3]	@ unaligned
	add	r3, r7, #324
	adds	r3, r3, #6
	add	r2, r7, #58
	ldrh	r2, [r2]
	strh	r2, [r3]	@ unaligned
	add	r3, r7, #324
	adds	r3, r3, #8
	add	r2, r7, #56
	ldrh	r2, [r2]
	strh	r2, [r3]	@ unaligned
	add	r3, r7, #324
	adds	r3, r3, #16
	add	r2, r7, #56
	ldrh	r2, [r2]
	ldr	r1, [r7, #2428]
	mov	r0, r3
	bl	memcpy
	add	r3, r7, #68
	add	r2, r7, #66
	add	r1, r7, #324
	movs	r0, #16
	bl	crypto_update
	mov	r3, r0
	strh	r3, [r7, #2422]	@ movhi
	ldrh	r3, [r7, #2422]
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r7, #2428]
	cmp	r3, #0
	beq	.L51
	ldr	r0, [r7, #2428]
	bl	free
.L51:
	movs	r3, #200
	b	.L55
.L50:
	add	r3, r7, #68
	ldrh	r2, [r3]
	add	r3, r7, #54
	strh	r2, [r3]	@ movhi
	add	r3, r7, #54
	ldrh	r3, [r3]
	cmp	r3, #32
	beq	.L52
	ldr	r3, [r7, #2428]
	cmp	r3, #0
	beq	.L53
	ldr	r0, [r7, #2428]
	bl	free
.L53:
	movs	r3, #200
	b	.L55
.L52:
	add	r3, r7, #16
	movs	r2, #32
	movs	r1, #0
	mov	r0, r3
	bl	memset
	add	r3, r7, #68
	adds	r3, r3, #16
	add	r2, r7, #54
	ldrh	r2, [r2]
	add	r0, r7, #16
	mov	r1, r3
	bl	memcpy
	add	r3, r7, #54
	ldrh	r3, [r3]
	mov	r2, r3
	add	r1, r7, #16
	mov	r3, r7
	ldr	r0, [r3]
	bl	memcpy
	add	r3, r7, #54
	ldrh	r2, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #2428]
	cmp	r3, #0
	beq	.L54
	ldr	r0, [r7, #2428]
	bl	free
.L54:
	movs	r3, #0
.L55:
	mov	r0, r3
	addw	r7, r7, #2436
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L57:
	.align	2
.L56:
	.word	login_struct
	.size	load_encrypted_key_data, .-load_encrypted_key_data
	.section	.text.load_key_ids,"ax",%progbits
	.align	1
	.global	load_key_ids
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	load_key_ids, %function
load_key_ids:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
.L62:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	movw	r2, #5999
	cmp	r3, r2
	bls	.L59
	movs	r3, #0
	b	.L63
.L59:
	ldr	r3, .L64
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L61
	ldr	r3, .L64
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L61
	ldr	r3, .L64
	ldr	r3, [r3]
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #16]
	ldrh	r3, [r7, #22]
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	str	r2, [r3]	@ unaligned
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldrh	r3, [r7, #22]	@ movhi
	adds	r3, r3, #4
	strh	r3, [r7, #22]	@ movhi
.L61:
	ldr	r0, .L64
	bl	se3_flash_it_next
	mov	r3, r0
	cmp	r3, #0
	bne	.L62
	ldr	r0, .L64
	bl	se3_flash_it_init
	ldrh	r3, [r7, #22]
	ldr	r2, [r7]
	add	r3, r3, r2
	movs	r2, #4
	movs	r1, #0
	mov	r0, r3
	bl	memset
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	adds	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L63:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L65:
	.align	2
.L64:
	.word	key_iterator
	.size	load_key_ids, .-load_key_ids
	.section	.rodata
	.align	2
.LC1:
	.ascii	"OK\000"
	.section	.text.delete_all_keys,"ax",%progbits
	.align	1
	.global	delete_all_keys
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	delete_all_keys, %function
delete_all_keys:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	strb	r3, [r7, #55]
	movs	r3, #0
	strb	r3, [r7, #54]
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldrh	r3, [r7, #14]
	subs	r3, r3, #2
	cmp	r3, #0
	bge	.L67
	adds	r3, r3, #3
.L67:
	asrs	r3, r3, #2
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	strh	r3, [r7, #52]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	add	r3, r7, #16
	mov	r0, r3
	bl	se3_flash_it_init
	ldrh	r3, [r7, #14]
	subs	r3, r3, #2
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L68
	movw	r3, #61446
	b	.L82
.L68:
	ldr	r3, [r7, #40]
	lsls	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L70
	mov	r3, #400
	b	.L82
.L70:
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L71
.L72:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrh	r2, [r7, #52]
	ldr	r1, [r7, #8]
	add	r2, r2, r1
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
	ldrh	r3, [r7, #52]	@ movhi
	adds	r3, r3, #4
	strh	r3, [r7, #52]	@ movhi
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L71:
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #40]
	cmp	r2, r3
	bhi	.L72
	b	.L73
.L79:
	ldrb	r3, [r7, #20]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L73
	ldr	r3, [r7, #16]
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L74
.L77:
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L75
	movs	r3, #1
	strb	r3, [r7, #54]
	b	.L76
.L75:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L74:
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #40]
	cmp	r2, r3
	bhi	.L77
.L76:
	ldrb	r3, [r7, #54]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L78
	movs	r3, #0
	strb	r3, [r7, #54]
	b	.L73
.L78:
	add	r3, r7, #16
	mov	r0, r3
	bl	se3_flash_it_delete
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L73
	movs	r3, #1
	strb	r3, [r7, #55]
.L73:
	add	r3, r7, #16
	mov	r0, r3
	bl	se3_flash_it_next
	mov	r3, r0
	cmp	r3, #0
	bne	.L79
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L80
	ldr	r0, [r7, #36]
	bl	free
.L80:
	ldrb	r3, [r7, #55]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L81
	movs	r3, #200
	b	.L82
.L81:
	movs	r2, #2
	ldr	r1, .L83
	ldr	r0, [r7]
	bl	memcpy
	ldr	r3, [r7, #4]
	movs	r2, #2
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L82:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L84:
	.align	2
.L83:
	.word	.LC1
	.size	delete_all_keys, .-delete_all_keys
	.section	.text.delete_key,"ax",%progbits
	.align	1
	.global	delete_key
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	delete_key, %function
delete_key:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	strb	r3, [r7, #47]
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldrh	r3, [r7, #14]
	cmp	r3, #6
	beq	.L86
	movw	r3, #61446
	b	.L91
.L86:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #36]
	add	r3, r7, #20
	mov	r0, r3
	bl	se3_flash_it_init
	b	.L88
.L89:
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L88
	ldr	r3, [r7, #20]
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #40]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bne	.L88
	add	r3, r7, #20
	mov	r0, r3
	bl	se3_flash_it_delete
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L88
	movs	r3, #1
	strb	r3, [r7, #47]
.L88:
	add	r3, r7, #20
	mov	r0, r3
	bl	se3_flash_it_next
	mov	r3, r0
	cmp	r3, #0
	bne	.L89
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L90
	movs	r3, #200
	b	.L91
.L90:
	movs	r2, #2
	ldr	r1, .L92
	ldr	r0, [r7]
	bl	memcpy
	ldr	r3, [r7, #4]
	movs	r2, #2
	strh	r2, [r3]	@ movhi
	movs	r3, #0
.L91:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L93:
	.align	2
.L92:
	.word	.LC1
	.size	delete_key, .-delete_key
	.section	.text.insert_key,"ax",%progbits
	.align	1
	.global	insert_key
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	insert_key, %function
insert_key:
	@ args = 0, pretend = 0, frame = 2456
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	subw	sp, sp, #2456
	add	r7, sp, #0
	mov	r4, r0
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r3, r7, #14
	mov	r2, r4	@ movhi
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	str	r3, [r7, #2436]
	movs	r3, #0
	str	r3, [r7, #2432]
	movs	r3, #0
	strh	r3, [r7, #2430]	@ movhi
	movs	r3, #0
	str	r3, [r7, #2448]
	movs	r3, #0
	strb	r3, [r7, #2455]
	addw	r3, r7, #2392
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	add	r3, r7, #14
	ldrh	r3, [r3]
	cmp	r3, #7
	bhi	.L95
	movw	r3, #61446
	b	.L118
.L95:
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #2436]
	add	r3, r7, #8
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldrh	r3, [r3]	@ unaligned
	uxth	r3, r3
	strh	r3, [r7, #2430]	@ movhi
	ldrh	r3, [r7, #2430]
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [r7, #2448]
	ldr	r3, [r7, #2448]
	cmp	r3, #0
	bne	.L97
	mov	r3, #400
	b	.L118
.L97:
	add	r3, r7, #14
	ldrh	r3, [r3]
	cmp	r3, #8
	bne	.L98
	ldrh	r3, [r7, #2430]
	ldr	r1, [r7, #2448]
	mov	r0, r3
	bl	se3_rand
	mov	r3, r0
	mov	r2, r3
	ldrh	r3, [r7, #2430]
	cmp	r2, r3
	beq	.L99
	ldr	r3, [r7, #2448]
	cmp	r3, #0
	beq	.L100
	ldr	r0, [r7, #2448]
	bl	free
.L100:
	movw	r3, #61441
	b	.L118
.L98:
	add	r3, r7, #14
	ldrh	r3, [r3]
	subs	r2, r3, #2
	ldrh	r3, [r7, #2430]
	adds	r3, r3, #10
	cmp	r2, r3
	beq	.L101
	ldr	r3, [r7, #2448]
	cmp	r3, #0
	beq	.L102
	ldr	r0, [r7, #2448]
	bl	free
.L102:
	movw	r3, #61446
	b	.L118
.L101:
	add	r3, r7, #8
	ldr	r3, [r3]
	adds	r3, r3, #6
	ldr	r3, [r3]	@ unaligned
	str	r3, [r7, #2432]
	add	r3, r7, #8
	ldr	r3, [r3]
	adds	r3, r3, #10
	str	r3, [r7, #2444]
	ldr	r3, [r7, #2432]
	cmp	r3, #0
	bne	.L103
	ldrh	r3, [r7, #2430]
	mov	r2, r3
	ldr	r1, [r7, #2444]
	ldr	r0, [r7, #2448]
	bl	memcpy
	b	.L99
.L103:
	movs	r3, #0
	strh	r3, [r7, #2390]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #2388]	@ movhi
	movw	r3, #513
	strh	r3, [r7, #2386]	@ movhi
	movw	r3, #32769
	strh	r3, [r7, #2384]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #2382]	@ movhi
	ldrh	r3, [r7, #2430]
	strh	r3, [r7, #2380]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #2378]	@ movhi
	mov	r3, #-1
	str	r3, [r7, #2372]
	add	r3, r7, #308
	mov	r2, #2064
	movs	r1, #0
	mov	r0, r3
	bl	memset
	add	r3, r7, #52
	mov	r2, #256
	movs	r1, #0
	mov	r0, r3
	bl	memset
	ldrh	r2, [r7, #2388]
	add	r3, r7, #308
	strh	r2, [r3]	@ movhi
	add	r3, r7, #308
	adds	r3, r3, #2
	ldrh	r2, [r7, #2386]
	strh	r2, [r3]	@ unaligned
	add	r3, r7, #308
	adds	r3, r3, #4
	ldr	r2, [r7, #2432]
	str	r2, [r3]	@ unaligned
	add	r3, r7, #52
	addw	r2, r7, #2390
	add	r1, r7, #308
	movs	r0, #8
	bl	crypto_init
	mov	r3, r0
	strh	r3, [r7, #2442]	@ movhi
	ldrh	r3, [r7, #2442]
	cmp	r3, #0
	bne	.L104
	ldrh	r3, [r7, #2390]
	cmp	r3, #4
	beq	.L105
.L104:
	ldr	r3, [r7, #2448]
	cmp	r3, #0
	beq	.L106
	ldr	r0, [r7, #2448]
	bl	free
.L106:
	movs	r3, #200
	b	.L118
.L105:
	ldrh	r3, [r7, #2390]
	mov	r2, r3
	add	r1, r7, #52
	addw	r3, r7, #2372
	mov	r0, r3
	bl	memcpy
	add	r3, r7, #308
	mov	r2, #2064
	movs	r1, #0
	mov	r0, r3
	bl	memset
	add	r3, r7, #52
	mov	r2, #256
	movs	r1, #0
	mov	r0, r3
	bl	memset
	ldr	r2, [r7, #2372]
	add	r3, r7, #308
	str	r2, [r3]
	add	r3, r7, #308
	adds	r3, r3, #4
	ldrh	r2, [r7, #2384]
	strh	r2, [r3]	@ unaligned
	add	r3, r7, #308
	adds	r3, r3, #6
	ldrh	r2, [r7, #2382]
	strh	r2, [r3]	@ unaligned
	add	r3, r7, #308
	adds	r3, r3, #8
	ldrh	r2, [r7, #2380]
	strh	r2, [r3]	@ unaligned
	add	r3, r7, #308
	adds	r3, r3, #16
	ldrh	r2, [r7, #2380]
	ldr	r1, [r7, #2444]
	mov	r0, r3
	bl	memcpy
	add	r3, r7, #52
	addw	r2, r7, #2390
	add	r1, r7, #308
	movs	r0, #16
	bl	crypto_update
	mov	r3, r0
	strh	r3, [r7, #2442]	@ movhi
	ldrh	r3, [r7, #2442]
	cmp	r3, #0
	beq	.L108
	ldr	r3, [r7, #2448]
	cmp	r3, #0
	beq	.L109
	ldr	r0, [r7, #2448]
	bl	free
.L109:
	movs	r3, #200
	b	.L118
.L108:
	add	r3, r7, #52
	ldrh	r3, [r3]
	strh	r3, [r7, #2378]	@ movhi
	ldrh	r3, [r7, #2378]
	cmp	r3, #32
	beq	.L110
	ldr	r3, [r7, #2448]
	cmp	r3, #0
	beq	.L111
	ldr	r0, [r7, #2448]
	bl	free
.L111:
	movs	r3, #200
	b	.L118
.L110:
	add	r3, r7, #20
	movs	r2, #32
	movs	r1, #0
	mov	r0, r3
	bl	memset
	add	r3, r7, #52
	adds	r3, r3, #16
	ldrh	r2, [r7, #2378]
	add	r0, r7, #20
	mov	r1, r3
	bl	memcpy
	ldr	r2, [r7, #2448]
	add	r3, r7, #20
	mov	r4, r2
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	str	r0, [r4]	@ unaligned
	str	r1, [r4, #4]	@ unaligned
	str	r2, [r4, #8]	@ unaligned
	str	r3, [r4, #12]	@ unaligned
	ldmia	r5!, {r0, r1, r2, r3}
	str	r0, [r4, #16]	@ unaligned
	str	r1, [r4, #20]	@ unaligned
	str	r2, [r4, #24]	@ unaligned
	str	r3, [r4, #28]	@ unaligned
.L99:
	ldr	r3, [r7, #2436]
	str	r3, [r7, #2408]
	ldrh	r3, [r7, #2430]
	strh	r3, [r7, #2416]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #2418]	@ movhi
	mov	r3, #-1
	str	r3, [r7, #2412]
	ldr	r3, [r7, #2448]
	str	r3, [r7, #2420]
	movs	r3, #0
	str	r3, [r7, #2424]
	addw	r3, r7, #2392
	mov	r0, r3
	bl	se3_flash_it_init
	ldr	r3, [r7, #2408]
	addw	r2, r7, #2392
	mov	r1, r2
	mov	r0, r3
	bl	se3_key_find
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L112
	movs	r3, #0
	str	r3, [r7, #2392]
.L112:
	ldr	r3, [r7, #2392]
	cmp	r3, #0
	beq	.L113
	addw	r2, r7, #2408
	addw	r3, r7, #2392
	mov	r1, r2
	mov	r0, r3
	bl	se3_key_equal
	mov	r3, r0
	strb	r3, [r7, #2455]
	ldrb	r3, [r7, #2455]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L113
	addw	r3, r7, #2392
	mov	r0, r3
	bl	se3_flash_it_delete
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L113
	ldr	r3, [r7, #2448]
	cmp	r3, #0
	beq	.L114
	ldr	r0, [r7, #2448]
	bl	free
.L114:
	movw	r3, #61441
	b	.L118
.L113:
	movs	r3, #0
	str	r3, [r7, #2392]
	ldrb	r3, [r7, #2455]
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L115
	addw	r2, r7, #2408
	addw	r3, r7, #2392
	mov	r1, r2
	mov	r0, r3
	bl	se3_key_new
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L115
	ldr	r3, [r7, #2448]
	cmp	r3, #0
	beq	.L116
	ldr	r0, [r7, #2448]
	bl	free
.L116:
	mov	r3, #400
	b	.L118
.L115:
	ldr	r3, [r7, #2448]
	cmp	r3, #0
	beq	.L117
	ldr	r0, [r7, #2448]
	bl	free
.L117:
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #2
	strh	r2, [r3]	@ movhi
	mov	r3, r7
	movs	r2, #2
	ldr	r1, .L119
	ldr	r0, [r3]
	bl	memcpy
	movs	r3, #0
.L118:
	mov	r0, r3
	addw	r7, r7, #2456
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L120:
	.align	2
.L119:
	.word	.LC1
	.size	insert_key, .-insert_key
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
