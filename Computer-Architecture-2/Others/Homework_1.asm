.data 
    .word 77
    .word 33
.text
    lui s0, 0x10010
    lw a1, 0(s0)
    lw a2, 4(s0)
    add a0, a1, a2
    addi a7, zero, 1
    ecall
    addi a7, zero, 10
    ecall
