#include <stdio.h>

int main(void)
{
		int i;

		printf("(a): ");
		for (i = 0; i < 10; i++)
		{
				printf("%d", i);
		}
		printf("\n");

		printf("(b): ");
		for (i = 0; i < 10; ++i)
		{
				printf("%d", i);
		}
		printf("\n");

		printf("(c): \n");
		for (i = 0; i++ < 10; )
		{
				printf("%d", i);
		}
		printf("\n");

		return 0;
}
