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
	.file	"advParser.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.comm	se3_algo_impl_t,1,1
	.section	.text.lookForDeviceOfInterest,"ax",%progbits
	.align	1
	.global	lookForDeviceOfInterest
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	lookForDeviceOfInterest, %function
lookForDeviceOfInterest:
	@ args = 0, pretend = 0, frame = 560
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #560
	add	r7, sp, #0
	add	r3, r7, #12
	str	r0, [r3]
	add	r3, r7, #8
	str	r1, [r3]
	adds	r3, r7, #4
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #544]
	movs	r3, #0
	strh	r3, [r7, #558]	@ movhi
	add	r3, r7, #20
	adds	r3, r3, #7
	str	r3, [r7, #552]
	add	r3, r7, #16
	ldr	r2, [r7, #552]
	str	r2, [r3]
	add	r2, r7, #20
	add	r3, r7, #8
	mov	r1, r2
	ldr	r0, [r3]
	bl	isBLEScan
	b	.L2
.L4:
	add	r3, r7, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #544]
	adds	r1, r3, #1
	str	r1, [r7, #544]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #548]
	add	r2, r7, #544
	add	r3, r7, #16
	ldr	r1, [r7, #548]
	mov	r0, r3
	bl	getServiceUUID
	mov	r3, r0
	strh	r3, [r7, #558]	@ movhi
.L2:
	ldrh	r3, [r7, #558]
	cmp	r3, #0
	bne	.L3
	add	r3, r7, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #552]
	subs	r3, r2, r3
	add	r2, r7, #20
	ldrb	r2, [r2, #263]	@ zero_extendqisi2
	cmp	r3, r2
	blt	.L4
.L3:
	ldrh	r3, [r7, #558]
	cmp	r3, #0
	bne	.L5
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3]
	b	.L6
.L5:
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #1
	strb	r2, [r3]
.L6:
	add	r3, r7, #12
	ldr	r2, [r3]
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	movw	r3, #522
	mov	r2, r3
	bl	memcpy
	add	r3, r7, #12
	ldr	r0, [r3]
	add	r7, r7, #560
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	lookForDeviceOfInterest, .-lookForDeviceOfInterest
	.section	.rodata
	.align	2
.LC0:
	.ascii	"+BLESCAN\000"
	.section	.text.isBLEScan,"ax",%progbits
	.align	1
	.global	isBLEScan
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	isBLEScan, %function
isBLEScan:
	@ args = 0, pretend = 0, frame = 552
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #556
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	mov	r3, r7
	str	r1, [r3]
	adds	r3, r7, #4
	movs	r2, #8
	ldr	r1, .L23
	ldr	r0, [r3]
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L9
	adds	r3, r7, #4
	adds	r2, r7, #4
	ldr	r2, [r2]
	adds	r2, r2, #8
	str	r2, [r3]
	adds	r3, r7, #4
	movs	r2, #0
	movs	r1, #44
	ldr	r0, [r3]
	bl	split_string
	str	r0, [r7, #540]
	ldr	r3, [r7, #540]
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #34
	mov	r0, r3
	bl	split_string
	mov	r3, r0
	ldr	r3, [r3, #4]
	str	r3, [r7, #536]
	movs	r2, #0
	movs	r1, #58
	ldr	r0, [r7, #536]
	bl	split_string
	str	r0, [r7, #532]
	movs	r3, #0
	str	r3, [r7, #548]
	b	.L10
.L11:
	ldr	r3, [r7, #548]
	lsls	r3, r3, #2
	ldr	r2, [r7, #532]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	string_to_hex
	mov	r3, r0
	mov	r1, r3
	mov	r3, r7
	ldr	r2, [r3]
	ldr	r3, [r7, #548]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #548]
	adds	r3, r3, #1
	str	r3, [r7, #548]
.L10:
	ldr	r3, [r7, #548]
	cmp	r3, #5
	ble	.L11
	ldr	r3, [r7, #540]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #528]
	mov	r3, r7
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3, #6]
	movs	r3, #10
	str	r3, [r7, #544]
	ldr	r3, [r7, #528]
	subs	r3, r3, #1
	str	r3, [r7, #548]
	b	.L12
.L13:
	mov	r3, r7
	ldr	r3, [r3]
	ldrsb	r3, [r3, #6]
	uxtb	r2, r3
	ldr	r3, [r7, #540]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [r7, #528]
	ldr	r1, [r7, #548]
	subs	r1, r0, r1
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	uxtb	r1, r3
	ldr	r3, [r7, #544]
	uxtb	r3, r3
	smulbb	r3, r1, r3
	uxtb	r3, r3
	add	r3, r3, r2
	uxtb	r3, r3
	sxtb	r2, r3
	mov	r3, r7
	ldr	r3, [r3]
	strb	r2, [r3, #6]
	ldr	r3, [r7, #544]
	ldr	r2, .L23+4
	smull	r1, r2, r2, r3
	asrs	r2, r2, #2
	asrs	r3, r3, #31
	subs	r3, r2, r3
	str	r3, [r7, #544]
	ldr	r3, [r7, #548]
	subs	r3, r3, #1
	str	r3, [r7, #548]
.L12:
	ldr	r3, [r7, #548]
	cmp	r3, #0
	bge	.L13
	mov	r3, r7
	ldr	r3, [r3]
	ldrsb	r3, [r3, #6]
	uxtb	r3, r3
	rsbs	r3, r3, #0
	uxtb	r3, r3
	sxtb	r2, r3
	mov	r3, r7
	ldr	r3, [r3]
	strb	r2, [r3, #6]
	ldr	r3, [r7, #540]
	adds	r3, r3, #8
	ldr	r2, [r3]
	add	r3, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	strcpy
	movs	r3, #0
	str	r3, [r7, #548]
	b	.L14
.L15:
	add	r2, r7, #8
	ldr	r3, [r7, #548]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #524]
	ldr	r3, [r7, #548]
	adds	r3, r3, #1
	add	r2, r7, #8
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	strb	r3, [r7, #525]
	ldr	r3, [r7, #548]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r4, r3
	add	r3, r7, #524
	mov	r0, r3
	bl	string_to_hex
	mov	r3, r0
	mov	r2, r3
	mov	r3, r7
	ldr	r3, [r3]
	add	r3, r3, r4
	strb	r2, [r3, #7]
	ldr	r3, [r7, #548]
	adds	r3, r3, #2
	str	r3, [r7, #548]
.L14:
	add	r2, r7, #8
	ldr	r3, [r7, #548]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L15
	ldr	r3, [r7, #548]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	uxtb	r2, r3
	mov	r3, r7
	ldr	r3, [r3]
	strb	r2, [r3, #263]
	ldr	r3, [r7, #540]
	adds	r3, r3, #12
	ldr	r2, [r3]
	add	r3, r7, #8
	mov	r1, r2
	mov	r0, r3
	bl	strcpy
	movs	r3, #0
	str	r3, [r7, #548]
	b	.L16
.L17:
	add	r2, r7, #8
	ldr	r3, [r7, #548]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #520]
	ldr	r3, [r7, #548]
	adds	r3, r3, #1
	add	r2, r7, #8
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	strb	r3, [r7, #521]
	ldr	r3, [r7, #548]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r4, r3
	add	r3, r7, #520
	mov	r0, r3
	bl	string_to_hex
	mov	r3, r0
	mov	r2, r3
	mov	r3, r7
	ldr	r3, [r3]
	add	r3, r3, r4
	strb	r2, [r3, #264]
	ldr	r3, [r7, #548]
	adds	r3, r3, #2
	str	r3, [r7, #548]
.L16:
	add	r2, r7, #8
	ldr	r3, [r7, #548]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L17
	ldr	r3, [r7, #548]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	uxtb	r2, r3
	mov	r3, r7
	ldr	r3, [r3]
	strb	r2, [r3, #520]
	ldr	r3, [r7, #540]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	uxtb	r2, r3
	mov	r3, r7
	ldr	r3, [r3]
	strb	r2, [r3, #521]
	movs	r3, #0
	str	r3, [r7, #548]
	b	.L18
.L19:
	ldr	r3, [r7, #548]
	lsls	r3, r3, #2
	ldr	r2, [r7, #540]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	free
	ldr	r3, [r7, #548]
	lsls	r3, r3, #2
	ldr	r2, [r7, #540]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #548]
	adds	r3, r3, #1
	str	r3, [r7, #548]
.L18:
	ldr	r3, [r7, #548]
	cmp	r3, #4
	ble	.L19
	ldr	r0, [r7, #540]
	bl	free
	movs	r3, #0
	str	r3, [r7, #540]
	ldr	r0, [r7, #536]
	bl	free
	movs	r3, #0
	str	r3, [r7, #536]
	movs	r3, #0
	str	r3, [r7, #548]
	b	.L20
.L21:
	ldr	r3, [r7, #548]
	lsls	r3, r3, #2
	ldr	r2, [r7, #532]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	free
	ldr	r3, [r7, #548]
	lsls	r3, r3, #2
	ldr	r2, [r7, #532]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #548]
	adds	r3, r3, #1
	str	r3, [r7, #548]
.L20:
	ldr	r3, [r7, #548]
	cmp	r3, #5
	ble	.L21
	ldr	r0, [r7, #532]
	bl	free
	movs	r3, #0
	str	r3, [r7, #532]
	movs	r3, #1
	b	.L22
.L9:
	movs	r3, #0
.L22:
	mov	r0, r3
	add	r7, r7, #556
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L24:
	.align	2
.L23:
	.word	.LC0
	.word	1717986919
	.size	isBLEScan, .-isBLEScan
	.section	.text.getServiceUUID,"ax",%progbits
	.align	1
	.global	getServiceUUID
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	getServiceUUID, %function
getServiceUUID:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrb	r3, [r3]
	strb	r3, [r7, #21]
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L26
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #12]
	str	r1, [r2]
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	b	.L27
.L26:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L27:
	ldrh	r3, [r7, #22]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	getServiceUUID, .-getServiceUUID
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
