#include <stdio.h>

int main(void)
{
		int val, x, sq_x, cb_x;

		printf("enter a value for x: ");
		scanf("%d", &x);
		sq_x = x * x;
		cb_x = sq_x * x;
		val = (3 * cb_x * sq_x) + (2 * sq_x * sq_x) - (5 * cb_x) - sq_x + (7 * x) - 6;
		printf("%d", val);

		return 0;
}
