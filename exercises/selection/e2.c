#include <stdio.h>

int main(void)
{
		int i;
		int j;

		i = 10; j = 5;
		printf("(a): %d should be 1.\n", (!i) < j);

		i = 2; j = 1;
		printf("(b): %d should be 1.\n", (!!i) + (!j));

		i = 5; j = 0; k = -5;
		printf("(c): %d should be 1.\n", (i && j) || k);

		i = 1; j = 2; k = 3;
		printf("(d): %d should be 1.\n\n", i < j || k);

		return (0);
}
