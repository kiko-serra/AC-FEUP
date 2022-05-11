.text
.global conta_intervalo
.type conta_intervalo ,"function"

conta_intervalo: 	MOV X9, 0
NEXT:				CBZ X1, FIM
					LDR S2, [X0], 4
					SUB X1, X1, 1
					FCMP S0, S2
					B.HS NEXT
					FCMP S1, S2
					B.LT NEXT
					ADD X9, X9, 1
					B NEXT

FIM: 				MOV X0, X9
					RET
