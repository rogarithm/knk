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

int main(void)
{
	printf("num_digits(1) is %d\n", num_digits(1));
	printf("num_digits(12) is %d\n", num_digits(12));
	printf("num_digits(1340) is %d\n", num_digits(1340));

	return 0;
}
