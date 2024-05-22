
         LDWX 0xA,i
         STBX 0x204F,d
         BR main,i


main: LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'E',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX '1',i
         STBX 0xFC16,d
         LDBX 's',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'l',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX '{',i
         STBX 0xFC16,d
         LDBX 'P',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'J',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'G',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'L',i
         STBX 0xFC16,d
         LDBX '}',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         
choice1: LDBA 0xFC15,d
         STBA 0x204A,d
         LDBA 0x204A,d
         CPBA 'P',i
         BREQ First,i 
         CPBA 'J',i
         BREQ First,i 
         CPBA 'G',i
         BREQ First,i 
         CPBA 'L',i
         BREQ First,i 
         BR invaild1,i 

             
      
      BR done,i 

First:   LDBA 0x204A,d
         ADDSP -1,i
         STBA 0,s
         LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'E',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX '2',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 'd',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'l',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX '{',i
         STBX 0xFC16,d
         LDBX 'G',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'B',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'S',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'T',i
         STBX 0xFC16,d
         LDBX '}',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         BR choice2,i



invaild1: LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'I',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 'v',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'l',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'd',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'c',i
         STBX 0xFC16,d
         LDBX 'h',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'c',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 'y',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'g',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX '{',i
         STBX 0xFC16,d
         LDBX 'P',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'J',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'G',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'L',i
         STBX 0xFC16,d
         LDBX '}',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         BR choice1,i

choice2: LDBA 0xFC15,d
         STBA 0x204A,d
         LDBA 0xFC15,d
         STBA 0x204A,d
         LDBA 0x204A,d
         CPBA 'G',i
         BREQ Last,i 
         CPBA 'B',i
         BREQ Last,i 
         CPBA 'S',i
         BREQ Last,i 
         CPBA 'T',i
         BREQ Last,i 
         BR invaild2,i 

         
Last: LDBA 0x204A,d
         ADDSP -1,i
         STBA 0,s
         LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'E',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX ' ',i 
         STBX 0xFC16,d
         LDBX 'p',i
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 's',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'v',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'g',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         BR choice3,i
                  

invaild2: LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'I',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 'v',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'l',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'd',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'c',i
         STBX 0xFC16,d
         LDBX 'h',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'c',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 'y',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'g',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX '{',i
         STBX 0xFC16,d
         LDBX 'G',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'B',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'S',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'T',i
         STBX 0xFC16,d
         LDBX '}',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         BR choice2,i


choice3: DECI 0x204A,d
         LDWA 0x204A,d
         CPWA 0,i
         BRLE invalid3,i
         LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'E',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX '3',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 'd',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'c',i
         STBX 0xFC16,d
         LDBX 'h',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'c',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX '{',i
         STBX 0xFC16,d
         LDBX 'A',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX 'D',i
         STBX 0xFC16,d
         LDBX '}',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d 
         BR choice4,i 

invalid3: LDBX 0x204F,d
         STBX 0xFC16,d 
         LDBX 'I',i
          STBX 0xFC16,d
          LDBX 'n',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'g',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'm',i
         STBX 0xFC16,d
         LDBX 'u',i
         STBX 0xFC16,d
         LDBX 's',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'b',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'p',i
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 's',i
         STBX 0xFC16,d         
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'v',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         BR choice3,i
         

choice4: LDBA 0xFC15,d
         CPBA 'A',i
         BREQ Accend,i
         CPBA 'D',i
         BREQ Deccend,i
         BR invaild4,i

invaild4: LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'I',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 'v',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'l',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'd',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'c',i
         STBX 0xFC16,d
         LDBX 'h',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'c',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 'y',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'g',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX '{',i
         STBX 0xFC16,d
         LDBX 'A',i
         STBX 0xFC16,d
         LDBX ',',i
         STBX 0xFC16,d
         LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'D',i
         STBX 0xFC16,d
         LDBX '}',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         BR choice4,i

Accend: LDWA 0x204A,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         LDWA 1,i
         STWA 0x304A,d
