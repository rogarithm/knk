// Checks numbers for repeated digits. Continues until the user enters zero
#include <stdbool.h>
#include <stdio.h>

int main(void)
{
	bool digit_seen[10] = {false};
	int digit;
	long n;

	while (1) // don't use n as a condition. it'll affect other thing.
	{
		printf("Enter a number. To quit, enter 0: ");
		scanf("%ld", &n);

		if (n == 0)
			break;
		while (n > 0)
		{
			digit = n % 10;
			if (digit_seen[digit])
				break; // if break is executed, get out of this while loop.
			/*
			if break is executed before n becomes zero, a digit_seen[digit] is true for some digit. It means that the digit is repeated.
			*/
			digit_seen[digit] = true;
			n /= 10;
			/*
			if break statement is not executed, there's no repeated digit in given number.
			*/
		}

		if (n > 0)
			printf("Repeated digit\n");
		else
			printf("No repeated digit\n");
	}

	return 0;
}
