.data
	x: .word 10
	y: .word 87
	z: .word 99	
.text
	lw t0, x
	lw t1, y
	lw t2, z
	addi a0, t0, 0
	addi a1, t1, 0
	jal ra,maggiore
	addi a1,t2,0
	jal ra,maggiore
	li a7,1
	ecall
	li a7,10
	ecall
	
maggiore: 
	
	blt a0,a1,piugrande
	addi a0,a0,0
	jalr zero,ra,0
	piugrande:
		addi a0,a1,0
		jalr zero,ra,0
