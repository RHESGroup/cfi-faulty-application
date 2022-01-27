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
	.file	"stm32f4xx_syscfg.c"
	.text
	.section	.text.SYSCFG_DeInit,"ax",%progbits
	.align	1
	.global	SYSCFG_DeInit
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SYSCFG_DeInit, %function
SYSCFG_DeInit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L2
	ldr	r3, [r3, #36]
	ldr	r2, .L2
	orr	r3, r3, #16384
	str	r3, [r2, #36]
	ldr	r3, .L2
	ldr	r3, [r3, #36]
	ldr	r2, .L2
	bic	r3, r3, #16384
	str	r3, [r2, #36]
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L3:
	.align	2
.L2:
	.word	1073887232
	.size	SYSCFG_DeInit, .-SYSCFG_DeInit
	.section	.text.SYSCFG_MemoryRemapConfig,"ax",%progbits
	.align	1
	.global	SYSCFG_MemoryRemapConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SYSCFG_MemoryRemapConfig, %function
SYSCFG_MemoryRemapConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L5
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L6:
	.align	2
.L5:
	.word	1073821696
	.size	SYSCFG_MemoryRemapConfig, .-SYSCFG_MemoryRemapConfig
	.section	.text.SYSCFG_MemorySwappingBank,"ax",%progbits
	.align	1
	.global	SYSCFG_MemorySwappingBank
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SYSCFG_MemorySwappingBank, %function
SYSCFG_MemorySwappingBank:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L8
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L9:
	.align	2
.L8:
	.word	1109852192
	.size	SYSCFG_MemorySwappingBank, .-SYSCFG_MemorySwappingBank
	.section	.text.SYSCFG_EXTILineConfig,"ax",%progbits
	.align	1
	.global	SYSCFG_EXTILineConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SYSCFG_EXTILineConfig, %function
SYSCFG_EXTILineConfig:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	mov	r3, r0
	mov	r2, r1
	strb	r3, [r7, #7]
	mov	r3, r2
	strb	r3, [r7, #6]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	and	r3, r3, #3
	lsls	r3, r3, #2
	movs	r2, #15
	lsl	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r2, .L11
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	uxtb	r3, r3
	adds	r3, r3, #2
	ldr	r2, [r2, r3, lsl #2]
	ldr	r3, [r7, #12]
	mvns	r3, r3
	ldr	r0, .L11
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	lsrs	r1, r1, #2
	uxtb	r1, r1
	ands	r2, r2, r3
	adds	r3, r1, #2
	str	r2, [r0, r3, lsl #2]
	ldr	r2, .L11
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	uxtb	r3, r3
	adds	r3, r3, #2
	ldr	r2, [r2, r3, lsl #2]
	ldrb	r1, [r7, #7]	@ zero_extendqisi2
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	and	r3, r3, #3
	lsls	r3, r3, #2
	lsl	r3, r1, r3
	ldr	r0, .L11
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	lsrs	r1, r1, #2
	uxtb	r1, r1
	orrs	r2, r2, r3
	adds	r3, r1, #2
	str	r2, [r0, r3, lsl #2]
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L12:
	.align	2
.L11:
	.word	1073821696
	.size	SYSCFG_EXTILineConfig, .-SYSCFG_EXTILineConfig
	.section	.text.SYSCFG_ETH_MediaInterfaceConfig,"ax",%progbits
	.align	1
	.global	SYSCFG_ETH_MediaInterfaceConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SYSCFG_ETH_MediaInterfaceConfig, %function
SYSCFG_ETH_MediaInterfaceConfig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L14
	ldr	r3, [r7, #4]
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L15:
	.align	2
.L14:
	.word	1109852380
	.size	SYSCFG_ETH_MediaInterfaceConfig, .-SYSCFG_ETH_MediaInterfaceConfig
	.section	.text.SYSCFG_CompensationCellCmd,"ax",%progbits
	.align	1
	.global	SYSCFG_CompensationCellCmd
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SYSCFG_CompensationCellCmd, %function
SYSCFG_CompensationCellCmd:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	ldr	r2, .L17
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L18:
	.align	2
.L17:
	.word	1109853184
	.size	SYSCFG_CompensationCellCmd, .-SYSCFG_CompensationCellCmd
	.section	.text.SYSCFG_GetCompensationCellStatus,"ax",%progbits
	.align	1
	.global	SYSCFG_GetCompensationCellStatus
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SYSCFG_GetCompensationCellStatus, %function
SYSCFG_GetCompensationCellStatus:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	movs	r3, #0
	strb	r3, [r7, #7]
	ldr	r3, .L23
	ldr	r3, [r3, #32]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L20
	movs	r3, #1
	strb	r3, [r7, #7]
	b	.L21
.L20:
	movs	r3, #0
	strb	r3, [r7, #7]
.L21:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
.L24:
	.align	2
.L23:
	.word	1073821696
	.size	SYSCFG_GetCompensationCellStatus, .-SYSCFG_GetCompensationCellStatus
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
