#include <stdio.h>

int num_digits(int n)
{
	int count;

	count = 0;
	while (n != 0)
	{
		n = n / 10;
		count++;
	}

	return count;
}

int digit(int n, int k)
{
	int length;
	int digit;

	length = num_digits(n);

	if (k > num_digits(n))
		return 0;
	
	while (k > 0)
	{
		digit = n % 10;
		n = n / 10;
		k--;
	}
	return digit;
}

int main(void)
{
	printf("digit(829, 1) returns %d\n", digit(829, 1));
	printf("digit(829, 2) returns %d\n", digit(829, 2));
	printf("digit(829, 3) returns %d\n", digit(829, 3));
	printf("digit(829, 4) returns %d\n", digit(829, 4));

	return 0;
}
