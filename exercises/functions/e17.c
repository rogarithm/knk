// rewrite the fact function so that it's no longer recursive.
#include <stdio.h>

int fact(int n);

int main(void)
{
	int n;

	printf("Enter a number to compute its factorial: ");
	scanf("%d", &n);

	printf("%d factorial is %d.\n", n, fact(n));

	return 0;
}

int fact(int n)
{
	int f = 1;

	while (n > 1)
	{
		f *= n;
		n--;
	}
	return f;
}
