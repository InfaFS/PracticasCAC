.data

a: .word 3
x: .word 0
y: .word 2

.code
ld r1,a(r0)
dsub r2,r2,r2
ld r3,y(r0)
while: beqz r1,fin
dadd r2,r2,r3
daddi r1,r1,-1
beqz r0,while

fin:  sd r2,x(r0)

halt