#include <stdio.h>

int main(void)
{
	printf("Prints all even squares between 1 and given number.\n\n");

	int n, i;

	printf("Enter a number: ");
	scanf("%d", &n);

	i = 1;
	while (i * i <= n) // same as (i <= root of n)
	{
		if ((i * i) % 2 == 0) // print only even squares
			printf("%d\n", i * i);
		i++; // always increment either it's even or odd
	}
	printf("\n");

	return 0;
}