aFLoop:  LDWA 0x304A,d
         CPWA 0x204A,d
         BRGT done,i
         DECO 0x304A,d
         LDBA 1,s
         CPBA 'P',i
         BREQ aFP,i
         CPBA 'J',i
         BREQ aFJ,i
         CPBA 'G',i
         BREQ aFG,i
         CPBA 'L',i
         BREQ aFL,i
aLLoop:  LDBA 0,s
         CPBA 'G',i
         BREQ aLG,i
         CPBA 'B',i
         BREQ aLB,i
         CPBA 'S',i
         BREQ aLS,i
         CPBA 'T',i
         BREQ aLT,i
         LDWA 0x304A,d
         ADDA 1,i
         STWA 0x304A,d
         BR aFLoop,i




Deccend: LDWA 0x204A,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         ADDA 1,i
         STWA 0x204A,d
dFLoop:  LDWA 0x204A,d
         ADDA -1,i
         STWA 0x204A,d
         CPWA 0,i
         BRLE done,i
         DECO 0x204A,d
         LDBA 1,s
         CPBA 'P',i
         BREQ dFP,i
         CPBA 'J',i
         BREQ dFJ,i
         CPBA 'G',i
         BREQ dFG,i
         CPBA 'L',i
         BREQ dFL,i
dLLoop:  LDBA 0,s
         CPBA 'G',i
         BREQ dLG,i
         CPBA 'B',i
         BREQ dLB,i
         CPBA 'S',i
         BREQ dLS,i
         CPBA 'T',i
         BREQ dLT,i
         LDWA 0x204A,i
         BR dFLoop,i

aFP:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'P',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         BR aLLoop,i
         
         

aFJ:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'J',i
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         BR aLLoop,i
         
         

aFG:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'G',i
         STBX 0xFC16,d
         LDBX 'l',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'n',i      
         STBX 0xFC16,d
         BR aLLoop,i


aFL:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'L',i
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 's',i
         STBX 0xFC16,d
         BR aLLoop,i

aLG:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'G',i
         StBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'f',i
         STBX 0xFC16,d
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d 
         LDWA 0x304A,d
         ADDA 1,i
         STWA 0x304A,d
         BR aFLoop,i

aLB:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'B',i
         STBX 0xFC16,d
         LDBX 'r',i          
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 'w',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d 
         LDWA 0x304A,d
         ADDA 1,i
         STWA 0x304A,d
         BR aFLoop,i

aLS:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'S',i
         STBX 0xFC16,d
         LDBX 'w',i
         STBX 0xFC16,d
         LDBX 'a',i
         StBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 's',i
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d 
         LDWA 0x304A,d
         ADDA 1,i
         STWA 0x304A,d
         BR aFLoop,i


aLT:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'T',i
         STBX 0xFC16,d
         LDBX 'u',i
         STBX 0xFC16,d
         LDBX 'c',i
         STBX 0xFC16,d
         LDBX 'k',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         LDWA 0x304A,d
         ADDA 1,i
         STWA 0x304A,d 
         BR aFLoop,i

dFP:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'P',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         BR dLLoop,i

dFJ:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'J',i
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         BR dLLoop,i

dFG:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'G',i
         STBX 0xFC16,d
         LDBX 'l',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'n',i      
         STBX 0xFC16,d
         BR dLLoop,i

dFL:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'L',i
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 's',i
         STBX 0xFC16,d
         BR dLLoop,i

dLG:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'G',i
         StBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'f',i
         STBX 0xFC16,d
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d 
         BR dFLoop,i

dLB:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'B',i
         STBX 0xFC16,d
         LDBX 'r',i          
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 'w',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d 
         BR dFLoop,i


dLS:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'S',i
         STBX 0xFC16,d
         LDBX 'w',i
         STBX 0xFC16,d
         LDBX 'a',i
         StBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 's',i
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d 
         BR dFLoop,i

dLT:     LDBX ' ',i
         STBX 0xFC16,d
         LDBX 'T',i
         STBX 0xFC16,d
         LDBX 'u',i
         STBX 0xFC16,d
         LDBX 'c',i
         STBX 0xFC16,d
         LDBX 'k',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d 
         BR dFLoop,i


done: STOP
      .end