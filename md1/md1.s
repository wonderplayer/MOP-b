	.text
	.align	2
	.global	asum
	.type	asum, %function
asum:
	mov r1, #0 @ Glaba cikla mainigo
	mov r2, #0 @ Glaba summu
	b test
loop:
	add r1, r1, #1 @ Inkremente cikla mainigo
	add r2, r2, r1 @ Pieskaita klat mainigo
test:
	cmp r1, r0 @ Salidzina cikla mainigo ar padoto parametru
	blt loop @ Ja cikla mainigais ir mazaks vai lielaks tad ejam atpakal uz ciklu
endloop:
	mov r0, r2
	bx lr
