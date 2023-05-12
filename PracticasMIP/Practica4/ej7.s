.data
x: .word 5
cant: .word 0
contador: .word 10
tabla: .word 1,5,7,3,4,8,10,11,4,3
res: .word 0,0,0,0,0,0,0,0,0,0

.code

dadd r1,r0,r0
dadd r5,r0,r0
dadd r4,r0,r0
dadd r3,r0,r0
ld r2,contador(r0) 
dadd r6,r0,r0 
dadd r7,r0,r0 
daddi r8,r8,1 

ld r4,x(r0)
loop: ld r3, tabla(r1)
dsub r6,r5,r2
beqz r6,fin 
daddi r5,r5,1
beq r3,r4, repetir
slt r7,r3,r4
beq r7,r8,repetir

ld r7,cant(r0)
daddi r7,r7,1
sd r7,cant(r0)

ld r7,res(r1)
daddi r7,r7,1
sd r7,res(r1)

repetir: daddi r1,r1,8
j loop

fin: halt
