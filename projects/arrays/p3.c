/* Checks numbers for repeated digits. Continues until the user enters zero */

#include <stdbool.h>   /* C99 only */
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
								break;
						// if break executed, go out of while loop.
						// if executed before n becomes zero, some digit is
						// repetitive, so print "Repeated digit"
						// otherwise, there's no repeat. so print "No repeated digit"
						digit_seen[digit] = true;
						n /= 10;
				}

				if (n > 0)
						printf("Repeated digit\n");
				else
						printf("No repeated digit\n");
		}

		return 0;
}
