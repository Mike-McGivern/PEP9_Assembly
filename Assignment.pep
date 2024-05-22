         LDWA 0xA,i ; 0,1,2
         STBA 0x004F,d ; 3,4,5,6
         LDWA 0xFFFF,i ;7.8,9
         STWA 0x004C,d;
         DECO 0x004C,d ;A,B,C
         LDBA 0x004F,d ;D,E,F
         STBA 0xFC16,d ;10,11,12
         LDBA 0xFC15,d ;13,14,15,
         STBA 0x004A,d ;16,17,18
         STBA 0xFC16,d; 19,1A,1B
         LDBA 0x004F,d; 1C, 1D,1E
         STBA 0xFC16,d  ;1F,20,21,
         LDBA 0x004A,d ;22,23,24
         SUBA 0x0020,i ;25,26,27,
         STBA 0xFC16,d ;28,29,2A,
         LDBA 0x004F,d; 2B,2C,2D
         STBA 0xFC16,d; 2E,2F,30
         LDWA 0x004A,d;
         ADDA 0x0020,i;
         LDWA 0x0,i;
         DECO 0x0049,d 
         LDBA 0x004F,d
         STBA 0xFC16,d
         HEXO 0x0049,d
         STOP
         .END; 
         
         
