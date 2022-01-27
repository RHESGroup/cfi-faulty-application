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
	.file	"usbd_ctlreq.c"
	.text
	.section	.text.USBD_StdDevReq,"ax",%progbits
	.align	1
	.global	USBD_StdDevReq
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_StdDevReq, %function
USBD_StdDevReq:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #9
	bhi	.L2
	adr	r2, .L4
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L4:
	.word	.L10+1
	.word	.L9+1
	.word	.L2+1
	.word	.L8+1
	.word	.L2+1
	.word	.L7+1
	.word	.L6+1
	.word	.L2+1
	.word	.L5+1
	.word	.L3+1
	.p2align 1
.L6:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_GetDescriptor
	b	.L11
.L7:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_SetAddress
	b	.L11
.L3:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_SetConfig
	b	.L11
.L5:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_GetConfig
	b	.L11
.L10:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_GetStatus
	b	.L11
.L8:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_SetFeature
	b	.L11
.L9:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_ClrFeature
	b	.L11
.L2:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	nop
.L11:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_StdDevReq, .-USBD_StdDevReq
	.section	.text.USBD_StdItfReq,"ax",%progbits
	.align	1
	.global	USBD_StdItfReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_StdItfReq, %function
USBD_StdItfReq:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L14
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	uxtb	r3, r3
	cmp	r3, #1
	bhi	.L15
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #0
	bne	.L19
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L19
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L19
.L15:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L19
.L14:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L17
.L19:
	nop
.L17:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_StdItfReq, .-USBD_StdItfReq
	.section	.text.USBD_StdEPReq,"ax",%progbits
	.align	1
	.global	USBD_StdEPReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_StdEPReq, %function
