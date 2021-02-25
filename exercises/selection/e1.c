#include <stdio.h>

int main(void)
{
	printf("exercise 1. show the output produced by each, assuming that i, j, and k are int variables.\n\n");

	int i, j, k;

	i = 2; j = 3; k = i * j == 6;
	printf("(a): %d", k);
	printf("\n");
	printf("ans: 1");
	printf("\n");

	k = 1; i = 5; j = 10;
	printf("(b): %d", k > i < j);
	printf("\n");
	printf("ans: 1");
	printf("\n");

	i = 3; j = 2; k = 1;
	printf("(c): %d", i < j == j < k);
	printf("\n");
	printf("ans: 1");
	printf("\n");

	i = 3; j = 4; k = 5;
	printf("(d): %d", i % j + i < k);
	printf("\n");
	printf("ans: 0");
	printf("\n");

	return 0;
}
