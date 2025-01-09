# Given 2 linked lists, concatenate them

.data
		#linked_list1
		head: .word nodo1
		nodo1: .word 3, nodo2
		nodo2: .word 8, coda
		coda: .word 12, 0
		#linked_list2
		head2: .word nod1
		nod1: .word 12, nod2
		nod2: .word 6, coada
		coada: .word 4, 0
.text
	        la 		t0, nodo1 #loading in t0 the address of 3
	        addi 		t1, t0, 4 #loading in t1 the address of the 1st pointer
	        lw 		t2, (t1) #loading in t2 the address that the pointer points to
	        beq		t2, zero, concatena
	        
	        ciclo:
	        lw 		t2, 8 (t1)
	        addi		t1, t1, 8
	        bne 		t2, zero, ciclo
	        beq		zero, zero, concatena
	        
	        concatena:	la 	t3, nod1
	        			sw	t3, (t1)
	        
	        la 	t4, coda
	        lw	a0, 4 (t4)
	        li	a7, 1
	        ecall
	        li	a7, 10
	        ecall	

		