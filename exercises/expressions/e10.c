#include <stdio.h>

int main(void)
{
	printf("exercise 10. show the output produced by each of the following program fragments.\n");

	i = 6;
	j = i += i;
	printf("(a): %d & %d should be 12 & 12 each.\n", i, j);
	
	i = 5;
	j = (i -= 2) + 1;
	printf("(b): %d & %d should be 3, 4.\n", i, j);

	i = 7;
	j = 6 + (i = 2.5);
	printf("(c): %d & %d should be 2.5, 8.5.\n", i, j);

	i = 2; j = 1; k = 0;
	i *= j *= k;
	printf("(d): %d & %d & %d should be 0, 0, 0.\n", i, j, k);

	return (0);
}
