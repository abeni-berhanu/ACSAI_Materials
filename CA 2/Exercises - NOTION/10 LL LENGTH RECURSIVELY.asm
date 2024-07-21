#LL length recursively
			.data

		lista: .word n1
		n1: .word 1, n2
		n2: .word 2, n3
		n3: .word 3, n4
		n4: .word 4, n5
		n5: .word 5, 0

			.text

				la a0, n1 #load addr. of n1
				jal ra, f #jump to function & save addr.
				
				li a7, 1 #print int
				ecall
				li a7, 10 #close the program
				ecall

			f: bnez a0, recursion #if addr. of n1 != 0, jump to label
			   jalr zero, ra, 0 #from here you jump back to line 15 after doing the recursive calls

		recursion:
			addi sp, sp, -8 #allocate the stack space
			sw ra, 0(sp) #store the return address
			sw a0, 4(sp) #store the addr. of n1
			lw a0, 4(a0) #load the 2nd half of a node
			jal f #jump to f & check whether to continue or start returning back on the path
			
			addi a0, a0, 1 #while returning back on the path, increase the counter
			lw ra, 0(sp) #load the return addr. from the stack
			addi sp, sp, 8 #deallocate the stack
			jalr zero, ra, 0 #jump to line 21
