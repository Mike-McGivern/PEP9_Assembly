         LDBX 0x2D,i
         STBX 0x312C,d
         LDWX 0xA,i
         STBX 0x312A,d
         LDBX 0x20,i
         STBX 0x204F,d
         LDBX 0X3D,i
         STBX 0X214F,d
         BR main,i

main:    LDBA 0xFC15,d
         STBA 0x204A,d
         LDBA 0x204A,d
         CPBA '+',i
         BREQ add,i
         CPBA '-',i
         BREQ sub,i
         CPBA '*',i
         BREQ mult,i 
         CPBA '/',i
         BREQ div,i 
         CPBA 'q',i
         BREQ quit,i
         CPBA 'Q',i
         BREQ quit,i

stack:   LDWA 0x214C,d
         ADDSP -2,i
         STWA 0,s
         LDWA 0x214A,d
         ADDSP -2,i
         STWA 0,s
         LDWA 0x204C,d
         ADDSP -2,i
         STWA 0,s
         LDBA 0x204A,d
         ADDSP -1,i
         STBA 0,s
         RET

error:   LDBX 'E',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 0x312A,d
         STBX 0xFC16,d
         LDBX 0x312C,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         LDBX 0x312A,d
         STBX 0xFC16,d
         BR main,i

output:  LDBA 0x204A,d ; 
         STBA 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         DECO 0x204C,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         DECO 0x214A,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 0x214F,d
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         DECO 0x214C,d
         LDBX 0x312A,d
         STBX 0xFC16,d
         LDBX 0x312C,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         STBX 0xFC16,d
         LDBX 0x312A,d
         STBX 0xFC16,d
         BR main,i
 



op1:     DECI 0x204C,d
         LDWA 0x204C,d 
         BRV error,i
         RET

op2:     DECI 0x214A,d
         LDWA 0x214A,d
         BRV error,i
         RET

add: CALL op1,i
     CALL op2,i
     LDWA 0x214A,d
     ADDA 0x204C,d
     BRV error,i
     STWA 0x214C,d 
    ; CALL stack,i
     CALL output,i
     BR main,i

sub: CALL op1,i
     CALL op2,i
     LDWA 0x204C,d
     SUBA 0x214A,d
     BRV error,i
     STWA 0x214C,d
    ; CALL stack,i 
     CALL output,i
     BR main,i

;--------------------------------
mult: CALL op1,i
      CALL op2,i
      LDWX 0x214A,d          
      CPWX 1,i
      BREQ one1,i
      LDWX 0x204C,d
      CPWX 1,i
      BREQ one2,i
      LDWX 0x214A,d
      CPWX 0,i
      BREQ zero,i
      CPWX -1,i
      BRLE neg2,i
      LDWX 0x204C,d
      CPWX 0,i
      BREQ zero,i
      CPWX -1,i
      BRLE neg1,i
      LDWX 1,i   
      LDWA 0x204C,d
loop: ADDA 0x204C,d
      BRV error,i
      ADDX 1,i
      CPWX 0x214A,d
      BRGE exitLop,i
      BR loop,i 
exitLop: STWA 0x214C,d
         LDWA 0x214C,d
         BRV error,i
      ;   CALL stack,i
         CALL output,i
         BR main,i

one1: LDWA 0x204C,d
      STWA 0x214C,d
     ; CALL stack,i
      CALL output,i
      BR main,i

one2: LDWA 0x214A,d
      STWA 0x214C,d
     ; CALL stack,i
      CALL output,i
      BR main,i

zero:    LDWA 0,i
         STWA 0x214C,d
        ; CALL stack,i
         CALL output,i
         BR main,i

neg1:    LDWX 0x214A,i
         CPWX -1,i
         BRLE dubNeg,i
         LDWX 1,i   
         LDWA 0x204C,d
         NEGA
         STWA 0x204C,d
nLoop1:  ADDA 0x204C,d
         BRV error,i
         ADDX 1,i
         CPWX 0x214A,d
         BRGE extNLop1,i 
         BR nLoop1,i
extNLop1: BRV error,i
          NEGA
          STWA 0x214C,d
          LDWA 0x204C,d
          NEGA 
          STWA 0x204C,d
         ; CALL stack,i
          CALL output,i
          BR main,i

neg2:    LDWX 0x204C,d
         CPWX -1,i
         BRLE dubNeg,i
         LDWX 1,i   
         LDWA 0x214A,d
         NEGA
         STWA 0x214A,d
nLoop2:  ADDA 0x214A,d
         BRV error,i
         ADDX 1,i
         CPWX 0x204C,d
         BRGE extNLop2,i 
         BR nLoop2,i
extNLop2: BRV error,i
          NEGA
          STWA 0x214C,d
          LDWA 0x214A,d
          NEGA
          STWA 0x214A,d
         ; CALL stack,i
          CALL output,i
          BR main,i  


