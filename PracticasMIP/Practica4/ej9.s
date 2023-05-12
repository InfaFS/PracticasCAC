.data

a: .word 3
x: .word 1
y: .word 2

.code
ld r1,a(r0)
ld r2,x(r0)
ld r3,y(r0)
while: beqz r1,fin
dadd r2,r2,r3
daddi r1,r1,-1
j while 

fin: sd r1,a(r0)
sd r2,x(r0)

halt