         LDWX 0xA,i
         STBX 0x204F,d
         LDWX 0x2D,i
         STBX 0x206F,d
         BR main, i

main:   LDBX 0x204F,d
        STBX 0xFC16,d
        LDBX 0x206F,d
        STBX 0xFC16,d
        STBX 0xFC16,d
        STBX 0xFC16,d
        LDBX 0x204F,d
        STBX 0xFC16,d
        LDBA 0xFC15,d
        STBA 0xFC16,d
        STBA 0x204A,d
        LDBX 0x204F,d
        STBX 0xFC16,d
        LDBA 0x204A,d
choices: CPBA 'a',i
         BRGE pLower,i 
         CPBA 'A',i
         BRGE pCapital,i
         CPBA '9',i
         BRLE pNum,i
        
choices2: CPBA 0x20,i
          BRGE pOther,i
          BR done
        

pCapital: CPBA 'Z', i
          BRLE capital,i
          BR choices,i

capital: LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'C',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'p',i
         STBX 0xFC16,d
         LDBX 'i',i
         STBX 0xFC16,d
         LDBX 't',i
         STBX 0xFC16,d
         LDBX 'a',i
         STBX 0xFC16,d
         LDBX 'l',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         BR uVowel,i




pLower:        CPBA 'z',i
               BRLE lower,i
               BR choices,i

lower:   LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'L',i
         STBX 0xFC16,d
         LDBX 'o',i
         STBX 0xFC16,d
         LDBX 'w',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         LDBX 0x204F,d
         STBX 0xFC16,d
         BR lVowel,i


pNum:    CPBA '0',i
         BRGE num,i
         BR choices2,i

num:     LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'N',i
         STBX 0xFC16,d
         LDBX 'u',i
         STBX 0xFC16,d
         LDBX 'm',i
         STBX 0xFC16,d
         LDBX 'b',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'r',i
         STBX 0xFC16,d
         BR rDiv,i


pOther: CPBA 0x7F,i
        BRLE other,i
        BR choices,i

other: LDBX 0x204F,d
       STBX 0xFC16,d
       LDBX 'O',i
       STBX 0xFC16,d
       LDBX 't',i
       STBX 0xFC16,d
       LDBX 'h',i
       STBX 0xFC16,d
       LDBX 'e',i
       STBX 0xFC16,d
       LDBX 'r',i
       STBX 0xFC16,d
       BR main,i

rDiv:  LDBA 0x204A,d
loop:  ADDA -2,i
       CPBA '0',i
       BREQ even,i
       CPBA '1',i
       BREQ odd,i
       BR loop,i


even:    LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'E',i
         STBX 0xFC16,d
         LDBX 'v',i
         STBX 0xFC16,d
         LDBX 'e',i
         STBX 0xFC16,d
         LDBX 'n',i
         STBX 0xFC16,d
         BR main
       

odd:     LDBX 0x204F,d
         STBX 0xFC16,d
         LDBX 'O',i
         STBX 0xFC16,d
         LDBX 'd',i
         STBX 0xFC16,d
         STBX 0xFC16,d
         BR main


uVowel: CPBA 'A',i
        BREQ vowel,i
        CPBA 'E',i
        BREQ vowel,i
        CPBA 'I',i
        BREQ vowel,i
        CPBA 'O',i
        BREQ vowel,i
        CPBA 'U',i
        BREQ vowel,i
        BR main,i 

lVowel: CPBA 'a',i
        BREQ vowel,i
        CPBA 'e',i
        BREQ vowel,i
        CPBA 'i',i
        BREQ vowel,i
        CPBA 'o',i
        BREQ vowel,i
        CPBA 'u',i
        BREQ vowel,i
        BR main,i 


vowel: LDBX 0x204F,d
       STBX 0xFC16,d
       LDBX 'V',i
       STBX 0xFC16,d
       LDBX 'o',i
       STBX 0xFC16,d
       LDBX 'w',i
       STBX 0xFC16,d
       LDBX 'e',i
       STBX 0xFC16,d
       LDBX 'l',i
       STBX 0xFC16,d
       BR main,i

done:     STOP
         .end