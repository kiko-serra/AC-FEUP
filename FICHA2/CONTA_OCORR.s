.text
.global conta_ocorr
.type conta_ocorr,"function"

// EX 17

// declara��o C: extern long int conta_ocorr(char *V, long int n, char val);
// *V - x0
// n - x1
// val - w2
// resultado - X0

// elementos do vetor s�o char (inteiros sem sinal de 8 bits) e por isso podemos processar 16 de cada vez usando SIMD (128 / 8 = 16). 
// Vamos assumir que n � m�ltiplo de 16

conta_ocorr:
		mov		x10, xzr
		dup		V1.16B, w2
CICLO:	cbz		x1, FIM
		sub		x1, x1, 16 // processamos 16 elementos em cada itera��o
		ldr		Q0, [x0], 16
		cmeq	V0.16B, V0.16B, V1.16B // coloca valores de V0.16B a -1 de as posi��es correspondentes de ambos os operandos forem iguais, 0 caso contr�rio
		addv	B0, V0.16B // somar todos os valores e colocar em B0 (V0.B[0])
		smov	x2, V0.B[0] // mover com extens�o de sinal (necess�rio porque o valor tem sinal)
		sub		x10, x10, x2 // subtra��o porque o valor � o n�mero de ocorr�ncias negado
		b 		CICLO
FIM:	mov 	x0, x10
		ret		
