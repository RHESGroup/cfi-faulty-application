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
	.file	"mainLoop.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.comm	se3_algo_impl_t,1,1
	.section	.rodata
	.align	2
.LC0:
	.ascii	"AT+BLEINIT=1\015\012\000"
	.align	2
.LC1:
	.ascii	"Cannot init BLE client, something went wrong\012\000"
	.align	2
.LC2:
	.ascii	"AT+BLESCAN=1,3\015\012\000"
	.align	2
.LC3:
	.ascii	"Cannot scan, please try again later\012\000"
	.align	2
.LC4:
	.ascii	"Found device that wants to enter\012\000"
	.align	2
.LC5:
	.ascii	"%.2x:%.2x:%.2x:%.2x:%.2x:%.2x\000"
	.align	2
.LC6:
	.ascii	"AT+BLECONN=%d,\"%s\",1,%d\015\012\000"
	.align	2
.LC7:
	.ascii	"It seems that something went wrong during connectio"
	.ascii	"n\012Please try again later\012\000"
	.align	2
.LC8:
	.ascii	"AT+BLEGATTCPRIMSRV=%d\015\012\000"
	.align	2
.LC9:
	.ascii	"Cannot scan for services\012\000"
	.align	2
.LC10:
	.ascii	"+BLEGATTCPRIMSRV\000"
	.align	2
.LC11:
	.ascii	"0xA002\000"
	.align	2
