#include <stdio.h>

int main(void)
{
	printf("exercise 9. show the output produced by each of the following program fragments.\n");
	int i, j, k;

	i = 7; j = 8;
	i *= j + 1;
	printf("(a): %d & %d should be 63 & 8 each.\n", i, j);
	
	i = j = k = 1;
	i += j += k;
	printf("(b): %d & %d & %d should be 3, 2, 1.\n", i, j, k);

	i = 1; j = 2; k = 3;
	i -= j -= k;
	printf("(c): %d & %d & %d should be 2, -1, 3.\n", i, j, k);

	i = 2; j = 1; k = 0;
	i *= j *= k;
	printf("(d): %d & %d & %d should be 0, 0, 0.\n", i, j, k);

	return (0);
}
