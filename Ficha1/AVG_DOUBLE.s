.text
.global AVG_DOUBLE
.type AVG_DOUBLE ,"function"

AVG_DOUBLE: MOV X2, XZR
			MOV W3, W1
SOMA:		CBZ W1, FIM
			LDR X4, [X0], 8
			SUB W1, W1, 1
			ADDS X2, X2, X4
			B SOMA


FIM: 		SDIV X0, X2, X3
			RET
