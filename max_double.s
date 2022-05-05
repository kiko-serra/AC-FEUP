.text
.global MAX_DOUBLE
.type MAX_DOUBLE ,"function"

MAX_DOUBLE: LDR X4, [X0], 4
			SUB W1, W1, 1
CONTA:		CBZ W1, FIM
			LDR X2, [X0], 4
			SUB W1, W1, 1
			CMP X4, X2
			B.LE MAX
			B CONTA

MAX: 		MOV X4, X2
			B CONTA

FIM: MOV X0, X4
	RET
