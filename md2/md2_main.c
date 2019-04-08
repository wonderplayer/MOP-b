#include <stdio.h>
#include <stdlib.h>
#include "md2.h"

int main (int argc, char* argv[])
{
	int w1,h1,w2,h2;
	int *m1,*m2,*m3,*p;

	scanf("%d", &h1);
	scanf("%d", &w1);

	m1 = (int*) malloc(w1*h1*sizeof(int));
	p = m1;
	int i, j;
	for(i = 0; i < h1; i++){
		for(j = 0; j < w1; j++){
			scanf("%d", p++);
		}
	}
	scanf("%d", &h2);
	scanf("%d", &w2);
	m2 = (int*) malloc(w2*h2*sizeof(int));
	p = m2;
	for(i = 0; i < h2; i++){
		for(j = 0; j < w2; j++){
			scanf("%d", p++);
		}
	}
	m3 = (int*) malloc(h1*w2*sizeof(int));
	printf("%d\n", matmul(h1,w1,m1,h2,w2,m2,m3));
	p = m3;
	for(i = 0; i < h1; i++){
		for(j = 0; j < w2; j++){
			printf("%d ", *p++);
		}
		printf("\n");
	}
	return 0;
}
