#include <stdio.h>

int main(void)
{
	printf("exercise 4. the value of each of the following exps in C99\n");

	i = 8; j = 5;
	printf("(a): %d should be 1\n", i / j);
	
	i = -8; j = 5;
	printf("(b): %d should be -1\n", i / j);

	i = 8; j = -5;
	printf("(c): %d should be -1\n", i / j);

	i = -8; j = -5;
	printf("(d): %d should be 1\n", i / j);

	return (0);
}
