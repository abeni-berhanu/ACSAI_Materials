#Sum up elements of the array and store the result into a register

.data

		.word 4
		.word 1,2,3,4
		
.text 

		lui t0, 0x10010
		lw t1, (t0) #loading in t1 the length of the array
		
		addi t0, t0, 4
ciclo:	lw t2, (t0) #loading in t2 the 1st element of the array
		add t3, t3, t2
		addi t1, t1, -1
		addi t0, t0, 4
		
		bne t1, zero, ciclo
		mv a0, t3
		li a7, 1
		ecall
		li a7, 10
		ecall
		
		
		