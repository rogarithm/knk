#include <stdio.h>

int main(void)
{
	// what output does the following program fragment produce?
	int sum, i;

	sum = 0;
	for (i = 0; i < 10; i++)
	{
		if (i % 2) // if i is an odd number, do not add it to sum
			continue;
		sum += i; // if i is an even number, add it to sum
	}
	printf("%d\n", sum); // this will print the sum of even numbers from 0 to 9

	return 0;
}
