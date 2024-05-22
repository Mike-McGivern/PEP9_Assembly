; Print first name
         LDBX 0x0D,d
         STBX 0xFC16,d
         LDBX 0xE,d
         STBX 0xFC16,d
         STOP
         .byte 'H'
         .byte 'i'
         .END