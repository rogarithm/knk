#include <stdio.h>

int main(void)
{
		int val, x;

		printf("enter a value for x: ");
		scanf("%d", &x);
		val = ((((3 * x + 2) * x - 5) * x - 1) * x + 7) * x - 6;
		printf("%d", val);

		return 0;
}
