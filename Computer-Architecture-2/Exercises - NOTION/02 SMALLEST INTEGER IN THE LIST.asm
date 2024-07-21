#smallest integer in the list
			.data
			.word 4
		lista: .word 1,-6,12, 24
	
			.text
			lui t0, 0x10010000 #addr of the length
			lw t1, (t0) #load the length
			lw t2, 4(t0) #load the 1st element of the array

		ciclo: addi t1, t1, -1 #decrease the length 
			addi t0, t0, 4 #move the pointer to the 2nd element
			lw t3, (t0) #load the 2nd element of the array
			blt t3, t2, assegna #if -6 is < than 1, jump to assegna
			blt t2, t3, controlla_lunghezza #if 1 is < than -6, jump to controlla_lunghezza
	
	assegna: 
				add t2, t3, zero #overwrite t2 with -6
controlla_lunghezza:
				bne t1, zero, ciclo #if the length is still diff. from 0, repeat the loop
			
				mv a0, t2 #this line is being executed when the length of the array is 0
					       #and it prints the register t2, that will contain the smallest value
				li a7, 1
				ecall
				li a7, 10
				ecall
