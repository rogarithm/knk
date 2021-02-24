#include <stdio.h>

int main(void)
{
		int i, j, k;

		i = 10; j = 5;
		printf("(a): %d", !i < j);
		printf("\n");
		printf("ans: 1");
		printf("\n");

		i = 2; j = 1;
		printf("(b): %d", !!i + !j);
		printf("\n");
		printf("ans: 1");
		printf("\n");

		i = 5; j = 0; k = -5;
		printf("(c): %d", i && j || k);
		printf("\n");
		printf("ans: 1");
		printf("\n");

		i = 1; j = 2; k = 3;
		printf("(d): %d", i < j || k);
		printf("\n");
		printf("ans: 1");
		printf("\n");

		return 0;
}