dubNeg: LDWA 0x214A,d
        NEGA
        STWA 0x214A,d
        LDWA 0x204C,d
        NEGA
        STWA 0x204C,d
        LDWX 1,i   
        LDWA 0x204C,d
dubLop: ADDA 0x204C,d
         BRV error,i
         ADDX 1,i
         CPWX 0x214A,d
         BRGE DbExitLp,i
         BR dubLop,i 
DbExitLp: BRV error,i
          STWA 0x214C,d
          LDWA 0x214A,d
          NEGA
          STWA 0x214A,d
          LDWA 0x204C,d
          NEGA
          STWA 0x204C,d
         ; CALL stack,i
          CALL output,i
          BR main,i
;-----------------------------------                
      

;----------------------------------- 
         
div:     CALL op1,i
         CALL op2,i
         LDWX 0x214A,d
         CPWX 0,i
         BREQ zeroE,i 
         LDWX 0x204C,d
         CPWX 0,i
         BREQ zeroD,i
         LDWX 0x214A,d
         CPWX 1,i
         BREQ onei,i 
         LDWX 0x204C,d
         CPWX 1,i
         BREQ onef,i
         CPWX -1,i
         BREQ neg1d2,i
         CPWX -1,i
         BRLT neg2d,i 
         LDWX 0x214A,d
         CPWX -1,i
         BREQ neg1d1,i
         BRLT neg1d,i 
         LDWX 1,i
         LDWA 0x204C,d
dLop:    SUBA 0x214A,d
         BRV error,i
         ADDX 1,i
         CPWA 0x214A,d
         BRLE exitDLop,i
         BR dLop,i
exitDLop: BRV error,i
          STWX 0x214C,d
         ; CALL stack,i
          CALL output,i
          BR main,i
     

onei:    LDWA 0x204C,d
         STWA 0x214C,d
        ; CALL stack,i
         CALL output,i
         BR main,i

onef:    LDWA 1,i
         STWA 0x214C,d
         CALL stack,i
         CALL output,i
         BR main,i

zeroE:   CALL error,i 
         BR main,i
         
zeroD:   LDWA 0,i
         STWA 0x214C,d
        ; CALL stack,i
         CALL output,i
         BR main,i
         
neg1d:   LDWX 0x204C,d
         CPWX -1,i
         BRLE dubNegD,i   
         LDWA 0x214A,d
         NEGA
         STWA 0x214A,d
         LDWX 1,i
         LDWA 0x204C,d
nDLop1:  SUBA 0x214A,d
         BRV error,i
         ADDX 1,i
         CPWA 0x214A,d
         BRLE extNDLp1,i
         BR nDLop1,i
extNDLp1: BRV error,i
          STWX 0x214C,d
          LDWA 0x214C,d
          NEGA
          STWA 0x214C,d
          LDWA 0x214A,d
          NEGA
          STWA 0x214A,d
         ; CALL stack,i
          CALL output,i
          BR main,i
      

neg2d:   LDWX 0x214A,d
         CPWA -1,i 
         BRLE dubNegD,i
         LDWX 1,i
         LDWA 0x204C,d
         NEGA
         STWA 0x204C,d
         LDWA 0x204C,d
nDLop2:  SUBA 0x214A,d
         BRV error,i
         ADDX 1,i
         CPWA 0x214A,d
         BRLE extNDLp2,i
         BR nDLop2,i
extNDLp2: BRV error,i
          STWX 0x214C,d
          LDWA 0x214C,d
          NEGA
          STWA 0x214C,d
          LDWA 0x204C,d
          NEGA        
          STWA 0x204C,d
          ;CALL stack,i
          CALL output,i
          BR main,i

dubNegD: LDWA 0x204C,d
         NEGA
         STWA 0x204C,d
         LDWA 0x214A,d
         NEGA 
         STWA 0x214A,d
         LDWX 1,i
         LDWA 0x204C,d
NDDLop:  SUBA 0x214A,d
         BRV error,i       
         ADDX 1,i
         CPWA 0x214A,d
         BRLE extNDDLp,i 
         BR NDDLop,i 
extNDDLp: BRV error,i
          STWX 0x214C,d
          LDWA 0x204C,d
          NEGA
          STWA 0x204C,d
          LDWA 0x214A,d
          NEGA 
          STWA 0x214A,d
         ; CALL stack,i
          CALL output,i
          BR main,i

neg1d1:  LDWA 0x204C,d
         NEGA
         STWA 0x214C,d
        ; CALL stack,i
         CALL output,i
         BR main,i

neg1d2: LDWA 0x204C,d
        STWA 0x214C,d
       ; CALL stack,i
        CALL output,i
        BR main,i

;----------------------------------------

quit: STOP
      .end