#this program counts the number of zeros in the array

.data
.word 12
array: .word 0, 0, 2, 0, 0, 0, 0,1, 9, 0, 0, 0

.text
li t0, 0x10010000 #load the address of the length
lw t1, (t0) #load the length of the array
addi t0, t0, 4 #pointer of the 1st element of the array

ciclo:
lw t2, (t0) #load the 1st element of the array
addi t1, t1, -1 #decrease the length of the array
addi t0, t0, 4 #increase the pointer
beqz t2, contatore #if t2 == 0, jump to the label
bne t2, zero, ciclo #if t2 != 0, repeat the loop

contatore:
addi t3, t3, 1 #increase the counter of zeros
bne t1, zero, ciclo #if the length of the array is still not zero, repeat the loop

mv a0, t3 #move the counter in a0 in order to be able to print 
li a7, 1 #print int
ecall
li a7, 10 #close the program
ecall
