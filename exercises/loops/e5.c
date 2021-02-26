#include <stdio.h>

// when i is 11, only do statement evaluate, as it tests after first evaluation.

int main(void)
{
		int i;

		printf("(a)----------------------\n");
		i = 11;
		while (i < 10)
		{
				printf("%d", i);
				i++;
		}
		printf("\n");

		printf("(b)----------------------\n");
		i = 11;
		for (; i < 10;)
		{
				printf("%d", i);
				i++;
		}
		printf("\n");

		printf("(c)----------------------\n");
		i = 11;
		do {
				printf("%d", i);
				i++;
		} while (i < 10);
		printf("\n");

		return 0;
}
