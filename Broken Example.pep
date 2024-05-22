BR main,i 

msg: .ASCII "fish\x00"

dest: .BLOCK 100

main:    LDBX 0,i
         CALL copy,i
         CALL upper,i
         CALL print,i
         BR end,i

;len: 

copy:    LDWX 0,i
         LDBA msg,x

cLoop:   CPBA 0,i 
         BREQ endCLoop,i
       ;  LDBA msg,x
         STBA dest,x
         ADDX 1,i
         BR cLoop,i

endCLoop: RET
         

upper:   CPBA 'a',i
         BRLT copy,i ; 
         CPBA 'z',i
         BRGT copy,i
         SUBA 0x20,i

;uloop:

endULoop: RET

print:   STRO dest,d

         ;LDBA 0,i
         ;STBA dest,x
         ;STRO dest,d

end:     STOP
         .end