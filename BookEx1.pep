         BR main,i
vector:  .BLOCK 8
j:       .BLOCK 2
         


main:    LDWX 0,i
         STWX j,d
for1:    CPWX 4,i
         BRGE endFor1,i
         ASLX
         DECI vector,x
         LDWX j,d
         ADDX 1,i
         STWX j,d
         BR for1,i
endFor1: LDWX 3,i
         STWX j,d
         ;LDWX 0,i
         ;STWX j,d
for2:    CPWX 0,i ;CPWX 4,i
         BRLT endFor2,i ;BRGE ...
         DECO j,d
         LDBA ' ',i
         STBA 0xFC16,d     
         ASLX
         DECO vector,x
         LDBA '\n',i
         STBA 0xFC16,d
         LDWX j,d
         SUBX 1,i ;ADDX 1,i
         STWX j,d
         BR for2,i
endFor2: STOP
         .END

          
         
         
         
         