/* Prints repeated digit(s) with the number of repetition */

#include <stdbool.h>   /* C99 only */
#include <stdio.h>

int main(void)
{
		int repeat_num[10] = {0};
		int digit;
		long n;

		printf("Enter a number: ");
		scanf("%ld", &n);

		while (n > 0)
		{
				digit = n % 10;
				repeat_num[digit]++;
				n /= 10;
		}

		printf("Digit:       ");

		digit = 0;
		while (digit < 10)
		{
				printf("%d ", digit);
				digit++;
		}
		printf("\n");

		printf("Occurrences: ");

		digit = 0;
		while (digit < 10)
		{
				printf("%d ", repeat_num[digit]);
				digit++;
		}
		printf("\n");


		return 0;
}
