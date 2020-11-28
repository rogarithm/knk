#include <stdio.h>

void list_2_power(int num)
{
		int i;

		i = 1;
		while (i <= num)
		{
				printf("%d ", i);
				i *= 2;
		}
}

int main(void)
{
		list_2_power(128);
		return (0);
}
