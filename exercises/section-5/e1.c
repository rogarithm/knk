#include <stdio.h>

int main(void)
{
	printf("exercise 1. show the output produced by each, assuming that i, j, and k are int variables.\n\n");
	i = 2; j = 3; k = i * j == 6;
	printf("the precedence order is *, ==, =, from high to low.\n");
	printf("thus, i * j computes to 6, checked with 6 for equality which is true,\n");
	printf("and the result gets assigned to k. So,\n");
	printf("(a): %d should be 1.\n", k);
	i = 5; j = 10; k = 1;
	printf("< has high precedence than >. So,\n");
	printf("(b): %d should be 1.\n", k > i < j);
	i = 3; j = 2; k = 1;
	printf("relational ops have higher precedence than equality ops. So,\n");
	printf("(c): %d should be 1.\n", i < j == j < k);
	i = 3; j = 4; k = 5;
	printf("(d): %d should be 0.\n\n", i % j + i < k);

	return (0);
}
