.text
.global conta_intervalo
.type conta_intervalo, "function"

FIM: MOV X0, X10
	RET

conta_intervalo:	ADD X10, xzr, XZR
	CICLO:			CBZ X1, FIM
					LDR S2, [X0]
					FCMP S2, S1
					B.LS MAIOR
					
NAO_PERTENCE		B CARREGA

PERTENCE:			ADD X10, X10, 1
					SUB X1, X1, 1
					
CARREGA:			CBZ X1, FIM
					ADD X0, X0, 4
					B CICLO

MAIOR: FCMP S2, S0
		B.HS PERTENCE
