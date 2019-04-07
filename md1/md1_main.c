#include <stdio.h>
#include <stdlib.h>
#include "md1.h"

int main (int argc, char* argv[])
{
	int n = atoi(argv[1]);
	printf("%d\n", asum(n));
	return 0;
}
