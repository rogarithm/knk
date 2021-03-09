// Prints the number of repeated digit(s)
#include <stdio.h>

int main(void)
{
	// does it have to have specified length?
	int digit_seen[10] = {0};
	int digit;
	long n;
	int array_position = 0;

	printf("Enter a number: ");
	scanf("%ld", &n);

	while (n > 0)
	{
		digit = n % 10;
		digit_seen[digit]++;
		n /= 10;
	}

	printf("Repeated digit(s): ");

	while (array_position < 10)
	{
		if (digit_seen[array_position] > 1)
			printf("%d ", array_position);
		array_position++;
	}
	printf("\n");

	return 0;
}
