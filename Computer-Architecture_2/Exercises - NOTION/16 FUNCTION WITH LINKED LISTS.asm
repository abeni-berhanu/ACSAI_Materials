# Write a function that, given a linked list as input, returns the address of the last node as output.

.data

	linked_list: .word nodo1
	nodo1:       .word 4, nodo2
	nodo2:       .word 5, coda
	coda:         .word 10, 0
	
.text

	                  la    a0, nodo1 #loading in a0 the address of the content of the 1st node
	                  jal    ra, funzione #saving the return address and jumping to the function
			  li      a7, 1
			         ecall
			  li      a7, 10
			         ecall

funzione:		  lw     a1, 4(a0) #adding in a1 the address stored in a0 with a +4 offset
			  beq   a1, zero, fine #checking if the address stored in a1 is zero ( if yes, END )
			  
ciclo:                  mv     a0, a1 #overwriting the address stored in a0 with the address stored in a1
         		  lw      a1, 4(a1) #
         		  bne    a1, zero, ciclo
         		  jalr     zero, ra, 0
         		  
fine:     		  jalr    zero, ra, 0 
			  
	
	
	

	         

	

	

	
	
	
