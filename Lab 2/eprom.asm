	.org 0
	la r29,TOP
	la r1,0
	lar r2,MYVGA
	la r31,LOOP1
	lar r30,MYVGA
LOOP1:	st r1,0(r30)
	addi r30,r30,4
	and r3,r30,r2
	brnz r31,r3
	la r31,LOOP2
TOP:	lar r30,MYVGA
LOOP2:	ld r1,0(r30)
	addi r1,r1,1
	st r1,0(r30)
	addi r30,r30,4
	and r3,r30,r2
	brnz r31,r3
	br r29
	stop
	.org 2097152
MYVGA:	.dw 524288
