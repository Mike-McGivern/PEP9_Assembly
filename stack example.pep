BR main,i

main: LDWA 0xCDBA,i
ADDSP -2,i
STWA 0,s
LDBA 'a',i
ADDSP -1,i
STBA 0,s
LDBA 0x01,i
ADDSP -1,i
STBA 0,s
LDBA 0x05,i
ADDSP -1,i
STBA 0,s
STOP
.end
