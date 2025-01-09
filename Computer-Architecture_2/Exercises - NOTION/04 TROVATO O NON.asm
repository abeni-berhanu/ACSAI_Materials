#print "trovato" if 52 appears in the array, else "non trovato"

	.data
		.word 52
		.word 5
		.word 71,12,0,52,8
		.asciz "trovato"
		.asciz "non trovato"
	.text
		li t0,0x10010000
		lw t1, 0(t0) #load the input number (52)
		lw t4, 4(t0) #length of the array

		addi t2,t0,	28 #address of "trovato"
		addi t3,t0, 36 #address of "non trovato"
		addi t0,t0,8   #pointer of the 1st element of the array 
	
loop:
		lw t5, 0(t0) #loading the 1st element of the array
		addi t0,t0,4 #increase pointer by 4		
		beq t5,t1,trovato
		addi t4,t4,-1 #decrease length
		bgt t4,zero,loop #repeat the loop is the length is not zero
	
		#otherwise print non trovato
		li a7, 4
		add a0,zero,t3
		ecall
		li a7 10
		ecall
	
trovato: #print "trovato"
		li a7, 4 
		add a0,zero,t2
		ecall
		li a7 10
		ecall
