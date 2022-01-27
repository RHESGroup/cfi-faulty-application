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
	.file	"uartInterface.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	se3_crypto_algorithm,1,1
	.comm	se3_security_info,228,4
	.comm	se3_algo_impl_t,1,1
	.section	.rodata
	.align	2
.LC0:
	.ascii	"OK\000"
	.align	2
.LC1:
	.ascii	"ERROR\000"
	.section	.text.sendCommand,"ax",%progbits
	.align	1
	.global	sendCommand
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	sendCommand, %function
sendCommand:
	@ args = 0, pretend = 0, frame = 536
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #536
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	mov	r0, r1
	mov	r1, r2
	adds	r3, r7, #3
	mov	r2, r0
	strb	r2, [r3]
	mov	r3, r7
	mov	r2, r1	@ movhi
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	str	r3, [r7, #528]
	movs	r3, #0
	str	r3, [r7, #532]
	b	.L2
.L3:
	ldr	r2, .L11
	ldr	r3, [r7, #532]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #532]
	adds	r3, r3, #1
	str	r3, [r7, #532]
.L2:
	ldr	r3, [r7, #532]
	cmp	r3, #2048
	blt	.L3
	adds	r3, r7, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	str	r3, [r7, #524]
	adds	r3, r7, #4
	ldr	r3, [r3]
	addw	r0, r3, #1028
	adds	r3, r7, #4
	ldr	r1, [r3]
	ldr	r3, [r7, #524]
	uxth	r2, r3
	mov	r3, #-1
	bl	HAL_UART_Transmit
	mov	r3, r0
	str	r3, [r7, #520]
	mov	r3, r7
	ldrh	r3, [r3]
	mov	r2, #2048
	mov	r1, r3
	ldr	r0, .L11
	bl	readFromUart
	mov	r3, r0
	str	r3, [r7, #520]
	adds	r3, r7, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L4
	b	.L5
.L9:
	add	r3, r7, #8
	movs	r2, #1
	mov	r1, r3
	ldr	r0, .L11
	bl	readLine
	add	r3, r7, #8
	movs	r2, #2
	mov	r1, r3
	ldr	r0, .L11+4
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L6
	movs	r3, #1
	b	.L10
.L6:
	add	r3, r7, #8
	movs	r2, #5
	mov	r1, r3
	ldr	r0, .L11+8
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L8
	movs	r3, #0
	b	.L10
.L8:
	ldr	r3, [r7, #528]
	adds	r3, r3, #1
	str	r3, [r7, #528]
.L5:
	ldr	r3, [r7, #528]
	cmp	r3, #9
	ble	.L9
	movs	r3, #0
	b	.L10
.L4:
	movs	r3, #1
.L10:
	mov	r0, r3
	add	r7, r7, #536
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	inputBuffer
	.word	.LC0
	.word	.LC1
	.size	sendCommand, .-sendCommand
	.section	.text.logToDebugger,"ax",%progbits
	.align	1
	.global	logToDebugger
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	logToDebugger, %function
logToDebugger:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L14
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	movs	r2, #13
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	movs	r1, #10
	strb	r1, [r2, r3]
.L14:
	ldr	r3, [r7, #4]
	addw	r4, r3, #1028
	ldr	r5, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	uxth	r2, r3
	mov	r3, #-1
	mov	r1, r5
	mov	r0, r4
	bl	HAL_UART_Transmit
	nop
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	logToDebugger, .-logToDebugger
	.section	.text.readLine,"ax",%progbits
	.align	1
	.global	readLine
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	readLine, %function
readLine:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2048]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #2052]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2048]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
	b	.L16
.L18:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2048]
	subs	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2052]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #2052]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L16:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bge	.L17
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L17
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L18
.L17:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2048]
	subs	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2052]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #2052]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L19
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L20
.L19:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2052]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #2052]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L20:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	str	r2, [r3, #2048]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2052]
	cmp	r3, #0
	beq	.L21
	movs	r3, #0
	b	.L22
.L21:
	movs	r3, #1
.L22:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	readLine, .-readLine
	.section	.text.readFromUart,"ax",%progbits
	.align	1
	.global	readFromUart
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	readFromUart, %function
readFromUart:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	addw	r0, r3, #2056
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #4]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	bl	HAL_UART_Receive
	mov	r3, r0
	strb	r3, [r7, #23]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #2052]
	b	.L24
.L27:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2052]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L29
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2052]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #2052]
.L24:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2052]
	cmp	r3, #0
	bne	.L27
	b	.L26
.L29:
	nop
.L26:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #2048]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	readFromUart, .-readFromUart
	.section	.text.Error_Handler,"ax",%progbits
	.align	1
	.global	Error_Handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	Error_Handler, %function
Error_Handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	.syntax unified
@ 71 "/Users/nico/Desktop/SEcube firmware 2/environment/drivers/cmsis/Include/cmsis_gcc.h" 1
	cpsid i
@ 0 "" 2
	.thumb
	.syntax unified
	nop
.L31:
	b	.L31
	.size	Error_Handler, .-Error_Handler
	.section	.text.SystemClock_Config,"ax",%progbits
	.align	1
	.global	SystemClock_Config
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SystemClock_Config, %function
SystemClock_Config:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, .L33
	ldr	r3, [r3, #64]
	ldr	r2, .L33
	orr	r3, r3, #268435456
	str	r3, [r2, #64]
	ldr	r3, .L33
	ldr	r3, [r3, #64]
	and	r3, r3, #268435456
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #4]
	ldr	r3, .L33+4
	ldr	r3, [r3]
	ldr	r2, .L33+4
	orr	r3, r3, #49152
	str	r3, [r2]
	ldr	r3, .L33+4
	ldr	r3, [r3]
	and	r3, r3, #49152
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r3, #1
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #2
	str	r3, [r7, #56]
	mov	r3, #4194304
	str	r3, [r7, #60]
	movs	r3, #16
	str	r3, [r7, #64]
	mov	r3, #336
	str	r3, [r7, #68]
	movs	r3, #2
	str	r3, [r7, #72]
	movs	r3, #7
	str	r3, [r7, #76]
	add	r3, r7, #32
	mov	r0, r3
	bl	HAL_RCC_OscConfig
	movs	r3, #15
	str	r3, [r7, #12]
	movs	r3, #2
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	mov	r3, #5120
	str	r3, [r7, #24]
	mov	r3, #4096
	str	r3, [r7, #28]
	add	r3, r7, #12
	movs	r1, #5
	mov	r0, r3
	bl	HAL_RCC_ClockConfig
	mov	r2, #67108864
	mov	r1, #6291456
	movs	r0, #0
	bl	HAL_RCC_MCOConfig
	bl	HAL_RCC_GetHCLKFreq
	mov	r3, r0
	ldr	r2, .L33+8
	umull	r2, r3, r2, r3
	lsrs	r3, r3, #6
	mov	r0, r3
	bl	HAL_SYSTICK_Config
	movs	r0, #4
	bl	HAL_SYSTICK_CLKSourceConfig
	movs	r2, #0
	movs	r1, #0
	mov	r0, #-1
	bl	HAL_NVIC_SetPriority
	nop
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L34:
	.align	2
.L33:
	.word	1073887232
	.word	1073770496
	.word	274877907
	.size	SystemClock_Config, .-SystemClock_Config
	.section	.text.systemInit,"ax",%progbits
	.align	1
	.global	systemInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	systemInit, %function
systemInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	HAL_Init
	bl	SystemClock_Config
	bl	MX_GPIO_Init
	bl	MX_DMA_Init
	bl	MX_FMC_Init
	bl	MX_I2C2_Init
	bl	MX_SDIO_SD_Init
	bl	MX_SPI5_Init
	bl	MX_TIM4_Init
	bl	MX_USART1_UART_Init
	bl	MX_UART7_Init
	bl	MX_USART6_SMARTCARD_Init
	bl	MX_USB_DEVICE_Init
	bl	MX_CRC_Init
	bl	MX_RNG_Init
	nop
	pop	{r7, pc}
	.size	systemInit, .-systemInit
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
