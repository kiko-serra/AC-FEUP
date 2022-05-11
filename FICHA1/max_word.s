.text
.global MAX_WORD
.type MAX_WORD ,"function"

MAX_WORD: 	LDR W4, [X0], 4
			SUB W1, W1, 1
CONTA:		CBZ W1, FIM
			LDR W2, [X0], 4
			SUB W1, W1, 1
			CMP W4, W2
			B.LE MAX
			B CONTA

MAX: 		MOV W4, W2
			B CONTA

FIM: ADD X0, X4, XZR
	RET
