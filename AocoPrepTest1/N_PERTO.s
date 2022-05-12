.text
.global nperto
.type nperto ,"function"

nperto:	MOV W9, WZR

WHILE:	CBZ W2, FIM
		LDR W4, [X0], 4 //4 PALAVRAS = 4*4=16
		LDR W5, [X1], 4
		SUB W2, W2, 1
		SUBS W4, W4, W5
		CNEG W4, W4, MI
		CMP W4, W3
		CSINC W9, W9, W9, HI
		B WHILE



FIM:	MOV W0, W9
		RET
