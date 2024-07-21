#LL length
.data

lista: .word n1
n1: .word 1, 0
#n2: .word 2, n3
#n3: .word 3, n4
#n4: .word 4, 0

.text
la t0, n1 #load the addr. of the head (addr.1)
li a0, 0 #initialize the counter

ciclo:
bnez t0, contatore #if addr. != 0, jump to label contatore
beqz t0, uscita #if addr. == 0, jump to label uscita

contatore:
addi a0, a0, 1 #increment the counter
addi t0, t0, 4 #increment the pointer
lw t0, (t0) #load the addr. of the pointer
beq zero, zero, ciclo #always true condition, repeat the loop

uscita:
li a7, 1 #print int
ecall
li a7, 10 #close the program
ecall
