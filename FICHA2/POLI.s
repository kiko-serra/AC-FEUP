.text
.global POLI
.type POLI ,"function"

POLI:   stp x29, x30, [SP, -32]! // precisamos de guardar x29 (FP) e x30 (LR) para repor no fim
	str x20, [SP, 16] // guardar x20 pois é registo protegido e é usado no corpo da função POLI
	mov x29, SP // atualizar FP
		mov X10, X0 // <1>
		bl QUAD
		mov X20, X0
		mov X0, 3
		mul X10, X10, X0
		add X0, X20, X10
		add X0, X0, 1
		ldr x20, [SP, 16] // repor x20 
	ldp x29, x30, [SP], 32 // POP da frame
FIM:	ret // <2>
QUAD:
		mul X0, X0, X0
		ret
