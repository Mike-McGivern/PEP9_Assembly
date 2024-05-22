         BR main,i

main: LDBA 0xFC15,d
      CPBA 'W',i
      BREQ print,i
      CPBA 'w',i
      BREQ print,i
      BR else,i

else: DECO 0,i
      BR done,i

print: STBA 0xFC16,d

done:  STOP
       .end
