.data
A: .word 4
B: .word 4
C: .word 4
RES: .word 0

.code
ld r1,A(r0)
ld r2,B(r0)
ld r3,C(r0)
dadd r4,r0,r0

bne r1,r2,caso2 
daddi r4,r4,2
bne r1,r3, fin
daddi r4,r4,1
j fin

caso2: bne r1,r3, caso3 
daddi r4,r4,2
bne r1,r2, fin
daddi r4,r4,1
j fin

caso3: bne r2,r3,fin 
daddi r4,r4,2

fin: sd r4,RES(r0)
halt