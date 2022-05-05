.text
.global SOMA_V
.type SOMA_V ,"function"

SOMA_V: MOV W12, WZR
CONTA:  CBZ X1, FIM
		SUB X1, X1, 1
		LDR W11, [X0], 4
		CBZ X1, FIM2
		ADD W12, W12, W11
		B CONTA




FIM: RET

FIM2:	ADD W12, W12, W11
		MOV W0, W12
		RET
