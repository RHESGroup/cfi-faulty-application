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
	.file	"stm32f4xx_it.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.section	.text.SysTick_Handler,"ax",%progbits
	.align	1
	.global	SysTick_Handler
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SysTick_Handler, %function
SysTick_Handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	bl	HAL_IncTick
	bl	HAL_SYSTICK_IRQHandler
	bl	se3_time_inc
	nop
	pop	{r7, pc}
	.size	SysTick_Handler, .-SysTick_Handler
	.section	.text.SDIO_IRQHandler,"ax",%progbits
	.align	1
	.global	SDIO_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	SDIO_IRQHandler, %function
SDIO_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r0, .L3
	bl	HAL_SD_IRQHandler
	nop
	pop	{r7, pc}
.L4:
	.align	2
.L3:
	.word	hsd
	.size	SDIO_IRQHandler, .-SDIO_IRQHandler
	.section	.text.DMA2_Stream3_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA2_Stream3_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	DMA2_Stream3_IRQHandler, %function
DMA2_Stream3_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r0, .L6
	bl	HAL_DMA_IRQHandler
	nop
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	hdma_sdio_rx
	.size	DMA2_Stream3_IRQHandler, .-DMA2_Stream3_IRQHandler
	.section	.text.DMA2_Stream6_IRQHandler,"ax",%progbits
	.align	1
	.global	DMA2_Stream6_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	DMA2_Stream6_IRQHandler, %function
DMA2_Stream6_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r0, .L9
	bl	HAL_DMA_IRQHandler
	nop
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	hdma_sdio_tx
	.size	DMA2_Stream6_IRQHandler, .-DMA2_Stream6_IRQHandler
	.section	.text.OTG_HS_IRQHandler,"ax",%progbits
	.align	1
	.global	OTG_HS_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	OTG_HS_IRQHandler, %function
OTG_HS_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r0, .L12
	bl	HAL_PCD_IRQHandler
	nop
	pop	{r7, pc}
.L13:
	.align	2
.L12:
	.word	hpcd_USB_OTG_HS
	.size	OTG_HS_IRQHandler, .-OTG_HS_IRQHandler
	.section	.text.EXTI9_5_IRQHandler,"ax",%progbits
	.align	1
	.global	EXTI9_5_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	EXTI9_5_IRQHandler, %function
EXTI9_5_IRQHandler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
.L15:
	b	.L15
	.size	EXTI9_5_IRQHandler, .-EXTI9_5_IRQHandler
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