.LC12:
	.ascii	"Could not find the desired service\012\000"
	.section	.text.mainLoop,"ax",%progbits
	.align	1
	.global	mainLoop
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	mainLoop, %function
mainLoop:
	@ args = 0, pretend = 0, frame = 2000
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	subw	sp, sp, #2020
	add	r7, sp, #16
	add	r3, r7, #12
	str	r0, [r3]
	add	r3, r7, #8
	str	r1, [r3]
	adds	r3, r7, #4
	str	r2, [r3]
	movs	r3, #0
	strb	r3, [r7, #1998]
	movs	r3, #0
	strb	r3, [r7, #1999]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, .L22
	mov	r4, r3
	mov	r3, r2
	ldmia	r3!, {r0, r1, r2}
	str	r0, [r4]	@ unaligned
	str	r1, [r4, #4]	@ unaligned
	str	r2, [r4, #8]	@ unaligned
	ldrh	r3, [r3]	@ unaligned
	strh	r3, [r4, #12]	@ unaligned
	add	r3, r7, #8
	ldr	r3, [r3]
	movs	r2, #14
	str	r2, [r3, #1024]
	add	r3, r7, #8
	mov	r2, #1000
	movs	r1, #1
	ldr	r0, [r3]
	bl	sendCommand
	mov	r3, r0
	cmp	r3, #0
	bne	.L21
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, .L22+4
	mov	r0, r3
	bl	sprintf
	adds	r3, r7, #4
	movs	r1, #0
	ldr	r0, [r3]
	bl	logToDebugger
.L21:
	add	r3, r7, #436
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, .L22+8
	mov	r4, r3
	mov	r5, r2
	ldmia	r5!, {r0, r1, r2, r3}
	str	r0, [r4]	@ unaligned
	str	r1, [r4, #4]	@ unaligned
	str	r2, [r4, #8]	@ unaligned
	str	r3, [r4, #12]	@ unaligned
	add	r3, r7, #8
	ldr	r3, [r3]
	movs	r2, #16
	str	r2, [r3, #1024]
	add	r3, r7, #8
	movw	r2, #3000
	movs	r1, #1
	ldr	r0, [r3]
	bl	sendCommand
	mov	r3, r0
	cmp	r3, #0
	bne	.L5
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, .L22+12
	mov	r0, r3
	bl	sprintf
	adds	r3, r7, #4
	movs	r1, #0
	ldr	r0, [r3]
	bl	logToDebugger
	movs	r3, #255
	b	.L20
.L7:
	add	r1, r7, #444
	add	r3, r7, #12
	movs	r2, #0
	ldr	r0, [r3]
	bl	readLine
	mov	r3, r0
	cmp	r3, #0
	bne	.L6
	addw	r3, r7, #1468
	add	r2, r7, #436
	add	r1, r7, #444
	mov	r0, r3
	bl	lookForDeviceOfInterest
	add	r3, r7, #436
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L5
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, .L22+16
	mov	r0, r3
	bl	sprintf
	adds	r3, r7, #4
	movs	r1, #0
	ldr	r0, [r3]
	bl	logToDebugger
	b	.L5
.L6:
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, .L22+8
	mov	r4, r3
	mov	r5, r2
	ldmia	r5!, {r0, r1, r2, r3}
	str	r0, [r4]	@ unaligned
	str	r1, [r4, #4]	@ unaligned
	str	r2, [r4, #8]	@ unaligned
	str	r3, [r4, #12]	@ unaligned
	add	r3, r7, #8
	ldr	r3, [r3]
	movs	r2, #16
	str	r2, [r3, #1024]
	add	r3, r7, #8
	movw	r2, #3000
	movs	r1, #0
	ldr	r0, [r3]
	bl	sendCommand
	mov	r3, r0
	cmp	r3, #0
	bne	.L5
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, .L22+12
	mov	r0, r3
	bl	sprintf
	adds	r3, r7, #4
	movs	r1, #0
	ldr	r0, [r3]
	bl	logToDebugger
	movs	r3, #255
	b	.L20
.L5:
	add	r3, r7, #436
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L7
	addw	r3, r7, #1468
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r5, r3
	addw	r3, r7, #1468
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r6, r3
	addw	r3, r7, #1468
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	addw	r3, r7, #1468
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	mov	r1, r3
	addw	r3, r7, #1468
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r4, r3
	addw	r3, r7, #1468
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	add	r0, r7, #20
	str	r3, [sp, #12]
	str	r4, [sp, #8]
	str	r1, [sp, #4]
	str	r2, [sp]
	mov	r3, r6
	mov	r2, r5
	ldr	r1, .L22+20
	bl	sprintf
	ldrb	r2, [r7, #1998]	@ zero_extendqisi2
	add	r3, r7, #20
	add	r0, r7, #180
	movs	r1, #5
	str	r1, [sp]
	ldr	r1, .L22+24
	bl	sprintf
	add	r3, r7, #8
	ldr	r3, [r3]
	add	r2, r7, #180
	mov	r1, r2
	mov	r0, r3
	bl	sprintf
	add	r3, r7, #8
	mov	r2, #1000
	movs	r1, #1
	ldr	r0, [r3]
	bl	sendCommand
	mov	r3, r0
	cmp	r3, #0
	bne	.L8
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, .L22+28
	mov	r0, r3
	bl	sprintf
	adds	r3, r7, #4
	movs	r1, #0
	ldr	r0, [r3]
	bl	logToDebugger
	b	.L19
.L8:
	ldrb	r2, [r7, #1998]	@ zero_extendqisi2
	add	r3, r7, #180
	ldr	r1, .L22+32
	mov	r0, r3
	bl	sprintf
	add	r3, r7, #8
	ldr	r3, [r3]
	add	r2, r7, #180
	mov	r1, r2
	mov	r0, r3
	bl	sprintf
	add	r3, r7, #8
	mov	r2, #1000
	movs	r1, #0
	ldr	r0, [r3]
	bl	sendCommand
	mov	r3, r0
	cmp	r3, #0
	bne	.L11
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, .L22+36
	mov	r0, r3
	bl	sprintf
	adds	r3, r7, #4
	movs	r1, #0
	ldr	r0, [r3]
	bl	logToDebugger
	ldrb	r3, [r7, #1998]	@ zero_extendqisi2
	mov	r0, r3
	bl	safeExit
	b	.L19
.L15:
	add	r3, r7, #444
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	cmp	r3, #15
	bhi	.L12
	add	r3, r7, #444
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	b	.L13
.L12:
	movs	r3, #16
.L13:
	str	r3, [r7, #1992]
	ldr	r2, [r7, #1992]
	add	r3, r7, #444
	ldr	r1, .L22+40
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L11
	addw	r2, r7, #443
	add	r3, r7, #444
	ldr	r1, .L22+44
	mov	r0, r3
	bl	findService
	mov	r3, r0
	cmp	r3, #0
	bne	.L11
	movs	r3, #1
	strb	r3, [r7, #1999]
.L11:
	ldrb	r3, [r7, #1999]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L14
	add	r1, r7, #444
	add	r3, r7, #12
	movs	r2, #0
	ldr	r0, [r3]
	bl	readLine
	mov	r3, r0
	cmp	r3, #0
	beq	.L15
.L14:
	ldrb	r3, [r7, #1999]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L16
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, .L22+48
	mov	r0, r3
	bl	sprintf
	adds	r3, r7, #4
	movs	r1, #0
	ldr	r0, [r3]
	bl	logToDebugger
	ldrb	r3, [r7, #1998]	@ zero_extendqisi2
	mov	r0, r3
	bl	safeExit
	b	.L19
.L16:
	addw	r3, r7, #443
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #1998]	@ zero_extendqisi2
	add	r3, r7, #52
	mov	r0, r3
	bl	readChar
	mov	r3, r0
	cmp	r3, #0
	bne	.L17
	addw	r3, r7, #443
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #1998]	@ zero_extendqisi2
	add	r0, r7, #8
	movs	r1, #0
	ldr	r0, [r0]
	bl	writeResponse
	b	.L18
.L17:
	addw	r3, r7, #443
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #1998]	@ zero_extendqisi2
	add	r0, r7, #8
	movs	r1, #1
	ldr	r0, [r0]
	bl	writeResponse
.L18:
	adds	r3, r7, #4
	movs	r1, #0
	ldr	r0, [r3]
	bl	logToDebugger
	ldrb	r3, [r7, #1998]	@ zero_extendqisi2
	mov	r0, r3
	bl	safeExit
.L19:
	b	.L21
.L20:
	mov	r0, r3
	addw	r7, r7, #2004
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L23:
	.align	2
.L22:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.size	mainLoop, .-mainLoop
	.section	.rodata
	.align	2
.LC13:
	.ascii	"AT+BLEDISCONN=%d\015\012\000"
	.section	.text.safeExit,"ax",%progbits
	.align	1
	.global	safeExit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	safeExit, %function
safeExit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r1, .L25
	ldr	r0, .L25+4
	bl	sprintf
	mov	r2, #1000
	movs	r1, #0
	ldr	r0, .L25+4
	bl	sendCommand
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L26:
	.align	2
.L25:
	.word	.LC13
	.word	commandBuffer
	.size	safeExit, .-safeExit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
