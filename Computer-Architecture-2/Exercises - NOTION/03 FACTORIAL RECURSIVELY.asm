		.data
		.word 3

		.text
		li t0, 0x10010000
		lw a0, 0(t0) #load in a0 the input number
		li t1, 1
		jal ra, factorial #jump to the function and save into the stack the return address

		mv a0, s0 #the lines 10-14 will be executed at the end
		li a7, 1
		ecall
		li a7, 10
		ecall

factorial: 
		addi sp, sp, -8 #make space into the stack
		sw ra, 4(sp) #store the return address
		sw a0, 0(sp) #store a0 (the input number)
		slti t2, a0, 1 #if a0 is < than sign extended 12 bits immediate, set t2 to 1, else, set it to 0
		beq t2, zero, recursion
		addi s0, s0, 1
		addi sp, sp, 8
		jalr zero, 0(ra)

recursion:
		addi a0, a0, -1
		jal ra, factorial
		lw a0, 0(sp)
		lw ra, 4(sp)
		addi sp, sp, 8
		mul s0, a0, s0
		jalr zero, 0(ra)    