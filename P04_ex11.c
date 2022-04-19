#include <stdio.h>
#include <stdlib.h>
extern long int conta_intervalo(float *V, long int n, float a, float b);

int main() {
	//float 32 bits registo S
	//float *v é um apontador logo nao interessa o type. Vai ser guardado nos registos X.
	// float a e b ja vao ser guardados em registos S0 e S1
	//long int n vai para x
	// Se b fosse double seria guardado no registo D1

	float vetor[]= {-2.5, 2.2, 5.6, 10.5, 20.21};

	long int r = conta_intervalo(vetor, 5, 1.2, 11.3);

	printf("Resultado = %ld\n", r);

	return 0;
}
