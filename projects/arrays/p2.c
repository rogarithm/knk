// Prints repeated digit(s) with the number of repetition
#include <stdio.h>

int main(void)
{
	int digit_seen[10] = {0};
	int digit;
	long n;
	int array_position;

	printf("Enter a number: ");
	scanf("%ld", &n);

	while (n > 0)
	{
		digit = n % 10;
		digit_seen[digit]++;
		n /= 10;
	}

	// formats second line
	printf("Digit:       ");
	digit = 0;
	while (digit < 10)
	{
		printf("%d ", digit);
		digit++;
	}
	printf("\n");

	// formats third line
	printf("Occurrences: ");
	array_position = 0;
	while (array_position < 10)
	{
		printf("%d ", digit_seen[array_position]);
		array_position++;
	}
	printf("\n");

	return 0;
}
