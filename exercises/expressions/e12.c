#include <stdio.h>

int main(void)
{
	printf("exercise 12. Show the output produced by each of the following program fragments. \n"
					"Assume that i and j are int variables. \n");
	int i, j;

	i = 5;
	j = ++i * 3 - 2;
	printf("(a): %d %d\n", i, j);
	printf("ans: 6 16");
	printf("\n");

	i = 5;
	j = 3 - 2 * i++;
	printf("(b): %d %d\n", i, j);
	printf("ans: 6 -7");
	printf("\n");

	i = 7;
	j = 3 * i-- + 2;
	printf("(c): %d %d \n", i, j);
	printf("ans: 6 23");
	printf("\n");

	i = 7;
	j = 3 + --i * 2;
	printf("(d): %d %d \n", i, j);
	printf("ans: 6 15");
	printf("\n");

	return 0;
}
