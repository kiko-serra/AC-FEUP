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
/*
 * EX2.1
extern int MAX_DOUBLE(int *a , int n);

int main(void){
	int dim = 5;
	long int v [] = {3 , -1 , 8 , 0 , -3}; // Para testar : 32 bits
	long int res ;
	res = MAX_DOUBLE(v , dim ) ;
	printf("o VALOR MAX É = %d\n", res ) ;
	return 0;
}

*/
/*EX2.2
extern int MAX_WORD(int *a , int n);

int main(void){
	int dim = 6;
	int v [] = {3 , -1 , 8 , 0 , -3, 2}; // Para testar : 32 bits
	int res ;
	res = MAX_WORD(v , dim ) ;
	printf("o VALOR MAX É = %d\n", res ) ;
	return 0;
}
*/
/*
EX2.4
extern int AVG_DOUBLE(long int *a , int n);

int main(void){
	int dim = 4;
	long int v [] = {3 , 3, 2, -3}; // Para testar : 32 bits
	long int res ;
	res = AVG_DOUBLE(v , dim ) ;
	printf("A MÉDIA É = %ld\n", res ) ;
	return 0;
}
*/
extern int IN_RANGE(long int *a , int n, long int max, long int min);

int main(void){
	int dim = 7;
	long int v [] = {3, 3, 2, -3, 5, 6, 0}; // 4 valores no intervalo
	long int max= 5;
	long int min = 2;
	long int res ;
	res = IN_RANGE(v , dim, max, min) ;
	printf("NO VETOR HA %ld QUE PERTENCEM -> DEVIAM SER 4\n", res ) ;
	return 0;
}
