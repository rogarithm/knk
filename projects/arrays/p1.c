/* Prints repeated digit(s) */

#include <stdbool.h>   /* C99 only */
#include <stdio.h>

int main(void)
{
		int repeat_num[10] = {0};
		int digit;
		long n;
		int array_counter;

		array_counter = 0;

		printf("Enter a number: ");
		scanf("%ld", &n);

		while (n > 0) {
				digit = n % 10;
				repeat_num[digit]++;
				n /= 10;
		}

		printf("Repeated digit(s): ");

		while (array_counter < 10)
		{
				if (repeat_num[array_counter] >= 2)
						printf("%d ", array_counter);
				array_counter++;
		}
		printf("\n");

		return 0;
}
