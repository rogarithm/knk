#include <stdio.h>

int main(void)
{
	printf("exercise 10. show the output produced by each of the following program fragments.\n");
	int i, j;

	i = 6;
	j = i += i;
	printf("(a): %d & %d should be 12 & 12 each.\n", i, j);
	
	i = 5;
	j = (i -= 2) + 1;
	printf("(b): %d & %d should be 3, 4.\n", i, j);

	i = 7;
	j = 6 + (i = 2.5);
	printf("(c): %d & %d should be 2.5, 8.5.\n", i, j);

	i = 2; j = 8;
	j = (i = 6) + (j = 3);
	printf("(d): %d & %d should be 6, 9.\n", i, j);

	return (0);
}
