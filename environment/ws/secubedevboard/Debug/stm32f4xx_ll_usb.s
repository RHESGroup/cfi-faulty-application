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
	.file	"stm32f4xx_ll_usb.c"
	.text
	.section	.text.USB_CoreInit,"ax",%progbits
	.align	1
	.global	USB_CoreInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_CoreInit, %function
USB_CoreInit:
	@ args = 56, pretend = 16, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r0, r7, #20
	stm	r0, {r1, r2, r3}
	ldr	r3, [r7, #40]
	cmp	r3, #1
	bne	.L2
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	bic	r2, r3, #65536
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	bic	r3, r3, #4325376
	bic	r3, r3, #64
	ldr	r2, [r7, #4]
	str	r3, [r2, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	bic	r2, r3, #3145728
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #68]
	cmp	r3, #1
	bne	.L3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orr	r2, r3, #1048576
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L3:
	ldr	r0, [r7, #4]
	bl	USB_CoreReset
	b	.L4
.L2:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orr	r2, r3, #64
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	USB_CoreReset
	ldr	r3, [r7, #4]
	mov	r2, #65536
	str	r2, [r3, #56]
.L4:
	ldr	r3, [r7, #32]
	cmp	r3, #1
	bne	.L5
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orr	r2, r3, #12
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
.L5:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, lr}
	add	sp, sp, #16
	bx	lr
	.size	USB_CoreInit, .-USB_CoreInit
	.section	.text.USB_EnableGlobalInt,"ax",%progbits
	.align	1
	.global	USB_EnableGlobalInt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_EnableGlobalInt, %function
USB_EnableGlobalInt:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_EnableGlobalInt, .-USB_EnableGlobalInt
	.section	.text.USB_DisableGlobalInt,"ax",%progbits
	.align	1
	.global	USB_DisableGlobalInt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_DisableGlobalInt, %function
USB_DisableGlobalInt:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	bic	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_DisableGlobalInt, .-USB_DisableGlobalInt
	.section	.text.USB_SetCurrentMode,"ax",%progbits
	.align	1
	.global	USB_SetCurrentMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_SetCurrentMode, %function
USB_SetCurrentMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	bic	r2, r3, #1610612736
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L12
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orr	r2, r3, #536870912
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	b	.L13
.L12:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L13
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	orr	r2, r3, #1073741824
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L13:
	movs	r0, #50
	bl	HAL_Delay
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_SetCurrentMode, .-USB_SetCurrentMode
	.section	.text.USB_DevInit,"ax",%progbits
	.align	1
	.global	USB_DevInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_DevInit, %function
USB_DevInit:
	@ args = 56, pretend = 16, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r0, r7, #28
	stm	r0, {r1, r2, r3}
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	orr	r2, r3, #524288
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	orr	r2, r3, #2097152
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
.L16:
	ldr	r3, [r7, #4]
	add	r3, r3, #3584
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	mov	r1, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	mov	r2, r3
	ldr	r3, [r1]
	str	r3, [r2]
	ldr	r3, [r7, #48]
	cmp	r3, #1
	bne	.L17
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L18
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	USB_SetDevSpeed
	b	.L19
.L18:
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USB_SetDevSpeed
	b	.L19
.L17:
	movs	r1, #3
	ldr	r0, [r7, #4]
	bl	USB_SetDevSpeed
.L19:
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	USB_FlushTxFifo
	ldr	r0, [r7, #4]
	bl	USB_FlushRxFifo
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2, #16]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2, #20]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	mov	r2, r3
	mov	r3, #-1
	str	r3, [r2, #24]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2, #28]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L20
.L23:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	and	r3, r3, #-2147483648
	cmp	r3, #-2147483648
	bne	.L21
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	mov	r3, #1207959552
	str	r3, [r2]
	b	.L22
.L21:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
.L22:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2, #16]
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	movs	r3, #255
	str	r3, [r2, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L20:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #12]
	cmp	r2, r3
	bcc	.L23
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L24
.L27:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	and	r3, r3, #-2147483648
	cmp	r3, #-2147483648
	bne	.L25
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r3
	mov	r3, #1207959552
	str	r3, [r2]
	b	.L26
.L25:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
.L26:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2, #16]
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r3
	movs	r3, #255
	str	r3, [r2, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L24:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #12]
	cmp	r2, r3
	bcc	.L27
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #4]
	add	r2, r2, #2048
	bic	r3, r3, #256
	str	r3, [r2, #16]
	ldr	r3, [r7, #40]
	cmp	r3, #1
	bne	.L28
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	mov	r2, r3
	ldr	r3, .L33
	str	r3, [r2, #48]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #48]
	ldr	r2, [r7, #4]
	add	r2, r2, #2048
	orr	r3, r3, #65536
	orr	r3, r3, #3
	str	r3, [r2, #48]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #48]
	str	r3, [r7, #12]
.L28:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	mvn	r2, #1073741824
	str	r2, [r3, #20]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L29
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	orr	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
.L29:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, .L33+4
	orrs	r3, r3, r2
	ldr	r2, [r7, #4]
	str	r3, [r2, #24]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L30
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	orr	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
.L30:
	ldr	r3, [r7, #68]
	cmp	r3, #1
	bne	.L31
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	orr	r3, r3, #1073741824
	orr	r3, r3, #4
	ldr	r2, [r7, #4]
	str	r3, [r2, #24]
.L31:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, lr}
	add	sp, sp, #16
	bx	lr
.L34:
	.align	2
.L33:
	.word	8388864
	.word	-2143537152
	.size	USB_DevInit, .-USB_DevInit
	.section	.text.USB_FlushTxFifo,"ax",%progbits
	.align	1
	.global	USB_FlushTxFifo
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_FlushTxFifo, %function
USB_FlushTxFifo:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	lsls	r3, r3, #6
	orr	r2, r3, #32
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
.L38:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, .L39
	cmp	r3, r2
	bls	.L36
	movs	r3, #3
	b	.L37
.L36:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #32
	cmp	r3, #32
	beq	.L38
	movs	r3, #0
.L37:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L40:
	.align	2
.L39:
	.word	200000
	.size	USB_FlushTxFifo, .-USB_FlushTxFifo
	.section	.text.USB_FlushRxFifo,"ax",%progbits
	.align	1
	.global	USB_FlushRxFifo
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_FlushRxFifo, %function
USB_FlushRxFifo:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	movs	r2, #16
	str	r2, [r3, #16]
.L44:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, .L45
	cmp	r3, r2
	bls	.L42
	movs	r3, #3
	b	.L43
.L42:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #16
	cmp	r3, #16
	beq	.L44
	movs	r3, #0
.L43:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L46:
	.align	2
.L45:
	.word	200000
	.size	USB_FlushRxFifo, .-USB_FlushRxFifo
	.section	.text.USB_SetDevSpeed,"ax",%progbits
	.align	1
	.global	USB_SetDevSpeed
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_SetDevSpeed, %function
USB_SetDevSpeed:
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
	add	r3, r3, #2048
	ldr	r2, [r3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	orrs	r3, r3, r2
	str	r3, [r1]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_SetDevSpeed, .-USB_SetDevSpeed
	.section	.text.USB_GetDevSpeed,"ax",%progbits
	.align	1
	.global	USB_GetDevSpeed
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_GetDevSpeed, %function
USB_GetDevSpeed:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #8]
	and	r3, r3, #6
	cmp	r3, #0
	bne	.L50
	movs	r3, #0
	strb	r3, [r7, #15]
	b	.L51
.L50:
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #8]
	and	r3, r3, #6
	cmp	r3, #2
	beq	.L52
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #8]
	and	r3, r3, #6
	cmp	r3, #6
	bne	.L53
.L52:
	movs	r3, #3
	strb	r3, [r7, #15]
	b	.L51
.L53:
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #8]
	and	r3, r3, #6
	cmp	r3, #4
	bne	.L51
	movs	r3, #2
	strb	r3, [r7, #15]
.L51:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_GetDevSpeed, .-USB_GetDevSpeed
	.section	.text.USB_ActivateEndpoint,"ax",%progbits
	.align	1
	.global	USB_ActivateEndpoint
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_ActivateEndpoint, %function
USB_ActivateEndpoint:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L56
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	uxth	r3, r3
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	orrs	r3, r3, r2
	str	r3, [r1, #28]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	and	r3, r3, #32768
	cmp	r3, #0
	bne	.L57
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ubfx	r3, r3, #0, #11
	ldr	r1, [r7]
	ldrb	r1, [r1, #3]	@ zero_extendqisi2
	lsls	r1, r1, #18
	orrs	r3, r3, r1
	ldr	r1, [r7]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r1, r1, #22
	orrs	r3, r3, r1
	orrs	r3, r3, r2
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #268435456
	orr	r3, r3, #32768
	str	r3, [r2]
	b	.L57
.L56:
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	lsls	r3, r3, #16
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	orrs	r3, r3, r2
	str	r3, [r1, #28]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	and	r3, r3, #32768
	cmp	r3, #0
	bne	.L57
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ubfx	r3, r3, #0, #11
	ldr	r1, [r7]
	ldrb	r1, [r1, #3]	@ zero_extendqisi2
	lsls	r1, r1, #18
	orrs	r3, r3, r1
	orrs	r3, r3, r2
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2816
	orr	r3, r3, #268435456
	orr	r3, r3, #32768
	str	r3, [r2]
.L57:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_ActivateEndpoint, .-USB_ActivateEndpoint
	.section	.text.USB_ActivateDedicatedEndpoint,"ax",%progbits
	.align	1
	.global	USB_ActivateDedicatedEndpoint
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_ActivateDedicatedEndpoint, %function
USB_ActivateDedicatedEndpoint:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L60
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	and	r3, r3, #32768
	cmp	r3, #0
	bne	.L61
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ubfx	r3, r3, #0, #11
	ldr	r1, [r7]
	ldrb	r1, [r1, #3]	@ zero_extendqisi2
	lsls	r1, r1, #18
	orrs	r3, r3, r1
	ldr	r1, [r7]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r1, r1, #22
	orrs	r3, r3, r1
	orrs	r3, r3, r2
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #268435456
	orr	r3, r3, #32768
	str	r3, [r2]
.L61:
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ubfx	r3, r3, #0, #11
	ldr	r2, [r7]
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
	lsls	r2, r2, #18
	orrs	r3, r3, r2
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r2, r2, #22
	orrs	r2, r2, r3
	ldr	r3, .L65
	ldr	r3, [r3]
	orrs	r3, r3, r2
	orr	r3, r3, #268435456
	orr	r3, r3, #32768
	ldr	r2, .L65
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r2, [r3, #60]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	uxth	r3, r3
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	orrs	r3, r3, r2
	str	r3, [r1, #60]
	b	.L62
.L60:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	and	r3, r3, #32768
	cmp	r3, #0
	bne	.L63
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ubfx	r3, r3, #0, #11
	ldr	r1, [r7]
	ldrb	r1, [r1, #3]	@ zero_extendqisi2
	lsls	r1, r1, #18
	orrs	r3, r3, r1
	ldr	r1, [r7]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r1, r1, #22
	orrs	r3, r3, r1
	orrs	r3, r3, r2
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2816
	orr	r3, r3, #32768
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r3, r3, #2816
	ldr	r2, .L65
	str	r3, [r2]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r3
	ldr	r3, .L65
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ubfx	r3, r3, #0, #11
	ldr	r2, [r7]
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
	lsls	r2, r2, #18
	orrs	r3, r3, r2
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r2, r2, #22
	orrs	r2, r2, r3
	ldr	r3, .L65
	ldr	r3, [r3]
	orrs	r3, r3, r2
	orr	r3, r3, #32768
	ldr	r2, .L65
	str	r3, [r2]
.L63:
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r2, [r3, #60]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	lsls	r3, r3, #16
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	orrs	r3, r3, r2
	str	r3, [r1, #60]
.L62:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L66:
	.align	2
.L65:
	.word	debug.9278
	.size	USB_ActivateDedicatedEndpoint, .-USB_ActivateDedicatedEndpoint
	.section	.text.USB_DeactivateEndpoint,"ax",%progbits
	.align	1
	.global	USB_DeactivateEndpoint
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_DeactivateEndpoint, %function
USB_DeactivateEndpoint:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L68
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r2, [r3, #60]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	uxth	r3, r3
	mvns	r3, r3
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	ands	r3, r3, r2
	str	r3, [r1, #60]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	uxth	r3, r3
	mvns	r3, r3
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	ands	r3, r3, r2
	str	r3, [r1, #28]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2304
	bic	r3, r3, #32768
	str	r3, [r2]
	b	.L69
.L68:
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r2, [r3, #60]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	lsls	r3, r3, #16
	mvns	r3, r3
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	ands	r3, r3, r2
	str	r3, [r1, #60]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	lsls	r3, r3, #16
	mvns	r3, r3
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	ands	r3, r3, r2
	str	r3, [r1, #28]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2816
	bic	r3, r3, #32768
	str	r3, [r2]
.L69:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_DeactivateEndpoint, .-USB_DeactivateEndpoint
	.section	.text.USB_DeactivateDedicatedEndpoint,"ax",%progbits
	.align	1
	.global	USB_DeactivateDedicatedEndpoint
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_DeactivateDedicatedEndpoint, %function
USB_DeactivateDedicatedEndpoint:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L72
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2304
	bic	r3, r3, #32768
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	uxth	r3, r3
	mvns	r3, r3
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	ands	r3, r3, r2
	str	r3, [r1, #28]
	b	.L73
.L72:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2816
	bic	r3, r3, #32768
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	lsls	r3, r3, #16
	mvns	r3, r3
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	ands	r3, r3, r2
	str	r3, [r1, #28]
.L73:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_DeactivateDedicatedEndpoint, .-USB_DeactivateDedicatedEndpoint
	.section	.text.USB_EPStartXfer,"ax",%progbits
	.align	1
	.global	USB_EPStartXfer
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_EPStartXfer, %function
USB_EPStartXfer:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L76
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L77
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	bic	r3, r3, #534773760
	bic	r3, r3, #1572864
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #524288
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	lsrs	r3, r3, #19
	lsls	r3, r3, #19
	str	r3, [r2, #16]
	b	.L78
.L77:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	lsrs	r3, r3, #19
	lsls	r3, r3, #19
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	bic	r3, r3, #534773760
	bic	r3, r3, #1572864
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	add	r3, r3, r1
	subs	r1, r3, #1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	udiv	r3, r1, r3
	lsls	r1, r3, #19
	ldr	r3, .L90
	ands	r3, r3, r1
	ldr	r1, [r7, #8]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r0, r1, #5
	ldr	r1, [r7, #12]
	add	r1, r1, r0
	add	r1, r1, #2304
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	ubfx	r3, r3, #0, #19
	ldr	r1, [r7, #8]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r0, r1, #5
	ldr	r1, [r7, #12]
	add	r1, r1, r0
	add	r1, r1, #2304
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L78
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	bic	r3, r3, #1610612736
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #536870912
	str	r3, [r2, #16]
.L78:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L79
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	str	r3, [r2, #20]
	b	.L80
.L79:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L80
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7, #12]
	add	r3, r3, #2048
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	ldr	r1, [r7, #12]
	add	r1, r1, #2048
	orrs	r3, r3, r2
	str	r3, [r1, #52]
.L80:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L81
	ldr	r3, [r7, #12]
	add	r3, r3, #2048
	ldr	r3, [r3, #8]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L82
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #536870912
	str	r3, [r2]
	b	.L81
.L82:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #268435456
	str	r3, [r2]
.L81:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #-2080374784
	str	r3, [r2]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L83
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	uxth	r0, r3
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [r7, #12]
	bl	USB_WritePacket
	b	.L83
.L76:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2816
	lsrs	r3, r3, #19
	lsls	r3, r3, #19
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2816
	bic	r3, r3, #534773760
	bic	r3, r3, #1572864
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ubfx	r3, r3, #0, #19
	ldr	r1, [r7, #8]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r0, r1, #5
	ldr	r1, [r7, #12]
	add	r1, r1, r0
	add	r1, r1, #2816
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2816
	orr	r3, r3, #524288
	str	r3, [r2, #16]
	b	.L85
.L91:
	.align	2
.L90:
	.word	536346624
.L84:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	udiv	r3, r2, r3
	strh	r3, [r7, #22]	@ movhi
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r2, [r3, #16]
	ldrh	r3, [r7, #22]
	lsls	r3, r3, #19
	mov	r1, r3
	ldr	r3, .L92
	ands	r3, r3, r1
	ldr	r1, [r7, #8]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r0, r1, #5
	ldr	r1, [r7, #12]
	add	r1, r1, r0
	add	r1, r1, #2816
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldrh	r1, [r7, #22]
	mul	r3, r1, r3
	ubfx	r3, r3, #0, #19
	ldr	r1, [r7, #8]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r0, r1, #5
	ldr	r1, [r7, #12]
	add	r1, r1, r0
	add	r1, r1, #2816
	orrs	r3, r3, r2
	str	r3, [r1, #16]
.L85:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L86
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r1
	str	r2, [r3, #20]
.L86:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L87
	ldr	r3, [r7, #12]
	add	r3, r3, #2048
	ldr	r3, [r3, #8]
	and	r3, r3, #256
	cmp	r3, #0
	bne	.L88
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2816
	orr	r3, r3, #536870912
	str	r3, [r2]
	b	.L87
.L88:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2816
	orr	r3, r3, #268435456
	str	r3, [r2]
.L87:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2816
	orr	r3, r3, #-2080374784
	str	r3, [r2]
.L83:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L93:
	.align	2
.L92:
	.word	536346624
	.size	USB_EPStartXfer, .-USB_EPStartXfer
	.section	.text.USB_EP0StartXfer,"ax",%progbits
	.align	1
	.global	USB_EP0StartXfer
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_EP0StartXfer, %function
USB_EP0StartXfer:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L95
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L96
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	bic	r3, r3, #534773760
	bic	r3, r3, #1572864
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #524288
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	lsrs	r3, r3, #19
	lsls	r3, r3, #19
	str	r3, [r2, #16]
	b	.L97
.L96:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	lsrs	r3, r3, #19
	lsls	r3, r3, #19
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	bic	r3, r3, #534773760
	bic	r3, r3, #1572864
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L98
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	str	r2, [r3, #20]
.L98:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #524288
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	ubfx	r3, r3, #0, #19
	ldr	r1, [r7, #8]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r0, r1, #5
	ldr	r1, [r7, #12]
	add	r1, r1, r0
	add	r1, r1, #2304
	orrs	r3, r3, r2
	str	r3, [r1, #16]
.L97:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L99
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	str	r3, [r2, #20]
	b	.L100
.L99:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L100
	ldr	r3, [r7, #12]
	add	r3, r3, #2048
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movs	r3, #1
	lsls	r3, r3, r1
	ldr	r1, [r7, #12]
	add	r1, r1, #2048
	orrs	r3, r3, r2
	str	r3, [r1, #52]
.L100:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #-2080374784
	str	r3, [r2]
	b	.L101
.L95:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2816
	lsrs	r3, r3, #19
	lsls	r3, r3, #19
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2816
	bic	r3, r3, #534773760
	bic	r3, r3, #1572864
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L102
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	str	r2, [r3, #20]
.L102:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2816
	orr	r3, r3, #524288
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ubfx	r3, r3, #0, #19
	ldr	r1, [r7, #8]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r0, r1, #5
	ldr	r1, [r7, #12]
	add	r1, r1, r0
	add	r1, r1, #2816
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L103
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r1
	str	r2, [r3, #20]
.L103:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #2816
	orr	r3, r3, #-2080374784
	str	r3, [r2]
.L101:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_EP0StartXfer, .-USB_EP0StartXfer
	.section	.text.USB_WritePacket,"ax",%progbits
	.align	1
	.global	USB_WritePacket
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_WritePacket, %function
USB_WritePacket:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	mov	r3, r1
	strb	r3, [r7, #7]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #4]	@ movhi
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldrb	r3, [r7, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L106
	ldrh	r3, [r7, #4]
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L107
.L108:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	lsls	r2, r3, #12
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #4096
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #8]
.L107:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L108
.L106:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_WritePacket, .-USB_WritePacket
	.section	.text.USB_ReadPacket,"ax",%progbits
	.align	1
	.global	USB_ReadPacket
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_ReadPacket, %function
USB_ReadPacket:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	str	r3, [r7, #20]
	ldrh	r3, [r7, #6]
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L111
.L112:
	ldr	r3, [r7, #12]
	add	r3, r3, #4096
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #8]
.L111:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L112
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_ReadPacket, .-USB_ReadPacket
	.section	.text.USB_EPSetStall,"ax",%progbits
	.align	1
	.global	USB_EPSetStall
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_EPSetStall, %function
USB_EPSetStall:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L115
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L116
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2304
	bic	r3, r3, #1073741824
	str	r3, [r2]
.L116:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #2097152
	str	r3, [r2]
	b	.L117
.L115:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L118
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2816
	bic	r3, r3, #1073741824
	str	r3, [r2]
.L118:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2816
	orr	r3, r3, #2097152
	str	r3, [r2]
.L117:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_EPSetStall, .-USB_EPSetStall
	.section	.text.USB_EPClearStall,"ax",%progbits
	.align	1
	.global	USB_EPClearStall
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_EPClearStall, %function
USB_EPClearStall:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L121
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2304
	bic	r3, r3, #2097152
	str	r3, [r2]
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L122
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L123
.L122:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2304
	orr	r3, r3, #268435456
	str	r3, [r2]
	b	.L123
.L121:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2816
	bic	r3, r3, #2097152
	str	r3, [r2]
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L124
	ldr	r3, [r7]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L123
.L124:
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #2816
	orr	r3, r3, #268435456
	str	r3, [r2]
.L123:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_EPClearStall, .-USB_EPClearStall
	.section	.text.USB_StopDevice,"ax",%progbits
	.align	1
	.global	USB_StopDevice
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_StopDevice, %function
USB_StopDevice:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L127
.L128:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	mov	r2, r3
	movs	r3, #255
	str	r3, [r2, #8]
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	mov	r2, r3
	movs	r3, #255
	str	r3, [r2, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L127:
	ldr	r3, [r7, #12]
	cmp	r3, #14
	bls	.L128
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	mov	r2, r3
	mov	r3, #-1
	str	r3, [r2, #24]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2, #16]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2, #20]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2, #28]
	ldr	r0, [r7, #4]
	bl	USB_FlushRxFifo
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	USB_FlushTxFifo
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_StopDevice, .-USB_StopDevice
	.section	.text.USB_SetDevAddress,"ax",%progbits
	.align	1
	.global	USB_SetDevAddress
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_SetDevAddress, %function
USB_SetDevAddress:
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
	add	r3, r3, #2048
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	add	r2, r2, #2048
	bic	r3, r3, #2032
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r2, [r3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r3, r3, #4
	and	r3, r3, #2032
	ldr	r1, [r7, #4]
	add	r1, r1, #2048
	orrs	r3, r3, r2
	str	r3, [r1]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_SetDevAddress, .-USB_SetDevAddress
	.section	.text.USB_DevConnect,"ax",%progbits
	.align	1
	.global	USB_DevConnect
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_DevConnect, %function
USB_DevConnect:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	add	r2, r2, #2048
	bic	r3, r3, #2
	str	r3, [r2, #4]
	movs	r0, #3
	bl	HAL_Delay
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_DevConnect, .-USB_DevConnect
	.section	.text.USB_DevDisconnect,"ax",%progbits
	.align	1
	.global	USB_DevDisconnect
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_DevDisconnect, %function
USB_DevDisconnect:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	add	r2, r2, #2048
	orr	r3, r3, #2
	str	r3, [r2, #4]
	movs	r0, #3
	bl	HAL_Delay
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_DevDisconnect, .-USB_DevDisconnect
	.section	.text.USB_ReadInterrupts,"ax",%progbits
	.align	1
	.global	USB_ReadInterrupts
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_ReadInterrupts, %function
USB_ReadInterrupts:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_ReadInterrupts, .-USB_ReadInterrupts
	.section	.text.USB_ReadDevAllOutEpInterrupt,"ax",%progbits
	.align	1
	.global	USB_ReadDevAllOutEpInterrupt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_ReadDevAllOutEpInterrupt, %function
USB_ReadDevAllOutEpInterrupt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #16
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_ReadDevAllOutEpInterrupt, .-USB_ReadDevAllOutEpInterrupt
	.section	.text.USB_ReadDevAllInEpInterrupt,"ax",%progbits
	.align	1
	.global	USB_ReadDevAllInEpInterrupt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_ReadDevAllInEpInterrupt, %function
USB_ReadDevAllInEpInterrupt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_ReadDevAllInEpInterrupt, .-USB_ReadDevAllInEpInterrupt
	.section	.text.USB_ReadDevOutEPInterrupt,"ax",%progbits
	.align	1
	.global	USB_ReadDevOutEPInterrupt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_ReadDevOutEPInterrupt, %function
USB_ReadDevOutEPInterrupt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2816
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_ReadDevOutEPInterrupt, .-USB_ReadDevOutEPInterrupt
	.section	.text.USB_ReadDevInEPInterrupt,"ax",%progbits
	.align	1
	.global	USB_ReadDevInEPInterrupt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_ReadDevInEPInterrupt, %function
USB_ReadDevInEPInterrupt:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #52]
	str	r3, [r7, #16]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	ldr	r2, [r7, #16]
	lsr	r3, r2, r3
	lsls	r3, r3, #7
	uxtb	r3, r3
	ldr	r2, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #2304
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #20]
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_ReadDevInEPInterrupt, .-USB_ReadDevInEPInterrupt
	.section	.text.USB_ClearInterrupts,"ax",%progbits
	.align	1
	.global	USB_ClearInterrupts
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_ClearInterrupts, %function
USB_ClearInterrupts:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_ClearInterrupts, .-USB_ClearInterrupts
	.section	.text.USB_GetMode,"ax",%progbits
	.align	1
	.global	USB_GetMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_GetMode, %function
USB_GetMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_GetMode, .-USB_GetMode
	.section	.text.USB_ActivateSetup,"ax",%progbits
	.align	1
	.global	USB_ActivateSetup
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_ActivateSetup, %function
USB_ActivateSetup:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	add	r2, r2, #2304
	bic	r3, r3, #2040
	bic	r3, r3, #7
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #8]
	and	r3, r3, #6
	cmp	r3, #4
	bne	.L150
	ldr	r3, [r7, #4]
	add	r3, r3, #2304
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	add	r2, r2, #2304
	orr	r3, r3, #3
	str	r3, [r2]
.L150:
	ldr	r3, [r7, #4]
	add	r3, r3, #2048
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	add	r2, r2, #2048
	orr	r3, r3, #256
	str	r3, [r2, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_ActivateSetup, .-USB_ActivateSetup
	.section	.text.USB_EP0_OutStart,"ax",%progbits
	.align	1
	.global	USB_EP0_OutStart
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_EP0_OutStart, %function
USB_EP0_OutStart:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	add	r3, r3, #2816
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2, #16]
	ldr	r3, [r7, #12]
	add	r3, r3, #2816
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	add	r2, r2, #2816
	orr	r3, r3, #524288
	str	r3, [r2, #16]
	ldr	r3, [r7, #12]
	add	r3, r3, #2816
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	add	r2, r2, #2816
	orr	r3, r3, #24
	str	r3, [r2, #16]
	ldr	r3, [r7, #12]
	add	r3, r3, #2816
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	add	r2, r2, #2816
	orr	r3, r3, #1610612736
	str	r3, [r2, #16]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L153
	ldr	r3, [r7, #12]
	add	r3, r3, #2816
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r3, [r2, #20]
	ldr	r3, [r7, #12]
	add	r3, r3, #2816
	mov	r2, r3
	mov	r3, #-2147450880
	str	r3, [r2]
.L153:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_EP0_OutStart, .-USB_EP0_OutStart
	.section	.text.USB_CoreReset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_CoreReset, %function
USB_CoreReset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
.L158:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, .L161
	cmp	r3, r2
	bls	.L156
	movs	r3, #3
	b	.L157
.L156:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bge	.L158
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	orr	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
.L160:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, .L161
	cmp	r3, r2
	bls	.L159
	movs	r3, #3
	b	.L157
.L159:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	cmp	r3, #1
	beq	.L160
	movs	r3, #0
.L157:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L162:
	.align	2
.L161:
	.word	200000
	.size	USB_CoreReset, .-USB_CoreReset
	.section	.text.USB_HostInit,"ax",%progbits
	.align	1
	.global	USB_HostInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_HostInit, %function
USB_HostInit:
	@ args = 56, pretend = 16, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r0, r7, #28
	stm	r0, {r1, r2, r3}
	ldr	r3, [r7, #4]
	add	r3, r3, #3584
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	bic	r2, r3, #262144
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	bic	r2, r3, #524288
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	orr	r2, r3, #2097152
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #36]
	cmp	r3, #3
	bne	.L164
	ldr	r3, [r7, #4]
	cmp	r3, #1342177280
	beq	.L164
	ldr	r3, [r7, #4]
	add	r3, r3, #1024
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	add	r2, r2, #1024
	orr	r3, r3, #4
	str	r3, [r2]
	b	.L165
.L164:
	ldr	r3, [r7, #4]
	add	r3, r3, #1024
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	add	r2, r2, #1024
	bic	r3, r3, #4
	str	r3, [r2]
.L165:
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	USB_FlushTxFifo
	ldr	r0, [r7, #4]
	bl	USB_FlushRxFifo
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L166
.L167:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r2, r3
	mov	r3, #-1
	str	r3, [r2, #8]
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L166:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #12]
	cmp	r2, r3
	bcc	.L167
	movs	r1, #1
	ldr	r0, [r7, #4]
	bl	USB_DriveVbus
	movs	r0, #200
	bl	HAL_Delay
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #1342177280
	bne	.L168
	ldr	r3, [r7, #4]
	movs	r2, #128
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r2, .L172
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r2, .L172+4
	str	r2, [r3, #256]
	b	.L169
.L168:
	ldr	r3, [r7, #4]
	mov	r2, #512
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r2, .L172+8
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r2, .L172+12
	str	r2, [r3, #256]
.L169:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L170
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	orr	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
.L170:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, .L172+16
	orrs	r3, r3, r2
	ldr	r2, [r7, #4]
	str	r3, [r2, #24]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, lr}
	add	sp, sp, #16
	bx	lr
.L173:
	.align	2
.L172:
	.word	6291584
	.word	4194528
	.word	16777728
	.word	14680832
	.word	-1558183928
	.size	USB_HostInit, .-USB_HostInit
	.section	.text.USB_InitFSLSPClkSel,"ax",%progbits
	.align	1
	.global	USB_InitFSLSPClkSel
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_InitFSLSPClkSel, %function
USB_InitFSLSPClkSel:
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
	add	r3, r3, #1024
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	add	r2, r2, #1024
	bic	r3, r3, #3
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r3, r3, #1024
	ldr	r2, [r3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	and	r3, r3, #3
	ldr	r1, [r7, #4]
	add	r1, r1, #1024
	orrs	r3, r3, r2
	str	r3, [r1]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L175
	ldr	r3, [r7, #4]
	add	r3, r3, #1024
	mov	r2, r3
	movw	r3, #48000
	str	r3, [r2, #4]
	b	.L176
.L175:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L176
	ldr	r3, [r7, #4]
	add	r3, r3, #1024
	mov	r2, r3
	movw	r3, #6000
	str	r3, [r2, #4]
.L176:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_InitFSLSPClkSel, .-USB_InitFSLSPClkSel
	.section	.text.USB_ResetPort,"ax",%progbits
	.align	1
	.global	USB_ResetPort
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_ResetPort, %function
USB_ResetPort:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #1088
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #46
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r2, r2, #1088
	orr	r3, r3, #256
	str	r3, [r2]
	movs	r0, #10
	bl	HAL_Delay
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r2, r2, #1088
	bic	r3, r3, #256
	str	r3, [r2]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_ResetPort, .-USB_ResetPort
	.section	.text.USB_DriveVbus,"ax",%progbits
	.align	1
	.global	USB_DriveVbus
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_DriveVbus, %function
USB_DriveVbus:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	add	r3, r3, #1088
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #46
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	and	r3, r3, #4096
	cmp	r3, #0
	bne	.L181
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L181
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r2, r2, #1088
	orr	r3, r3, #4096
	str	r3, [r2]
.L181:
	ldr	r3, [r7, #12]
	and	r3, r3, #4096
	cmp	r3, #4096
	bne	.L182
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L182
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	add	r2, r2, #1088
	bic	r3, r3, #4096
	str	r3, [r2]
.L182:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_DriveVbus, .-USB_DriveVbus
	.section	.text.USB_GetHostSpeed,"ax",%progbits
	.align	1
	.global	USB_GetHostSpeed
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_GetHostSpeed, %function
USB_GetHostSpeed:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #1088
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #17
	and	r3, r3, #3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_GetHostSpeed, .-USB_GetHostSpeed
	.section	.text.USB_GetCurrentFrame,"ax",%progbits
	.align	1
	.global	USB_GetCurrentFrame
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_GetCurrentFrame, %function
USB_GetCurrentFrame:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #1024
	ldr	r3, [r3, #8]
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_GetCurrentFrame, .-USB_GetCurrentFrame
	.section	.text.USB_HC_Init,"ax",%progbits
	.align	1
	.global	USB_HC_Init
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_HC_Init, %function
USB_HC_Init:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #3]
	mov	r3, r1
	strb	r3, [r7, #2]
	mov	r3, r2
	strb	r3, [r7, #1]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r2, r3
	mov	r3, #-1
	str	r3, [r2, #8]
	ldrb	r3, [r7, #20]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L189
	adr	r2, .L191
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L191:
	.word	.L192+1
	.word	.L193+1
	.word	.L192+1
	.word	.L190+1
	.p2align 1
.L192:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r2, r3
	movw	r3, #1181
	str	r3, [r2, #12]
	ldrsb	r3, [r7, #2]
	cmp	r3, #0
	bge	.L194
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #256
	str	r3, [r2, #12]
	b	.L202
.L194:
	ldr	r3, [r7, #4]
	cmp	r3, #1342177280
	beq	.L202
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #96
	str	r3, [r2, #12]
	b	.L202
.L190:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r2, r3
	movw	r3, #1693
	str	r3, [r2, #12]
	ldrsb	r3, [r7, #2]
	cmp	r3, #0
	bge	.L203
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #256
	str	r3, [r2, #12]
	b	.L203
.L193:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r2, r3
	movw	r3, #549
	str	r3, [r2, #12]
	ldrsb	r3, [r7, #2]
	cmp	r3, #0
	bge	.L204
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #384
	str	r3, [r2, #12]
	b	.L204
.L202:
	nop
	b	.L189
.L203:
	nop
	b	.L189
.L204:
	nop
.L189:
	ldr	r3, [r7, #4]
	add	r3, r3, #1024
	ldr	r3, [r3, #24]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r2, r1, r2
	mov	r1, r2
	ldr	r2, [r7, #4]
	add	r2, r2, #1024
	orrs	r3, r3, r1
	str	r3, [r2, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	orr	r2, r3, #33554432
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	lsls	r3, r3, #22
	and	r2, r3, #532676608
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	lsls	r3, r3, #11
	and	r3, r3, #30720
	orrs	r2, r2, r3
	ldrsb	r3, [r7, #2]
	and	r3, r3, #32768
	orrs	r3, r3, r2
	ldrb	r2, [r7, #16]	@ zero_extendqisi2
	cmp	r2, #2
	bne	.L198
	mov	r2, #131072
	b	.L199
.L198:
	movs	r2, #0
.L199:
	orrs	r2, r2, r3
	ldrb	r3, [r7, #20]	@ zero_extendqisi2
	lsls	r3, r3, #18
	and	r3, r3, #786432
	orrs	r2, r2, r3
	ldrh	r3, [r7, #24]
	ubfx	r3, r3, #0, #11
	ldrb	r1, [r7, #3]	@ zero_extendqisi2
	lsls	r0, r1, #5
	ldr	r1, [r7, #4]
	add	r1, r1, r0
	add	r1, r1, #1280
	orrs	r3, r3, r2
	str	r3, [r1]
	ldrb	r3, [r7, #20]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L200
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #536870912
	str	r3, [r2]
.L200:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_HC_Init, .-USB_HC_Init
	.section	.text.USB_HC_StartXfer,"ax",%progbits
	.align	1
	.global	USB_HC_StartXfer
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_HC_StartXfer, %function
USB_HC_StartXfer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	strb	r3, [r7, #29]
	movs	r3, #0
	strh	r3, [r7, #26]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	mov	r3, #256
	strh	r3, [r7, #24]	@ movhi
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #1342177280
	beq	.L206
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L206
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L207
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L207
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	USB_DoPing
	movs	r3, #0
	b	.L208
.L207:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L206
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #1280
	bic	r3, r3, #96
	str	r3, [r2, #12]
	ldr	r3, [r7, #8]
	movs	r2, #0
	strb	r2, [r3, #5]
.L206:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L209
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #8]
	ldrh	r2, [r2, #8]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #8]
	ldrh	r2, [r2, #8]
	udiv	r3, r3, r2
	strh	r3, [r7, #30]	@ movhi
	ldrh	r2, [r7, #30]
	ldrh	r3, [r7, #24]
	cmp	r2, r3
	bls	.L210
	ldrh	r3, [r7, #24]	@ movhi
	strh	r3, [r7, #30]	@ movhi
	ldrh	r3, [r7, #30]
	ldr	r2, [r7, #8]
	ldrh	r2, [r2, #8]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	b	.L210
.L209:
	movs	r3, #1
	strh	r3, [r7, #30]	@ movhi
.L210:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L211
	ldrh	r3, [r7, #30]
	ldr	r2, [r7, #8]
	ldrh	r2, [r2, #8]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
.L211:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	ubfx	r2, r3, #0, #19
	ldrh	r3, [r7, #30]
	lsls	r3, r3, #19
	mov	r1, r3
	ldr	r3, .L224
	ands	r3, r3, r1
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	lsls	r3, r3, #29
	and	r3, r3, #1610612736
	ldr	r1, [r7, #8]
	ldrb	r1, [r1, #1]	@ zero_extendqisi2
	lsls	r0, r1, #5
	ldr	r1, [r7, #12]
	add	r1, r1, r0
	add	r1, r1, #1280
	orrs	r3, r3, r2
	str	r3, [r1, #16]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L212
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r2, r1
	str	r2, [r3, #20]
.L212:
	ldr	r3, [r7, #12]
	add	r3, r3, #1024
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #29]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #1280
	bic	r3, r3, #536870912
	str	r3, [r2]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #29]	@ zero_extendqisi2
	lsls	r2, r2, #29
	mov	r0, r2
	ldr	r2, [r7, #8]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	add	r2, r2, #1280
	orrs	r3, r3, r0
	str	r3, [r2]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	bic	r3, r3, #1073741824
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	orr	r3, r3, #-2147483648
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r2, r3
	ldr	r3, [r7, #20]
	str	r3, [r2]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L213
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L213
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L213
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L221
	adr	r2, .L216
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L216:
	.word	.L217+1
	.word	.L215+1
	.word	.L217+1
	.word	.L215+1
	.p2align 1
.L217:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	strh	r3, [r7, #26]	@ movhi
	ldrh	r2, [r7, #26]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	uxth	r3, r3
	cmp	r2, r3
	bls	.L222
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	orr	r2, r3, #32
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L222
.L215:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	strh	r3, [r7, #26]	@ movhi
	ldrh	r2, [r7, #26]
	ldr	r3, [r7, #12]
	add	r3, r3, #1024
	ldr	r3, [r3, #16]
	uxth	r3, r3
	cmp	r2, r3
	bls	.L223
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	orr	r2, r3, #67108864
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L223
.L221:
	nop
	b	.L219
.L222:
	nop
	b	.L219
.L223:
	nop
.L219:
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #8]
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	uxth	r3, r3
	movs	r0, #0
	str	r0, [sp]
	ldr	r0, [r7, #12]
	bl	USB_WritePacket
.L213:
	movs	r3, #0
.L208:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L225:
	.align	2
.L224:
	.word	536346624
	.size	USB_HC_StartXfer, .-USB_HC_StartXfer
	.section	.text.USB_HC_ReadInterrupt,"ax",%progbits
	.align	1
	.global	USB_HC_ReadInterrupt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_HC_ReadInterrupt, %function
USB_HC_ReadInterrupt:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #1024
	ldr	r3, [r3, #20]
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_HC_ReadInterrupt, .-USB_HC_ReadInterrupt
	.section	.text.USB_HC_Halt,"ax",%progbits
	.align	1
	.global	USB_HC_Halt
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_HC_Halt, %function
USB_HC_Halt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	and	r3, r3, #524288
	cmp	r3, #0
	beq	.L229
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #1073741824
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	uxth	r3, r3
	cmp	r3, #0
	bne	.L230
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	bic	r3, r3, #-2147483648
	str	r3, [r2]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #-2147483648
	str	r3, [r2]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	bic	r3, r3, #32768
	str	r3, [r2]
.L233:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #1000
	bhi	.L242
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	and	r3, r3, #-2147483648
	cmp	r3, #-2147483648
	beq	.L233
	b	.L235
.L230:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #-2147483648
	str	r3, [r2]
	b	.L235
.L242:
	nop
	b	.L235
.L229:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #1073741824
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r3, r3, #1024
	ldr	r3, [r3, #16]
	uxth	r3, r3
	cmp	r3, #0
	bne	.L236
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	bic	r3, r3, #-2147483648
	str	r3, [r2]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #-2147483648
	str	r3, [r2]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	bic	r3, r3, #32768
	str	r3, [r2]
.L239:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #1000
	bhi	.L243
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	and	r3, r3, #-2147483648
	cmp	r3, #-2147483648
	beq	.L239
	b	.L235
.L236:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #-2147483648
	str	r3, [r2]
	b	.L235
.L243:
	nop
.L235:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	USB_HC_Halt, .-USB_HC_Halt
	.section	.text.USB_DoPing,"ax",%progbits
	.align	1
	.global	USB_DoPing
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_DoPing, %function
USB_DoPing:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	movs	r3, #1
	strb	r3, [r7, #15]
	movs	r3, #0
	str	r3, [r7, #8]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	lsls	r3, r3, #19
	mov	r2, r3
	ldr	r3, .L246
	ands	r3, r3, r2
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	lsls	r1, r2, #5
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	add	r2, r2, #1280
	orr	r3, r3, #-2147483648
	str	r3, [r2, #16]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	bic	r3, r3, #1073741824
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	orr	r3, r3, #-2147483648
	str	r3, [r7, #8]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r3, [r2]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L247:
	.align	2
.L246:
	.word	536346624
	.size	USB_DoPing, .-USB_DoPing
	.section	.text.USB_StopHost,"ax",%progbits
	.align	1
	.global	USB_StopHost
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USB_StopHost, %function
USB_StopHost:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r0, [r7, #4]
	bl	USB_DisableGlobalInt
	movs	r1, #16
	ldr	r0, [r7, #4]
	bl	USB_FlushTxFifo
	ldr	r0, [r7, #4]
	bl	USB_FlushRxFifo
	movs	r3, #0
	strb	r3, [r7, #23]
	b	.L249
.L250:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	orr	r3, r3, #1073741824
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #-2147483648
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #32768
	str	r3, [r7, #12]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r3, [r2]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #23]
.L249:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L250
	movs	r3, #0
	strb	r3, [r7, #23]
	b	.L251
.L255:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	orr	r3, r3, #1073741824
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	orr	r3, r3, #-2147483648
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	bic	r3, r3, #32768
	str	r3, [r7, #12]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r3, [r2]
.L254:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #1000
	bhi	.L257
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	lsls	r2, r3, #5
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	add	r3, r3, #1280
	ldr	r3, [r3]
	and	r3, r3, #-2147483648
	cmp	r3, #-2147483648
	beq	.L254
	b	.L253
.L257:
	nop
.L253:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r7, #23]
.L251:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L255
	ldr	r3, [r7, #4]
	add	r3, r3, #1024
	mov	r2, r3
	mov	r3, #-1
	str	r3, [r2, #20]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #20]
	ldr	r0, [r7, #4]
	bl	USB_EnableGlobalInt
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USB_StopHost, .-USB_StopHost
	.section	.bss.debug.9278,"aw",%nobits
	.align	2
	.type	debug.9278, %object
	.size	debug.9278, 4
debug.9278:
	.space	4
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
