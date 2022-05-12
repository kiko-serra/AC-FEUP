.text
.global sumf
.type sumf ,"function"

sumf:	STR X30, [SP, -8]!
		MOV X2, 5
		DUP V1.2D, X2
WHILE:	CBZ W1, FIM // COMO SAO DOUBLES PODEMOS CARREGAR 138/64=2 VALORES DE CADA VEZ
		LDR D0, [X0], 16 //2*8=16
		MUL V0.2S, V0.2S, V0.2S

FIM:	RET


funcy:
