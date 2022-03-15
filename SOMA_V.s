.text
.global SOMA_V
.type SOMA_V, "function"

FIM: ret

SOMA_V: MOV W12, WZR
CONTA: CBZ w1, FIM
	ldr w11, [X0]
	SUB w1, w1, 1
	CBZ W1, FIM2
	add w12, w12, w11
	add x0, x0, 4
	B CONTA

FIM2: add w12, w12, w11
	MOV W0, W12
	B FIM
