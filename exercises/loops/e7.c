#include <stdio.h>

void div_until_zero(int num)
{
		for ( ; num > 0; num /= 10)
		{
				printf("%d ", num);
		} 
		printf("\n");
}

int main(void)
{
		div_until_zero(9384);
		return (0);
}
