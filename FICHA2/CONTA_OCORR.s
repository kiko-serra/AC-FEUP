.text
.global conta_ocorr
.type conta_ocorr,"function"

// EX 17

// declaração C: extern long int conta_ocorr(char *V, long int n, char val);
// *V - x0
// n - x1
// val - w2
// resultado - X0

// elementos do vetor são char (inteiros sem sinal de 8 bits) e por isso podemos processar 16 de cada vez usando SIMD (128 / 8 = 16). 
// Vamos assumir que n é múltiplo de 16

conta_ocorr:
		mov		x10, xzr
		dup		V1.16B, w2
CICLO:	cbz		x1, FIM
		sub		x1, x1, 16 // processamos 16 elementos em cada iteração
		ldr		Q0, [x0], 16
		cmeq	V0.16B, V0.16B, V1.16B // coloca valores de V0.16B a -1 de as posições correspondentes de ambos os operandos forem iguais, 0 caso contrário
		addv	B0, V0.16B // somar todos os valores e colocar em B0 (V0.B[0])
		smov	x2, V0.B[0] // mover com extensão de sinal (necessário porque o valor tem sinal)
		sub		x10, x10, x2 // subtração porque o valor é o número de ocorrências negado
		b 		CICLO
FIM:	mov 	x0, x10
		ret		
