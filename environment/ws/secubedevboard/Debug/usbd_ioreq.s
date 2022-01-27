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
	.file	"usbd_ioreq.c"
	.text
	.section	.text.USBD_CtlSendData,"ax",%progbits
	.align	1
	.global	USBD_CtlSendData
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_CtlSendData, %function
USBD_CtlSendData:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #2
	str	r2, [r3, #500]
	ldrh	r2, [r7, #6]
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldrh	r2, [r7, #6]
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	USBD_LL_Transmit
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlSendData, .-USBD_CtlSendData
	.section	.text.USBD_CtlContinueSendData,"ax",%progbits
	.align	1
	.global	USBD_CtlContinueSendData
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_CtlContinueSendData, %function
USBD_CtlContinueSendData:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	USBD_LL_Transmit
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlContinueSendData, .-USBD_CtlContinueSendData
	.section	.text.USBD_CtlPrepareRx,"ax",%progbits
	.align	1
	.global	USBD_CtlPrepareRx
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_CtlPrepareRx, %function
USBD_CtlPrepareRx:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #3
	str	r2, [r3, #500]
	ldrh	r2, [r7, #6]
	ldr	r3, [r7, #12]
	str	r2, [r3, #264]
	ldrh	r2, [r7, #6]
	ldr	r3, [r7, #12]
	str	r2, [r3, #268]
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	USBD_LL_PrepareReceive
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlPrepareRx, .-USBD_CtlPrepareRx
	.section	.text.USBD_CtlContinueRx,"ax",%progbits
	.align	1
	.global	USBD_CtlContinueRx
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_CtlContinueRx, %function
USBD_CtlContinueRx:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldrh	r3, [r7, #6]
	ldr	r2, [r7, #8]
	movs	r1, #0
	ldr	r0, [r7, #12]
	bl	USBD_LL_PrepareReceive
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlContinueRx, .-USBD_CtlContinueRx
	.section	.text.USBD_CtlSendStatus,"ax",%progbits
	.align	1
	.global	USBD_CtlSendStatus
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_CtlSendStatus, %function
USBD_CtlSendStatus:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #4
	str	r2, [r3, #500]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	USBD_LL_Transmit
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlSendStatus, .-USBD_CtlSendStatus
	.section	.text.USBD_CtlReceiveStatus,"ax",%progbits
	.align	1
	.global	USBD_CtlReceiveStatus
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_CtlReceiveStatus, %function
USBD_CtlReceiveStatus:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #5
	str	r2, [r3, #500]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	USBD_LL_PrepareReceive
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_CtlReceiveStatus, .-USBD_CtlReceiveStatus
	.section	.text.USBD_GetRxCount,"ax",%progbits
	.align	1
	.global	USBD_GetRxCount
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	USBD_GetRxCount, %function
USBD_GetRxCount:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	USBD_LL_GetRxDataSize
	mov	r3, r0
	uxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	USBD_GetRxCount, .-USBD_GetRxCount
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
