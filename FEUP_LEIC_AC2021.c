/*
 ============================================================================
 Name        : FEUP_LEIC_AC2021.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

/* tutorial
#include <stdio.h>
#include <stdlib.h>

extern int SOMA(int aa, int bb);

int main(void) {
	int a = 5;
	int b = 10;
	int ca = 0;
	ca = SOMA(a,b);
	printf("A soma é %d\n", ca);
	return EXIT_SUCCESS;
}
*/
//ex1
#include <stdio.h>
#include <stdlib.h>

extern int SOMA_V(int *a , int n);
int main(void){
	int dim = 5;
	int v [] = {3 , -1 , 8 , 0 , -3}; // Para testar : 32 bits
	int res ;
	res = SOMA_V(v , dim ) ;
	printf("Soma dos elementos = %d\n", res ) ;
	return EXIT_SUCCESS;
}
