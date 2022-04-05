#include <stdio.h>
#include <stdlib.h>

extern long int prodintV(int *R, int *S, int n);
int main(void) {
	int v1[]={3, -1, 0, 2};
	int v2[]={0, 1, 1, 2};
	int n = 4;
	printf("O produto interno é: %ld \n", prodintV(v1, v2, n));
	return 0;
}
