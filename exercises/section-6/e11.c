#include <stdio.h>

void sum_even(int until)
{
		int i;
		int sum;

		sum = 0;
		for (i = 0; i < until; i++)
		{
				if (i % 2)
						continue;
				sum += i;
		}
		printf("%d\n", sum);
}

int main(void)
{
		sum_even(10);
		return (0);
}
