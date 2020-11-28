#include <stdio.h>

void div_until_zero(int num)
{
		for ( ; num > 0; num /= 10)
		{
				printf("%d ", num);
		} 
}

int main(void)
{
		div_until_zero(9348);
		return (0);
}
