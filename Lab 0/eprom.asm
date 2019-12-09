	.org 0
	la r29,TOP
	la r1,0
TOP:	lar r2,MYVGA
	add r3,r2,r2
	addi r3,r3,-4
	nop
	addi r1,r1,1
	br r29
	stop
	.org 4096 ;
MYD:	.dw 1024
	.org 2097152
MYVGA:	.dw 524288