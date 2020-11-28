#include <stdio.h>

void list_2_power_for(int num)
{
		int i;

		for (i = 1; i <= num; i *= 2)
		{
				printf("%d ", i);
		}
}

int main(void)
{
		list_2_power_for(128);
		return (0);
}
