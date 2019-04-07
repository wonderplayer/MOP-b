	.text
	.align	2
	.global	add
	.type	add, %function
	.global f
	.type f, %function
add:
	add r0, r0, r1
	bx lr
	.size	add, .-add
f:
	add r0, r0, #1
	bx lr