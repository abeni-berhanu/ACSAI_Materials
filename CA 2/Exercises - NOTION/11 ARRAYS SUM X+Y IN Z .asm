#sum x+y in z
.data
l:  .word 5
x: .word 1,2, 3, 4, 5
y: .word 1, 2, 3, 4, 5
z: .word 0, 0, 0, 0, 0

.text
li t0, 0x10010000
lw t1, (t0)
la t2, x
la t3, y
la t4, z

ciclo:
addi t1, t1, -1
lw t5, (t2) #primo array
lw t6, (t3) #secondo array
add t0, t5, t6
sw t0, (t4)
addi t2, t2, 4
addi t3, t3, 4
addi t4, t4, 4
bnez t1, ciclo
la t4, z
lw t1, l

ciclo2:
lw a0, (t4)
li a7, 1
ecall
addi t4, t4, 4
addi t1, t1, -1
bnez t1, ciclo2

li a7, 10
ecall



