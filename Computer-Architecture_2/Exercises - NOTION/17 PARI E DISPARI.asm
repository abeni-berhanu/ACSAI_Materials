#Print "pari" if the input number is even, otherwise print "dispari"
#The professor used 7 as an example

 .data
 	
 	 .word 15
 	 .asciz "pari"
 	 .asciz "dispari"
 	 
 .text
 
 	lui t0, 0x10010
 	lw t1, (t0)
 	andi t1, t1, 1
 	
 	beq t1, zero, epari
 	ori a0, t0, 9
 	addi a7, zero, 4
 	ecall
 	beq zero, zero, uscita
 	
 epari:   ori    a0, t0, 4
 	    addi  a7, zero, 4
 	    ecall
 	  
 uscita: addi  a7, zero, 10
 	    ecall
 	