#include <stdio.h>

int main(void)
{
	// initialize the array for the first 2 values.
	int fib_numbers[40] = {0, 1};
	int n;

	// loop to iterate 40 fib-numbers
	n = 2;
	while (n < 40)
	{
		fib_numbers[n] = fib_numbers[n - 2] + fib_numbers[n - 1];
		n++;
	}

	// initialize again to print all values
	n = 0;
	while (n < 40)
	{
		printf("%d, ", fib_numbers[n]);
		if ((n == 9) || (n == 19) || (n == 29) || (n == 39))
			printf("\n");
		n++;
	}

	return 0;
}
