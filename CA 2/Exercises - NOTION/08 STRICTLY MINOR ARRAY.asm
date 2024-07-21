#given an array of integers, and an integer, print the n. of integers strictly smaller than the integer given in input
		.data
		.word 5
		.word 10
array: 	.word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

.text
li t0, 0x10010000 #load addr. of 5
lw t1, (t0) #load 5
lw t2, 4(t0) #load the length
addi t0, t0, 8 #set the pointer to 1

ciclo: 
lw t3, (t0) #load the 1st element of the array
addi t2, t2, -1 #decrease the length
addi t0, t0, 4 #increase the pointer
blt t3, t1, counter #if 1st element < 5, jump to label
bne t2, zero, ciclo

counter:
addi t4, t4, 1 #increase the counter
bne t2, zero, ciclo #if the length is different from 0, repeat the loop

addi t4, t4, -1
mv a0, t4 #move the value of the counter in a0, in order to be able to print it
li a7, 1 #print in command
ecall
li a7, 10 #close the program
ecall



