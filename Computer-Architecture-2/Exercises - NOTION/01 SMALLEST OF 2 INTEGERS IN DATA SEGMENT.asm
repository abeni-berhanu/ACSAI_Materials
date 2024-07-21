#smallest of 2 integers in data segment
				.data
				.word 12
				.word 10

				.text
				lui t0, 0x10010 #load the addr of 12
				lw t1, (t0) #load 12
				lw t2, 4(t0) #load 10

				blt t1, t2, t1_minore_di_t2 #jump to the label if t1<t2
				mv a0, t2 #else move t2 in a0
				beq zero, zero, stampa #jump to the label and print t2
				
t1_minore_di_t2:	mv a0, t1 #move t1 in a0 and print ( lines below )

stampa:			li a7, 1 #print int
				ecall
				li a7, 10 #close the program
				ecall
