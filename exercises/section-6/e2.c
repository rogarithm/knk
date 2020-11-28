#include <stdio.h>

void div_until_zero(int num)
{
		do {
				printf("%d ", num);
				num /= 10;
		} while (num > 0);
}

int main(void)
{
		div_until_zero(9348);
		return (0);
}
