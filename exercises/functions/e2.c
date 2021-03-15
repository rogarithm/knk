#include <stdio.h>
int check(int x, int y, int n);

int check(int x, int y, int n)
{
	if (((0 <= x) && (x <= (n - 1))) && ((0 <= y) && (y <= (n - 1))))
		return 1;
	return 0;
}

int main(void)
{
	printf("both are minus. so %d\n", check(-1, -1, 2));
	printf("y is minus. so %d\n", check(-1, 1, 2));
	printf("x is minus. so %d\n", check(1, -1, 2));
	printf("both are in the range. so %d\n", check(1, 1, 2));

	return 0;
}
