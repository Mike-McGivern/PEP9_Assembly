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
         DECO -2,s
         LDBX 0x204F,d
         STBX 0xFC16,d
         DECO -4,s
         LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 0x214F,d
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         DECO -6,s
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
 



op1:     ADDSP -2,i
         DECI 0,s
         LDWA 0,s 
         BRV error,i
         ADDSP 2,i
         RET

op2:     ADDSP -4,i
         DECI 0,s
         LDWA 0,s
         BRV error,i
         ADDSP 4,i
         RET

add: CALL op1,i
     CALL op2,i
     LDWA -4,s
     ADDA -6,s
     BRV error,i
     STWA -8,s 
    ; CALL stack,i
     CALL output,i
     BR main,i

sub: CALL op1,i
     CALL op2,i
     LDWA -4,s
     SUBA -6,s
     BRV error,i
     STWA -8,s
    ; CALL stack,i 
     CALL output,i
     BR main,i

;--------------------------------
mult: CALL op1,i
      CALL op2,i
      LDWX -6,s          
      CPWX 1,i
      BREQ one1,i
      LDWX -4,s
      CPWX 1,i
      BREQ one2,i
      LDWX -6,s
      CPWX 0,i
      BREQ zero,i
      CPWX -1,i
      BRLE neg2,i
      LDWX -4,s
      CPWX 0,i
      BREQ zero,i
      CPWX -1,i
      BRLE neg1,i
      LDWX 1,i   
      LDWA -4,s
loop: ADDA -4,s ; will subroutine offset stack again?
      BRV error,i
      ADDX 1,i
      CPWX -6,s
      BRGE exitLop,i
      BR loop,i 
exitLop: STWA -8,s
         LDWA -8,s
         BRV error,i
      ;   CALL stack,i
         CALL output,i
         BR main,i

one1: LDWA -4,s
      STWA -8,s
     ; CALL stack,i
      CALL output,i
      BR main,i

one2: LDWA -6,s
      STWA -8,s
     ; CALL stack,i
      CALL output,i
      BR main,i

zero:    LDWA 0,i
         STWA -8,s
        ; CALL stack,i
         CALL output,i
         BR main,i

neg1:    LDWX -6,s
         CPWX -1,i
         BRLE dubNeg,i
         LDWX 1,i   
         LDWA -4,s
         NEGA
         STWA -4,s
nLoop1:  ADDA -4,s
         BRV error,i
         ADDX 1,i
         CPWX -6,s
         BRGE extNLop1,i 
         BR nLoop1,i
extNLop1: BRV error,i
          NEGA
          STWA -8,s
          LDWA -4,s
          NEGA 
          STWA -4,s
         ; CALL stack,i
          CALL output,i
          BR main,i

neg2:    LDWX -4,s
         CPWX -1,i
         BRLE dubNeg,i
         LDWX 1,i   
         LDWA -6,s
         NEGA
         STWA -6,s
nLoop2:  ADDA -6,d
         BRV error,i
         ADDX 1,i
         CPWX -4,s
         BRGE extNLop2,i 
         BR nLoop2,i
extNLop2: BRV error,i
          NEGA
          STWA -8,s
          LDWA -6,s
          NEGA
          STWA -6,s
         ; CALL stack,i
          CALL output,i
          BR main,i  


dubNeg: LDWA -6,s
        NEGA
        STWA -6,s
        LDWA -4,s
        NEGA
        STWA -4,s
        LDWX 1,i   
        LDWA -4,s
dubLop: ADDA -4,s
         BRV error,i
         ADDX 1,i
         CPWX -6,s
         BRGE DbExitLp,i
         BR dubLop,i 
DbExitLp: BRV error,i
          STWA -8,s
          LDWA -6,s
          NEGA
          STWA -6,s
          LDWA -4,s
          NEGA
          STWA -4,s
         ; CALL stack,i
          CALL output,i
          BR main,i
;-----------------------------------                
      

;----------------------------------- 
         
div:     CALL op1,i
         CALL op2,i
         LDWX -6,s
         CPWX 0,i
         BREQ zeroE,i 
         LDWX -4,s
         CPWX 0,i
         BREQ zeroD,i
         LDWX -6,s
         CPWX 1,i
         BREQ onei,i 
         LDWX -4,s
         CPWX 1,i
         BREQ onef,i
         CPWX -1,i
         BREQ neg1d2,i
         CPWX -1,i
         BRLT neg2d,i 
         LDWX -6,s
         CPWX -1,i
         BREQ neg1d1,i
         BRLT neg1d,i 
         LDWX 1,i
         LDWA -4,s
dLop:    SUBA -6,s
         BRV error,i
         ADDX 1,i
         CPWA -6,s
         BRLE exitDLop,i
         BR dLop,i
exitDLop: BRV error,i
          STWX -8,s
         ; CALL stack,i
          CALL output,i
          BR main,i
     

onei:    LDWA -4,s
         STWA -8,s
        ; CALL stack,i
         CALL output,i
         BR main,i

onef:    LDWA 1,i
         STWA -8,s
         ;CALL stack,i
         CALL output,i
         BR main,i

zeroE:   CALL error,i 
         BR main,i
         
zeroD:   LDWA 0,i
         STWA -8,s
        ; CALL stack,i
         CALL output,i
         BR main,i
         
neg1d:   LDWX -4,s
         CPWX -1,i
         BRLE dubNegD,i   
         LDWA -6,s
         NEGA
         STWA -6,s
         LDWX 1,i
         LDWA -4,s
nDLop1:  SUBA -6,s
         BRV error,i
         ADDX 1,i
         CPWA -6,s
         BRLE extNDLp1,i
         BR nDLop1,i
extNDLp1: BRV error,i
          STWX -8,s
          LDWA -8,s
          NEGA
          STWA -8,s
          LDWA -6,s
          NEGA
          STWA -6,s
         ; CALL stack,i
          CALL output,i
          BR main,i
      

neg2d:   LDWX -6,s
         CPWA -1,i 
         BRLE dubNegD,i
         LDWX 1,i
         LDWA -4,s
         NEGA
         STWA -4,s
         LDWA -4,s
nDLop2:  SUBA -6,s
         BRV error,i
         ADDX 1,i
         CPWA -6,s
         BRLE extNDLp2,i
         BR nDLop2,i
extNDLp2: BRV error,i
          STWX -8,s
          LDWA -8,s
          NEGA
          STWA -8,s
          LDWA -4,s
          NEGA        
          STWA -4,s
          ;CALL stack,i
          CALL output,i
          BR main,i

dubNegD: LDWA -4,s
         NEGA
         STWA -4,s
         LDWA -6,s
         NEGA 
         STWA -6,s
         LDWX 1,i
         LDWA -4,s
NDDLop:  SUBA -6,s
         BRV error,i       
         ADDX 1,i
         CPWA -6,s             
         BRLE extNDDLp,i 
         BR NDDLop,i 
extNDDLp: BRV error,i
          STWX -8,s
          LDWA -4,s
          NEGA
          STWA -4,s
          LDWA -6,s
          NEGA 
          STWA -6,s
         ; CALL stack,i
          CALL output,i
          BR main,i

neg1d1:  LDWA -4,s
         NEGA
         STWA -8,s
        ; CALL stack,i
         CALL output,i
         BR main,i

neg1d2: LDWA -4,s
        STWA -8,s
       ; CALL stack,i
        CALL output,i
        BR main,i

;----------------------------------------

quit: STOP
      .end