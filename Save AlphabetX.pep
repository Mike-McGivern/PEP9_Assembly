BR main,i        ;
letters: .BLOCK 26
main:    LDBA 'a',i
         LDWX 1,i
loop:    STBA letters,x
         ADDX 1,i
         ADDA 1,i
         CPBX 26,i
         BRGE done,i
         BR loop,i
done:    STOP
         .END