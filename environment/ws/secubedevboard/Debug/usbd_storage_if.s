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
	.file	"usbd_storage_if.c"
	.text
	.comm	serial,33,4
	.comm	hwerror,2,2
	.comm	comm,108,4
	.comm	req_hdr,68,4
	.comm	resp_hdr,68,4
	.comm	se3_hello,32,4
	.comm	hUsbDevice_1,4,4
	.global	STORAGE_Inquirydata_HS
	.section	.rodata.STORAGE_Inquirydata_HS,"a"
	.align	2
	.type	STORAGE_Inquirydata_HS, %object
	.size	STORAGE_Inquirydata_HS, 36
STORAGE_Inquirydata_HS:
	.ascii	"\000\200\002\002\037\000\000\000SECube  SECube     "
	.ascii	"     0.01"
	.global	USBD_Storage_Interface_fops_HS
	.section	.data.USBD_Storage_Interface_fops_HS,"aw"
	.align	2
	.type	USBD_Storage_Interface_fops_HS, %object
	.size	USBD_Storage_Interface_fops_HS, 32
USBD_Storage_Interface_fops_HS:
	.word	STORAGE_Init_HS
	.word	STORAGE_GetCapacity_HS
	.word	STORAGE_IsReady_HS
	.word	STORAGE_IsWriteProtected_HS
	.word	STORAGE_Read_HS
	.word	STORAGE_Write_HS
	.word	STORAGE_GetMaxLun_HS
	.word	STORAGE_Inquirydata_HS
	.section	.text.STORAGE_Init_HS,"ax",%progbits
	.align	1
	.arch armv7e-m
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	STORAGE_Init_HS, %function
STORAGE_Init_HS:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	STORAGE_Init_HS, .-STORAGE_Init_HS
	.section	.text.STORAGE_GetCapacity_HS,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	STORAGE_GetCapacity_HS, %function
STORAGE_GetCapacity_HS:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	mov	r3, r0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #15]
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #8]
	bl	secube_sdio_capacity
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L4
	movs	r3, #2
	b	.L5
.L4:
	movs	r3, #0
.L5:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	STORAGE_GetCapacity_HS, .-STORAGE_GetCapacity_HS
	.section	.text.STORAGE_IsReady_HS,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	STORAGE_IsReady_HS, %function
STORAGE_IsReady_HS:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	bl	secube_sdio_isready
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L7
	movs	r3, #2
	b	.L8
.L7:
	movs	r3, #0
.L8:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	STORAGE_IsReady_HS, .-STORAGE_IsReady_HS
	.section	.text.STORAGE_IsWriteProtected_HS,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	STORAGE_IsWriteProtected_HS, %function
STORAGE_IsWriteProtected_HS:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	mov	r3, r0
	strb	r3, [r7, #7]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	STORAGE_IsWriteProtected_HS, .-STORAGE_IsWriteProtected_HS
	.section	.text.STORAGE_Read_HS,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	STORAGE_Read_HS, %function
STORAGE_Read_HS:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #15]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]
	ldrb	r0, [r7, #15]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	bl	se3_proto_send
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #2
	bne	.L12
	movs	r3, #1
	b	.L13
.L12:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L14
	movs	r3, #0
	b	.L13
.L14:
	movs	r3, #2
.L13:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	STORAGE_Read_HS, .-STORAGE_Read_HS
	.section	.text.STORAGE_Write_HS,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	STORAGE_Write_HS, %function
STORAGE_Write_HS:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	mov	r2, r3
	mov	r3, r0
	strb	r3, [r7, #15]
	mov	r3, r2	@ movhi
	strh	r3, [r7, #12]	@ movhi
	ldrh	r3, [r7, #12]
	ldrb	r0, [r7, #15]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	bl	se3_proto_recv
	mov	r3, r0
	cmp	r3, #0
	beq	.L16
	movs	r3, #2
	b	.L17
.L16:
	movs	r3, #0
.L17:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	STORAGE_Write_HS, .-STORAGE_Write_HS
	.section	.text.STORAGE_GetMaxLun_HS,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu softvfp
	.type	STORAGE_GetMaxLun_HS, %function
STORAGE_GetMaxLun_HS:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	movs	r3, #0
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	pop	{r7}
	bx	lr
	.size	STORAGE_GetMaxLun_HS, .-STORAGE_GetMaxLun_HS
	.ident	"GCC: (GNU Tools for STM32 9-2020-q2-update.20201001-1621) 9.3.1 20200408 (release)"
