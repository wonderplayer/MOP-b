	.text
	.align	2
	.global matmul
	.type matmul, %function
matmul:
	mov r1, #1
	mov r2, #2
	mov r3, #3
	mov r4, #4
	sub sp, sp, #8		@make space
	stmfa sp!, {r1,r2}	@sp->1, 2
	ldmfa sp!, {r5,r6}	@1, 2, sp->
	@stmia sp, {r3, r4}	@1, 2, sp->3, 4
	add sp, sp, #8		@1, 2, 3, 4, sp->
	bx lr
