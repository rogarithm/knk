#include <stdio.h>

int main(void)
{
	printf("exercise 1\n");
	int i, j, k;

	i = 5; j = 3;
	printf("(a): %d %d should be 1 and 2 each.\n", i / j, i % j);

	i = 2; j = 3;
	printf("(b): %d should be 0\n", (i + 10) % j);

	i = 7; k = 9; j = 8;
	printf("(c): %d should be 1, as multiplicative operators are left associative.\n", (i + 10) % k / j);

	i = 1; j = 2; k = 3;
	printf("(d): %d should be 0, same reason as (c).\n", (i + 5) % (j + 2) / k);


	return (0);
}
