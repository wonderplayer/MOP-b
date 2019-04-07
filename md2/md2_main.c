#include <stdio.h>
#include <stdlib.h>
#include "md2.h"
#define BUF_SIZE 1024

int main (int argc, char* argv[])
{
	int w1,h1,w2,h2;
	int *m1,*m2,*p;

	scanf("%d", &h1);
	scanf("%d", &w1);

	m1 = (int*) malloc(w1*h1*sizeof(int));
	p = m1;
	int test;
	int i, j;
	for(i = 0; i < h1; i++){
		for(j = 0; j < w1; j++){
			scanf("%d", &test);
			printf("%d\n", test);
		}
	}
	scanf("%d", &h2);
	scanf("%d", &w2);
	p = m2;
	for(i = 0; i < h1; i++){
		for(j = 0; j < w1; j++){
			scanf("%d", p++);
			printf("%d\n", );
		}
	}

	return 0;
}
