#include <stdio.h>
#include <stdlib.h>

int add(int a, int b);
int f(int x);

int main ()
{
	const int a = 11;
	const int b = 12;
	printf("add(%d, %d) = %d\n", a, b, add(a, b));
	const int c = 10;
	printf("f(%d) = %d\n", c, f(c));
	return 0;
}
