	.text
	.align	2
	.global matmul
	.type matmul, %function
matmul:
	stmfd sp!, {r0-r3}
	@ sp = h1
	@ sp + 4 = w1
	@ sp + 8 = m1
	@ sp + 12 = h2
	@ sp + 16 = w2
	@ sp + 20 = m2
	@ sp + 24 = m3
	mov r4, #0
	str r4, [sp, #28] @ i = 0
	str r4, [sp, #32] @ j = 0
	str r4, [sp, #36] @ k = 0
	b test_1
loop_1:
	mov r1, #0
	str r1, [sp, #32]
	b test_2				@ Parraksta lr registru, bet kad iet atpakal ar bx lr, neparraksta
						@ uz ieprieksejo vertibu. Vajag pirms iet ieksta glabat lr vai ari
						@ neiet tik dzili ar bl. Izveidot vairakas iezimes un lekt pa tam
a_t2:	ldr r0, [sp, #28]
	add r0, r0, #1 @ Increment i
	str r0, [sp, #28]
test_1:
	ldr r0, [sp, #28]
	ldr r1, [sp]
	cmp r0, r1
	blt loop_1
	b end

loop_2:
	mov r1, #0
	str r1, [sp, #36]
	b test_3

	@ m3[i][j] = sum
a_t3:	ldr r0, [sp, #40] @ Get sum
	ldr r1, [sp] @ Get h1
	ldr r2, [sp, #28] @ Get i
	ldr r3, [sp, #32] @ Get j
	@ r4 = Offset for array m3
	mul r4, r1, r2 @ r4 = h1 * i
	add r4, r4, r3 @ r4 = r4 + j
	ldr r5, [sp, #24]
	str r0, [r5, r4, LSL #2]

	ldr r0, [sp, #32]
	add r0, r0, #1 @ Increment j
	str r0, [sp, #32]
test_2:
	ldr r0, [sp, #32]
	ldr r1, [sp, #16]
	cmp r0, r1
	blt loop_2
	b a_t2


loop_3:
	mov r0, #2
	str r0, [sp, #40] @ Here the real sum count must be
	ldr r0, [sp, #36]
	add r0, r0, #1	@ Increment k
	str r0, [sp, #36]
test_3:
	ldr r0, [sp, #36]
	ldr r1, [sp, #4]
	cmp r0, r1
	blt loop_3
	b a_t3

end:
	ldmfd sp, {r0-r3}
	bx lr
