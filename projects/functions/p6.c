#include <stdio.h>

int poly(int x);

int main(void)
{
	int x;

	printf("type a value of x that you want to compute the polynomial with: ");
	scanf("%d", &x);

	printf("%d", poly(x));

	return 0;
}

int poly(int x)
{
	int square = (x * x);
	int cube = (x * x * x);

	return ((3 * cube * square) + (2 * square * square) - (5 * cube) - square + (7 * x) - 6);
}
