#include <stdio.h>

int main(void)
{
	printf("exercise 12. Show the output produced by each of the following program fragments. \n"
					"Assume that i and j are int variables. \n");
	i = 5;
	j = ++i * 3 - 2;
	printf("(a): %d %d should be 6 and 16\n", i, j);

	i = 5;
	j = 3 - 2 * i++;
	printf("(b): %d %d should be 6 and -7\n", i, j);

	i = 7;
	j = 3 * i-- + 2;
	printf("(c): %d %d should be 6 and 23\n", i, j);

	i = 7;
	j = 3 + --i * 2;
	printf("(d): %d %d should be 6 and 15\n", i, j);

	return (0);
}
