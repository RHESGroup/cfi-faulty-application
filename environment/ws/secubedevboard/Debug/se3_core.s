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
	.file	"se3_core.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	comm,108,4
	.comm	req_hdr,68,4
	.comm	resp_hdr,68,4
	.comm	se3_hello,32,4
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
	.comm	se3_sessions_buf,32768,4
	.comm	se3_sessions_index,400,4
	.section	.text.device_init,"ax",%progbits
	.align	1
	.global	device_init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	device_init, %function
device_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	se3_communication_core_init
	bl	se3_time_init
	bl	se3_flash_init
	bl	se3_dispatcher_init
	nop
	pop	{r7, pc}
	.size	device_init, .-device_init
	.section	.text.device_loop,"ax",%progbits
	.align	1
	.global	device_loop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	device_loop, %function
device_loop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
.L4:
	ldr	r3, .L5
	ldrb	r3, [r3, #77]
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L4
	ldr	r3, .L5
	movs	r2, #0
	strb	r2, [r3, #92]
	bl	se3_cmd_execute
	ldr	r3, .L5
	movs	r2, #0
	strb	r2, [r3, #77]
	ldr	r3, .L5
	movs	r2, #1
	strb	r2, [r3, #92]
	b	.L4
.L6:
	.align	2
.L5:
	.word	comm
	.size	device_loop, .-device_loop
	.section	.text.invalid_cmd_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	invalid_cmd_handler, %function
invalid_cmd_handler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	movw	r3, #61445
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	invalid_cmd_handler, .-invalid_cmd_handler
	.section	.text.se3_exec,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_exec, %function
se3_exec:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, .L16
	ldrh	r3, [r3, #4]
	mov	r0, r3
	bl	se3_req_len_data
	mov	r3, r0
	strh	r3, [r7, #18]	@ movhi
	ldrh	r3, [r7, #22]
	cmp	r3, #0
	bne	.L10
	ldr	r3, .L16+4
	ldr	r1, [r3, #84]
	ldr	r3, .L16+4
	ldr	r3, [r3, #100]
	add	r2, r7, #14
	ldrh	r0, [r7, #18]
	ldr	r4, [r7, #4]
	blx	r4
	mov	r3, r0
	strh	r3, [r7, #22]	@ movhi
.L10:
	ldr	r3, .L16+8
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L11
	movw	r3, #61441
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, .L16+8
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L12
.L11:
	ldrh	r3, [r7, #14]
	movw	r2, #7600
	cmp	r3, r2
	bls	.L12
	movw	r3, #61441
	strh	r3, [r7, #22]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #14]	@ movhi
.L12:
	ldr	r2, .L16+12
	ldrh	r3, [r7, #22]	@ movhi
	strh	r3, [r2, #2]	@ movhi
	ldrh	r3, [r7, #14]
	cmp	r3, #496
	bhi	.L13
	movs	r3, #1
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, .L16+4
	ldr	r3, [r3, #100]
	ldrh	r2, [r7, #14]
	add	r3, r3, r2
	ldrh	r2, [r7, #14]
	rsb	r2, r2, #496
	movs	r1, #0
	mov	r0, r3
	bl	memset
	b	.L14
.L13:
	ldrh	r3, [r7, #14]
	sub	r3, r3, #496
	strh	r3, [r7, #16]	@ movhi
	ldrh	r3, [r7, #16]
	lsrs	r3, r3, #2
	ldr	r2, .L16+16
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #5
	uxth	r3, r3
	adds	r3, r3, #1
	strh	r3, [r7, #20]	@ movhi
	ldrh	r2, [r7, #16]
	lsrs	r3, r2, #2
	ldr	r1, .L16+16
	umull	r1, r3, r1, r3
	lsrs	r1, r3, #5
	mov	r3, r1
	lsls	r3, r3, #7
	subs	r3, r3, r1
	lsls	r3, r3, #2
	subs	r3, r2, r3
	uxth	r3, r3
	cmp	r3, #0
	beq	.L14
	ldrh	r3, [r7, #20]
	adds	r3, r3, #1
	strh	r3, [r7, #20]	@ movhi
	ldr	r3, .L16+4
	ldr	r3, [r3, #100]
	ldrh	r2, [r7, #14]
	adds	r0, r3, r2
	ldrh	r2, [r7, #16]
	lsrs	r3, r2, #2
	ldr	r1, .L16+16
	umull	r1, r3, r1, r3
	lsrs	r1, r3, #5
	mov	r3, r1
	lsls	r3, r3, #7
	subs	r3, r3, r1
	lsls	r3, r3, #2
	subs	r3, r2, r3
	uxth	r3, r3
	rsb	r3, r3, #508
	mov	r2, r3
	movs	r1, #0
	bl	memset
.L14:
	ldrh	r3, [r7, #14]
	mov	r0, r3
	bl	se3_resp_len_data_and_headers
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L16+12
	strh	r2, [r3, #4]	@ movhi
	ldrh	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L17:
	.align	2
.L16:
	.word	req_hdr
	.word	comm
	.word	hwerror
	.word	resp_hdr
	.word	1082196485
	.size	se3_exec, .-se3_exec
	.section	.text.se3_cmd_execute,"ax",%progbits
	.align	1
	.global	se3_cmd_execute
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	se3_cmd_execute, %function
se3_cmd_execute:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #56
	movs	r3, #1
	strh	r3, [r7, #14]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #12]	@ movhi
	movs	r3, #0
	str	r3, [r7, #4]
	ldr	r3, .L35
	ldrh	r3, [r3, #4]
	lsrs	r3, r3, #9
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, .L35
	ldrh	r3, [r3, #4]
	ubfx	r3, r3, #0, #9
	uxth	r3, r3
	cmp	r3, #0
	beq	.L19
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L19:
	ldrh	r3, [r7, #14]
	cmp	r3, #15
	bls	.L20
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	b	.L21
.L20:
	movs	r3, #1
	str	r3, [r7, #8]
	b	.L22
.L24:
	ldr	r2, .L35
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	ldr	r2, [r2, r3, lsl #2]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldr	r1, .L35
	adds	r3, r3, #2
	ldr	r3, [r1, r3, lsl #2]
	adds	r3, r3, #1
	cmp	r2, r3
	beq	.L23
	movs	r3, #0
	strh	r3, [r7, #12]	@ movhi
	b	.L21
.L23:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L22:
	ldrh	r3, [r7, #14]
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bcc	.L24
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L34
	ldr	r3, .L35
	ldrh	r3, [r3]
	subs	r3, r3, #1
	cmp	r3, #3
	bhi	.L26
	adr	r2, .L28
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L28:
	.word	.L31+1
	.word	.L30+1
	.word	.L29+1
	.word	.L27+1
	.p2align 1
.L29:
	ldr	r6, .L35
	mov	r5, sp
	add	r4, r6, #16
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r4!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldr	r3, [r4]
	str	r3, [r5]
	ldm	r6, {r0, r1, r2, r3}
	bl	set_req_hdr
	ldr	r3, .L35+4
	str	r3, [r7, #4]
	b	.L25
.L30:
	ldr	r3, .L35+8
	str	r3, [r7, #4]
	b	.L25
.L31:
	ldr	r3, .L35+12
	str	r3, [r7, #4]
	b	.L25
.L27:
	ldr	r3, .L35+16
	str	r3, [r7, #4]
	b	.L25
.L26:
	ldr	r3, .L35+20
	str	r3, [r7, #4]
	b	.L25
.L34:
	nop
.L25:
	ldr	r0, [r7, #4]
	bl	se3_exec
	mov	r3, r0
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, .L35
	ldr	r3, [r3, #8]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L32
.L33:
	ldr	r1, .L35+24
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	ldr	r2, [r7]
	str	r2, [r1, r3, lsl #2]
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L32:
	ldrh	r3, [r7, #12]
	ldr	r2, [r7, #8]
	cmp	r2, r3
	bcc	.L33
	nop
.L21:
	ldrh	r3, [r7, #12]
	rsb	r3, r3, #32
	mov	r2, #-1
	lsr	r3, r2, r3
	ldr	r2, .L35+28
	str	r3, [r2, #96]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L36:
	.align	2
.L35:
	.word	req_hdr
	.word	dispatcher_call
	.word	echo
	.word	factory_init
	.word	bootmode_reset
	.word	invalid_cmd_handler
	.word	resp_hdr
	.word	comm
	.size	se3_cmd_execute, .-se3_cmd_execute
	.section	.text.echo,"ax",%progbits
	.align	1
	.global	echo
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	echo, %function
echo:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	mov	r2, r3
	ldr	r1, [r7, #8]
	ldr	r0, [r7]
	bl	memcpy
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	echo, .-echo
	.section	.text.factory_init,"ax",%progbits
	.align	1
	.global	factory_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	factory_init, %function
factory_init:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #8]
	str	r3, [r7, #36]
	ldr	r3, .L45
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L40
	movw	r3, #61444
	b	.L44
.L40:
	add	r3, r7, #20
	mov	r0, r3
	bl	se3_flash_it_init
	add	r3, r7, #20
	movs	r2, #32
	movs	r1, #1
	mov	r0, r3
	bl	se3_flash_it_new
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L42
	movw	r3, #61441
	b	.L44
.L42:
	add	r0, r7, #20
	movs	r3, #32
	ldr	r2, [r7, #36]
	movs	r1, #0
	bl	se3_flash_it_write
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L43
	movw	r3, #61441
	b	.L44
.L43:
	ldr	r3, .L45
	ldr	r2, [r7, #36]
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
	ldr	r3, .L45
	movs	r2, #1
	strb	r2, [r3, #32]
	movs	r3, #0
.L44:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L46:
	.align	2
.L45:
	.word	serial
	.size	factory_init, .-factory_init
	.section	.text.bootmode_reset,"ax",%progbits
	.align	1
	.global	bootmode_reset
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	bootmode_reset, %function
bootmode_reset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r0	@ movhi
	strh	r3, [r7, #14]	@ movhi
	movs	r1, #64
	ldr	r0, .L50
	bl	se3_flash_bootmode_reset
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L48
	movw	r3, #61441
	b	.L49
.L48:
	movs	r3, #0
.L49:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L51:
	.align	2
.L50:
	.word	134348800
	.size	bootmode_reset, .-bootmode_reset
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
