#include <stdio.h>

int check(int x, int y, int n)
{
		if (((0 <= x) && (x <= (n - 1)))
				&& ((0 <= y) && (y <= (n - 1))))
				return (1);
		return (0);
}

int main(void)
{
		printf("%d", check(-1, -1, 2));
		printf("%d", check(-1, 1, 2));
		printf("%d", check(1, -1, 2));
		printf("%d", check(1, 1, 2));

		return (0);
}
