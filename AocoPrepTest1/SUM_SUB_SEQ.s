.text
.global sumsubseq
.type sumsubseq ,"function"

sumsubseq:	CBZ W1, FIM2
			MOV X9, XZR
			LDR W10, [X0], 4
			ADD W9, W10, W9
			SUB W1, W1, 1
WHILE:		CBZ W1, FIM
			LDR W11, [X0], 4
			SUB W1, W1, 1
			CMP W11, W10
			B.LE WHILE
			ADD W9, W9, W11
			MOV W10, W11
			B WHILE

FIM:		MOV X0, X9
			RET
FIM2:		MOV X0, XZR
			RET
