#include <stdio.h>

int main(void)
{
	printf("exercise 15. Give the values of i and j after each of the following expression statements\n"
					"has been executed. (Assume that i has the value 1 initially and j has the value 2.)\n");
	int i, j;

	i = 1, j = 2;
	i += j;
	printf("(a): %d %d", i, j);
	printf("\n");
	printf("ans: 3 2");
	printf("\n");

	i = 1, j = 2;
	i--;
	printf("(b): %d %d ", i, j);
	printf("\n");
	printf("ans: 0 2");
	printf("\n");

	i = 1, j = 2;
	i * j / i;
	printf("(c): %d %d", i, j);
	printf("\n");
	printf("ans: 1 2");
	printf("\n");

	i = 1, j = 2;
	i % ++j;
	printf("(d): %d %d", i, j);
	printf("\n");
	printf("ans: 1 3");
	printf("\n");

	return 0;
}
