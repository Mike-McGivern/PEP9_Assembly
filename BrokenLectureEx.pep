BR main,i
nums: .BLOCK 20
main:    LDWX 0,i
         LDBA 25,i
loop:    CPWX 20,i
         BRGE done,i
         STWA nums,x
         LDWA nums,x ;ATTEMPTING TO MAKE LECTURE EXAMPLE DO SOMETHING
         STWA 0xFC16,d ; "            
         ADDX 2,i
         ADDA 5,i
         BR loop,i 

done:    STOP
         .END
             