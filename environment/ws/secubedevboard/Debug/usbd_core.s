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
	.file	"usbd_core.c"
	.text
	.section	.text.USBD_Init,"ax",%progbits
	.align	1
	.global	USBD_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_Init, %function
USBD_Init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L2
	movs	r3, #2
	b	.L3
.L2:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #532]
	cmp	r3, #0
	beq	.L4
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #532]
.L4:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L5
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #528]
.L5:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #508]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #7]
	strb	r2, [r3]
	ldr	r0, [r7, #12]
	bl	USBD_LL_Init
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_Init, .-USBD_Init
	.section	.text.USBD_DeInit,"ax",%progbits
	.align	1
	.global	USBD_DeInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_DeInit, %function
USBD_DeInit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #508]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	uxtb	r2, r2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_Stop
	ldr	r0, [r7, #4]
	bl	USBD_LL_DeInit
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_DeInit, .-USBD_DeInit
	.section	.text.USBD_RegisterClass,"ax",%progbits
	.align	1
	.global	USBD_RegisterClass
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_RegisterClass, %function
USBD_RegisterClass:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L9
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #532]
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L10
.L9:
	movs	r3, #2
	strb	r3, [r7, #15]
.L10:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_RegisterClass, .-USBD_RegisterClass
	.section	.text.USBD_Start,"ax",%progbits
	.align	1
	.global	USBD_Start
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_Start, %function
USBD_Start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	USBD_LL_Start
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_Start, .-USBD_Start
	.section	.text.USBD_Stop,"ax",%progbits
	.align	1
	.global	USBD_Stop
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_Stop, %function
USBD_Stop:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	uxtb	r2, r2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_Stop
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_Stop, .-USBD_Stop
	.section	.text.USBD_RunTestMode,"ax",%progbits
	.align	1
	.global	USBD_RunTestMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_RunTestMode, %function
USBD_RunTestMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_RunTestMode, .-USBD_RunTestMode
	.section	.text.USBD_SetClassConfig,"ax",%progbits
	.align	1
	.global	USBD_SetClassConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_SetClassConfig, %function
USBD_SetClassConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #2
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L19
	movs	r3, #0
	strb	r3, [r7, #15]
.L19:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_SetClassConfig, .-USBD_SetClassConfig
	.section	.text.USBD_ClrClassConfig,"ax",%progbits
	.align	1
	.global	USBD_ClrClassConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_ClrClassConfig, %function
USBD_ClrClassConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #4]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_ClrClassConfig, .-USBD_ClrClassConfig
	.section	.text.USBD_LL_SetupStage,"ax",%progbits
	.align	1
	.global	USBD_LL_SetupStage
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_SetupStage, %function
USBD_LL_SetupStage:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	add	r3, r3, #520
	ldr	r1, [r7]
	mov	r0, r3
	bl	USBD_ParseSetupRequest
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #500]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #526]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #504]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #520]	@ zero_extendqisi2
	and	r3, r3, #31
	cmp	r3, #2
	beq	.L24
	cmp	r3, #2
	bgt	.L25
	cmp	r3, #0
	beq	.L26
	cmp	r3, #1
	beq	.L27
	b	.L25
.L26:
	ldr	r3, [r7, #4]
	add	r3, r3, #520
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_StdDevReq
	b	.L28
.L27:
	ldr	r3, [r7, #4]
	add	r3, r3, #520
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_StdItfReq
	b	.L28
.L24:
	ldr	r3, [r7, #4]
	add	r3, r3, #520
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_StdEPReq
	b	.L28
.L25:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #520]	@ zero_extendqisi2
	bic	r3, r3, #127
	uxtb	r3, r3
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_StallEP
	nop
.L28:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_SetupStage, .-USBD_LL_SetupStage
	.section	.text.USBD_LL_DataOutStage,"ax",%progbits
	.align	1
	.global	USBD_LL_DataOutStage
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_DataOutStage, %function
USBD_LL_DataOutStage:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L31
	ldr	r3, [r7, #12]
	add	r3, r3, #260
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #500]
	cmp	r3, #3
	bne	.L32
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bls	.L33
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	uxth	r3, r3
	mov	r2, r3
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	USBD_CtlContinueRx
	b	.L32
.L33:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L34
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #12]
	blx	r3
.L34:
	ldr	r0, [r7, #12]
	bl	USBD_CtlSendStatus
	b	.L32
.L31:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L32
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #24]
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r0, [r7, #12]
	blx	r3
.L32:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_DataOutStage, .-USBD_LL_DataOutStage
	.section	.text.USBD_LL_DataInStage,"ax",%progbits
	.align	1
	.global	USBD_LL_DataInStage
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_DataInStage, %function
USBD_LL_DataInStage:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L37
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #500]
	cmp	r3, #2
	bne	.L38
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bls	.L39
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	mov	r2, r3
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #12]
	bl	USBD_CtlContinueSendData
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	USBD_LL_PrepareReceive
	b	.L38
.L39:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #20]
	ldr	r2, [r2, #12]
	udiv	r1, r3, r2
	mul	r2, r2, r1
	subs	r3, r3, r2
	cmp	r3, #0
	bne	.L40
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bcc	.L40
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #504]
	cmp	r2, r3
	bcs	.L40
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	USBD_CtlContinueSendData
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #504]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	USBD_LL_PrepareReceive
	b	.L38
.L40:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L41
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	blx	r3
.L41:
	ldr	r0, [r7, #12]
	bl	USBD_CtlReceiveStatus
.L38:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #512]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L42
	ldr	r0, [r7, #12]
	bl	USBD_RunTestMode
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #512]
	b	.L42
.L37:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L42
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L42
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #20]
	ldrb	r2, [r7, #11]	@ zero_extendqisi2
	mov	r1, r2
	ldr	r0, [r7, #12]
	blx	r3
.L42:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_DataInStage, .-USBD_LL_DataInStage
	.section	.text.USBD_LL_Reset,"ax",%progbits
	.align	1
	.global	USBD_LL_Reset
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_Reset, %function
USBD_LL_Reset:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #64
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	USBD_LL_OpenEP
	ldr	r3, [r7, #4]
	movs	r2, #64
	str	r2, [r3, #272]
	movs	r3, #64
	movs	r2, #0
	movs	r1, #128
	ldr	r0, [r7, #4]
	bl	USBD_LL_OpenEP
	ldr	r3, [r7, #4]
	movs	r2, #64
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #508]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #536]
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	uxtb	r2, r2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
.L45:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_Reset, .-USBD_LL_Reset
	.section	.text.USBD_LL_SetSpeed,"ax",%progbits
	.align	1
	.global	USBD_LL_SetSpeed
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_SetSpeed, %function
USBD_LL_SetSpeed:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #3]
	strb	r2, [r3, #16]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_LL_SetSpeed, .-USBD_LL_SetSpeed
	.section	.text.USBD_LL_Suspend,"ax",%progbits
	.align	1
	.global	USBD_LL_Suspend
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_Suspend, %function
USBD_LL_Suspend:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #508]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #509]
	ldr	r3, [r7, #4]
	movs	r2, #4
	strb	r2, [r3, #508]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_LL_Suspend, .-USBD_LL_Suspend
	.section	.text.USBD_LL_Resume,"ax",%progbits
	.align	1
	.global	USBD_LL_Resume
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_Resume, %function
USBD_LL_Resume:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #509]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3, #508]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_LL_Resume, .-USBD_LL_Resume
	.section	.text.USBD_LL_SOF,"ax",%progbits
	.align	1
	.global	USBD_LL_SOF
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_SOF, %function
USBD_LL_SOF:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #508]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L54
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L54
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #4]
	blx	r3
.L54:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_SOF, .-USBD_LL_SOF
	.section	.text.USBD_LL_IsoINIncomplete,"ax",%progbits
	.align	1
	.global	USBD_LL_IsoINIncomplete
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_IsoINIncomplete, %function
USBD_LL_IsoINIncomplete:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_LL_IsoINIncomplete, .-USBD_LL_IsoINIncomplete
	.section	.text.USBD_LL_IsoOUTIncomplete,"ax",%progbits
	.align	1
	.global	USBD_LL_IsoOUTIncomplete
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_IsoOUTIncomplete, %function
USBD_LL_IsoOUTIncomplete:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_LL_IsoOUTIncomplete, .-USBD_LL_IsoOUTIncomplete
	.section	.text.USBD_LL_DevConnected,"ax",%progbits
	.align	1
	.global	USBD_LL_DevConnected
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_DevConnected, %function
USBD_LL_DevConnected:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USBD_LL_DevConnected, .-USBD_LL_DevConnected
	.section	.text.USBD_LL_DevDisconnected,"ax",%progbits
	.align	1
	.global	USBD_LL_DevDisconnected
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_LL_DevDisconnected, %function
USBD_LL_DevDisconnected:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #508]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	uxtb	r2, r2
	mov	r1, r2
	ldr	r0, [r7, #4]
	blx	r3
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_LL_DevDisconnected, .-USBD_LL_DevDisconnected
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
