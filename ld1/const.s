	.text
	.align	2
	.global	const1
	.type	const1, %function
const1:
	mov r0, #0x11
	bx lr
	.size	const1, .-const1
