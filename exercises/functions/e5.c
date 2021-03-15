// returns the number of digits in n
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
	printf("There's %d digits in 1\n", num_digits(1));
	printf("There's %d digits in 12\n", num_digits(12));
	printf("There's %d digits in 1340\n", num_digits(1340));

	return 0;
}
