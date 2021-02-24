#include <stdio.h>

int main(void)
{
		int i;

		i = 17;
		printf("i=17: %d", (i >= 0 ? i : -i));
		printf("\n");
		printf("ans:  17");
		printf("\n");

		i = -17;
		printf("i=-17: %d", (i >= 0 ? i : -i));
		printf("\n");
		printf("ans:  17");
		printf("\n");

		return 0;
}
