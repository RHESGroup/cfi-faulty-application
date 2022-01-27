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
	.file	"se3_sdio.c"
	.text
	.section	.text.secube_sdio_write,"ax",%progbits
	.align	1
	.global	secube_sdio_write
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	secube_sdio_write, %function
secube_sdio_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #15]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	lsls	r3, r3, #9
	mov	r2, r3
	mov	r3, #0
	ldrh	r1, [r7, #12]
	str	r1, [sp, #4]
	mov	r1, #512
	str	r1, [sp]
	ldr	r1, [r7, #8]
	ldr	r0, .L4
	bl	HAL_SD_WriteBlocks_DMA
	mov	r3, r0
	cmp	r3, #0
	bne	.L2
	ldr	r1, .L4+4
	ldr	r0, .L4
	bl	HAL_SD_CheckWriteOperation
	mov	r3, r0
	cmp	r3, #0
	bne	.L2
	movs	r3, #1
	b	.L3
.L2:
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L5:
	.align	2
.L4:
	.word	hsd
	.word	100000000
	.size	secube_sdio_write, .-secube_sdio_write
	.section	.text.secube_sdio_read,"ax",%progbits
	.align	1
	.global	secube_sdio_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	secube_sdio_read, %function
secube_sdio_read:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #15]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldr	r3, [r7, #4]
	lsls	r3, r3, #9
	mov	r2, r3
	mov	r3, #0
	ldrh	r1, [r7, #12]
	str	r1, [sp, #4]
	mov	r1, #512
	str	r1, [sp]
	ldr	r1, [r7, #8]
	ldr	r0, .L9
	bl	HAL_SD_ReadBlocks_DMA
	mov	r3, r0
	cmp	r3, #0
	bne	.L7
	ldr	r1, .L9+4
	ldr	r0, .L9
	bl	HAL_SD_CheckReadOperation
	mov	r3, r0
	cmp	r3, #0
	bne	.L7
	movs	r3, #1
	b	.L8
.L7:
	movs	r3, #0
.L8:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	hsd
	.word	100000000
	.size	secube_sdio_read, .-secube_sdio_read
	.section	.text.secube_sdio_capacity,"ax",%progbits
	.align	1
	.global	secube_sdio_capacity
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	secube_sdio_capacity, %function
secube_sdio_capacity:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r1, .L14
	ldr	r0, .L14+4
	bl	HAL_SD_Get_CardInfo
	mov	r3, r0
	cmp	r3, #0
	bne	.L12
	ldr	r3, .L14
	ldrd	r0, [r3, #72]
	mov	r2, #0
	mov	r3, #0
	lsrs	r2, r0, #9
	orr	r2, r2, r1, lsl #23
	lsrs	r3, r1, #9
	mov	r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	mov	r2, #512
	strh	r2, [r3]	@ movhi
	movs	r3, #1
	b	.L13
.L12:
	movs	r3, #0
.L13:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	SDCardInfo
	.word	hsd
	.size	secube_sdio_capacity, .-secube_sdio_capacity
	.section	.text.secube_sdio_isready,"ax",%progbits
	.align	1
	.global	secube_sdio_isready
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	secube_sdio_isready, %function
secube_sdio_isready:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r0, .L19
	bl	HAL_SD_GetStatus
	mov	r3, r0
	cmp	r3, #0
	beq	.L17
	movs	r3, #0
	b	.L18
.L17:
	movs	r3, #1
.L18:
	mov	r0, r3
	pop	{r7, pc}
.L20:
	.align	2
.L19:
	.word	hsd
	.size	secube_sdio_isready, .-secube_sdio_isready
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
