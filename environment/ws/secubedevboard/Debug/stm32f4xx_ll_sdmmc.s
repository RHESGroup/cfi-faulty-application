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
	.file	"stm32f4xx_ll_sdmmc.c"
	.text
	.section	.text.SDIO_Init,"ax",%progbits
	.align	1
	.global	SDIO_Init
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_Init, %function
SDIO_Init:
	@ args = 28, pretend = 16, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r0, r7, #28
	stm	r0, {r1, r2, r3}
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	orrs	r2, r2, r3
	ldr	r3, [r7, #40]
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	orrs	r2, r2, r3
	ldr	r3, [r7, #48]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	bic	r3, r3, #32384
	bic	r3, r3, #127
	ldr	r2, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	add	sp, sp, #16
	bx	lr
	.size	SDIO_Init, .-SDIO_Init
	.section	.text.SDIO_ReadFIFO,"ax",%progbits
	.align	1
	.global	SDIO_ReadFIFO
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_ReadFIFO, %function
SDIO_ReadFIFO:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SDIO_ReadFIFO, .-SDIO_ReadFIFO
	.section	.text.SDIO_WriteFIFO,"ax",%progbits
	.align	1
	.global	SDIO_WriteFIFO
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_WriteFIFO, %function
SDIO_WriteFIFO:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #128]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SDIO_WriteFIFO, .-SDIO_WriteFIFO
	.section	.text.SDIO_PowerState_ON,"ax",%progbits
	.align	1
	.global	SDIO_PowerState_ON
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_PowerState_ON, %function
SDIO_PowerState_ON:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SDIO_PowerState_ON, .-SDIO_PowerState_ON
	.section	.text.SDIO_PowerState_OFF,"ax",%progbits
	.align	1
	.global	SDIO_PowerState_OFF
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_PowerState_OFF, %function
SDIO_PowerState_OFF:
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
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SDIO_PowerState_OFF, .-SDIO_PowerState_OFF
	.section	.text.SDIO_GetPowerState,"ax",%progbits
	.align	1
	.global	SDIO_GetPowerState
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_GetPowerState, %function
SDIO_GetPowerState:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SDIO_GetPowerState, .-SDIO_GetPowerState
	.section	.text.SDIO_SendCommand,"ax",%progbits
	.align	1
	.global	SDIO_SendCommand
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_SendCommand, %function
SDIO_SendCommand:
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
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	bic	r3, r3, #4080
	bic	r3, r3, #15
	ldr	r2, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SDIO_SendCommand, .-SDIO_SendCommand
	.section	.text.SDIO_GetCommandResponse,"ax",%progbits
	.align	1
	.global	SDIO_GetCommandResponse
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_GetCommandResponse, %function
SDIO_GetCommandResponse:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SDIO_GetCommandResponse, .-SDIO_GetCommandResponse
	.section	.text.SDIO_GetResponse,"ax",%progbits
	.align	1
	.global	SDIO_GetResponse
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_GetResponse, %function
SDIO_GetResponse:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, .L19
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L20:
	.align	2
.L19:
	.word	1073818644
	.size	SDIO_GetResponse, .-SDIO_GetResponse
	.section	.text.SDIO_DataConfig,"ax",%progbits
	.align	1
	.global	SDIO_DataConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_DataConfig, %function
SDIO_DataConfig:
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
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	orrs	r3, r3, r2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	bic	r2, r3, #247
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SDIO_DataConfig, .-SDIO_DataConfig
	.section	.text.SDIO_GetDataCounter,"ax",%progbits
	.align	1
	.global	SDIO_GetDataCounter
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_GetDataCounter, %function
SDIO_GetDataCounter:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SDIO_GetDataCounter, .-SDIO_GetDataCounter
	.section	.text.SDIO_GetFIFOCount,"ax",%progbits
	.align	1
	.global	SDIO_GetFIFOCount
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_GetFIFOCount, %function
SDIO_GetFIFOCount:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	SDIO_GetFIFOCount, .-SDIO_GetFIFOCount
	.section	.text.SDIO_SetSDIOReadWaitMode,"ax",%progbits
	.align	1
	.global	SDIO_SetSDIOReadWaitMode
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_SetSDIOReadWaitMode, %function
SDIO_SetSDIOReadWaitMode:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L29
	ldr	r3, [r7, #4]
	str	r3, [r2]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L30:
	.align	2
.L29:
	.word	1109755304
	.size	SDIO_SetSDIOReadWaitMode, .-SDIO_SetSDIOReadWaitMode
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
