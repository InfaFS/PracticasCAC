.data

num1: .word 4
num2: .word 3

.code 
ld r1,num1(r0)
ld r2,num2(r0)

loop: beq r3,r2,fin 
daddi r3,r3,1
dadd r4,r1,r0
j loop  
fin: halt