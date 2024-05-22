BR main,i 
arr: .BLOCK 25

main:    ADDSP -2,i
         LDWX 0,i
         STWX 0,s ;works without this line, but it was added in 2nd lecture
loop:    LDWX 0,s ; This works without this line 
         CPWX 20,i
         BRGE done,i
         LDWA 0,s 
         ASLA
         ASLA
         ASLX
         STWA arr,x
         DECO arr,x
         LDBA '-',i
         STBA 0xFC16,d
         LDWA arr,x
         ASRX
         ADDX 1,i
         STWX 0,s
         BR loop,i 
done:    ADDSP 2,i
         STOP
         .end
       