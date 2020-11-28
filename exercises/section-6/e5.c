#include <stdio.h>

// when i is 11, only do statement evaluate, as it tests after first evaluation.

int main(void)
{
		int i;

		i = 11;
		printf("(a)----------------------\n");
		while (i < 10)
		{
				printf("%d", i);
				i++;
		}
		printf("\n");
		printf("(b)----------------------\n");
		for (; i < 10;)
		{
				printf("%d", i);
				i++;
		}
		printf("\n");
		printf("(c)----------------------\n");
		do {
				printf("%d", i);
				i++;
		} while (i < 10);
		printf("\n");
		return (0);
}