USBD_StdEPReq:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	strb	r3, [r7, #14]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #96
	cmp	r3, #32
	bne	.L21
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
	movs	r3, #0
	b	.L22
.L21:
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L23
	cmp	r3, #3
	bgt	.L53
	cmp	r3, #0
	beq	.L25
	cmp	r3, #1
	beq	.L26
	b	.L53
.L23:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L27
	cmp	r3, #3
	beq	.L28
	b	.L50
.L27:
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L54
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #128
	beq	.L54
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_StallEP
	b	.L54
.L28:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L32
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #128
	beq	.L32
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_StallEP
.L32:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L31
.L50:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L31
.L54:
	nop
.L31:
	b	.L33
.L26:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L34
	cmp	r3, #3
	beq	.L35
	b	.L51
.L34:
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L55
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #128
	beq	.L55
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_StallEP
	b	.L55
.L35:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L56
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	and	r3, r3, #127
	cmp	r3, #0
	beq	.L40
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_ClearStallEP
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
.L40:
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L56
.L51:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L38
.L55:
	nop
	b	.L33
.L56:
	nop
.L38:
	b	.L33
.L25:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L41
	cmp	r3, #3
	beq	.L42
	b	.L52
.L41:
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	and	r3, r3, #127
	cmp	r3, #0
	beq	.L57
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_StallEP
	b	.L57
.L42:
	ldrsb	r3, [r7, #14]
	cmp	r3, #0
	bge	.L46
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	and	r3, r3, #127
	adds	r3, r3, #1
	lsls	r3, r3, #4
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	b	.L47
.L46:
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	and	r3, r3, #127
	adds	r3, r3, #16
	lsls	r3, r3, #4
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
.L47:
	str	r3, [r7, #8]
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_IsStallEP
	mov	r3, r0
	cmp	r3, #0
	beq	.L48
	ldr	r3, [r7, #8]
	movs	r2, #1
	str	r2, [r3]
	b	.L49
.L48:
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3]
.L49:
	ldr	r3, [r7, #8]
	movs	r2, #2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L45
.L52:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L45
.L57:
	nop
.L45:
	b	.L33
.L53:
	nop
.L33:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
.L22:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_StdEPReq, .-USBD_StdEPReq
	.section	.text.USBD_GetDescriptor,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_GetDescriptor, %function
USBD_GetDescriptor:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	subs	r3, r3, #1
	cmp	r3, #6
	bhi	.L59
	adr	r2, .L61
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L61:
	.word	.L65+1
	.word	.L64+1
	.word	.L63+1
	.word	.L59+1
	.word	.L59+1
	.word	.L62+1
	.word	.L60+1
	.p2align 1
.L65:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L66
.L64:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L67
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #40]
	add	r2, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	movs	r2, #2
	strb	r2, [r3]
	b	.L66
.L67:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #44]
	add	r2, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	movs	r2, #2
	strb	r2, [r3]
	b	.L66
.L63:
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r3, r3
	cmp	r3, #5
	bhi	.L69
	adr	r2, .L71
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L71:
	.word	.L76+1
	.word	.L75+1
	.word	.L74+1
	.word	.L73+1
	.word	.L72+1
	.word	.L70+1
	.p2align 1
.L76:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L75:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L74:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L73:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L72:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L70:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	add	r1, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L77
.L69:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L58
.L77:
	b	.L66
.L62:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L79
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #52]
	add	r2, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	b	.L66
.L79:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L58
.L60:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L80
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #48]
	add	r2, r7, #10
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	movs	r2, #7
	strb	r2, [r3]
	b	.L66
.L80:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L58
.L59:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L58
.L66:
	ldrh	r3, [r7, #10]
	cmp	r3, #0
	beq	.L58
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #0
	beq	.L58
	ldr	r3, [r7]
	ldrh	r2, [r3, #6]
	ldrh	r3, [r7, #10]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	ldrh	r3, [r7, #10]
	mov	r2, r3
	ldr	r1, [r7, #12]
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
.L58:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_GetDescriptor, .-USBD_GetDescriptor
	.section	.text.USBD_SetAddress,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_SetAddress, %function
USBD_SetAddress:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r3, r3
	and	r3, r3, #127
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L85
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L88
.L85:
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #15]
	strb	r2, [r3, #510]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_SetUSBAddress
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L87
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #508]
	b	.L88
.L87:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #508]
	b	.L88
.L84:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	nop
.L88:
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_SetAddress, .-USBD_SetAddress
	.section	.text.USBD_SetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_SetConfig, %function
USBD_SetConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxtb	r2, r3
	ldr	r3, .L103
	strb	r2, [r3]
	ldr	r3, .L103
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L90
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L89
.L90:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L92
	cmp	r3, #3
	beq	.L93
	b	.L102
.L92:
	ldr	r3, .L103
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L95
	ldr	r3, .L103
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #3
	strb	r2, [r3, #508]
	ldr	r3, .L103
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_SetClassConfig
	mov	r3, r0
	cmp	r3, #2
	bne	.L96
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L89
.L96:
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L89
.L95:
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L89
.L93:
	ldr	r3, .L103
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L98
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #508]
	ldr	r3, .L103
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, .L103
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_ClrClassConfig
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L89
.L98:
	ldr	r3, .L103
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	beq	.L100
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_ClrClassConfig
	ldr	r3, .L103
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, .L103
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_SetClassConfig
	mov	r3, r0
	cmp	r3, #2
	bne	.L101
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L89
.L101:
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L89
.L100:
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L89
.L102:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	nop
.L89:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L104:
	.align	2
.L103:
	.word	cfgidx.10185
	.size	USBD_SetConfig, .-USBD_SetConfig
	.section	.text.USBD_GetConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_GetConfig, %function
USBD_GetConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3, #6]
	cmp	r3, #1
	beq	.L106
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L112
.L106:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L108
	cmp	r3, #3
	beq	.L109
	b	.L111
.L108:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	movs	r2, #1
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L107
.L109:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	movs	r2, #1
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L107
.L111:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	nop
.L107:
.L112:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_GetConfig, .-USBD_GetConfig
	.section	.text.USBD_GetStatus,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_GetStatus, %function
USBD_GetStatus:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	subs	r3, r3, #2
	cmp	r3, #1
	bhi	.L114
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #516]
	cmp	r3, #0
	beq	.L115
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orr	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L115:
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	movs	r2, #2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendData
	b	.L116
.L114:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	nop
.L116:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_GetStatus, .-USBD_GetStatus
	.section	.text.USBD_SetFeature,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_SetFeature, %function
USBD_SetFeature:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #1
	bne	.L119
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #516]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
.L119:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_SetFeature, .-USBD_SetFeature
	.section	.text.USBD_ClrFeature,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_ClrFeature, %function
USBD_ClrFeature:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	subs	r3, r3, #2
	cmp	r3, #1
	bhi	.L121
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	cmp	r3, #1
	bne	.L124
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #516]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	bl	USBD_CtlSendStatus
	b	.L124
.L121:
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	USBD_CtlError
	b	.L123
.L124:
	nop
.L123:
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_ClrFeature, .-USBD_ClrFeature
	.section	.text.USBD_ParseSetupRequest,"ax",%progbits
	.align	1
	.global	USBD_ParseSetupRequest
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_ParseSetupRequest, %function
USBD_ParseSetupRequest:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldr	r3, [r7]
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #1]
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r3, r3
	lsls	r3, r3, #8
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r3, r3
	lsls	r3, r3, #8
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r3, r3
	lsls	r3, r3, #8
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #6]	@ movhi
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_ParseSetupRequest, .-USBD_ParseSetupRequest
	.section	.text.USBD_CtlError,"ax",%progbits
	.align	1
	.global	USBD_CtlError
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_CtlError, %function
USBD_CtlError:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r1, #128
	ldr	r0, [r7, #4]
	bl	USBD_LL_StallEP
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	USBD_LL_StallEP
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlError, .-USBD_CtlError
	.section	.text.USBD_GetString,"ax",%progbits
	.align	1
	.global	USBD_GetString
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_GetString, %function
USBD_GetString:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L131
	ldr	r0, [r7, #12]
	bl	USBD_GetLen
	mov	r3, r0
	adds	r3, r3, #1
	uxth	r3, r3
	lsls	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r3]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r1, r3, #1
	strb	r1, [r7, #23]
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r2, r3, #1
	strb	r2, [r7, #23]
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #3
	strb	r2, [r3]
	b	.L129
.L130:
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	adds	r1, r2, #1
	strb	r1, [r7, #23]
	mov	r1, r2
	ldr	r2, [r7, #8]
	add	r2, r2, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r2, r3, #1
	strb	r2, [r7, #23]
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L129:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L130
.L131:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_GetString, .-USBD_GetString
	.section	.text.USBD_GetLen,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_GetLen, %function
USBD_GetLen:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L133
.L134:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L133:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L134
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_GetLen, .-USBD_GetLen
	.section	.bss.cfgidx.10185,"aw",%nobits
	.type	cfgidx.10185, %object
	.size	cfgidx.10185, 1
cfgidx.10185:
	.space	1
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
