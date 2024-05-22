BR main
vector: .EQUATE 2
j:       .EQUATE 0
main:    SUBSP 10,i
         LDWX 0,i
         STWX j,s
for1:    CPWX 4,i
         BRGE endFor1
         ASLX
         DECI vector,sx
         LDWX j,s
         ADDX 1,s
         STWX j,s
         BR for1,i
endFor1: LDWX 3,i
         STWX j,s
for2:    CPWX 0,i
         BRLT endFor2,i 
         DECO j,s
         LDBA ' ',i
         STBA 0xFC16,d
         ASLX
         DECO vector,sx
         LDBA '\n',i
         STBA 0xFC16,d
         LDWX j,s
         SUBX 1,i
         STWX j,s
         BR for2,i
endFor2:  ADDSP 10,i
         STOP
         .END
         
         