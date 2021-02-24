#include <stdio.h>

int main(void)
{
		printf("project 1. Write a program that asks the user to enter a two-digit number,\n"
						"then prints the number with its digits reversed.\n"
						"------------------------------------------------------------------------\n\n");
		int read, tens, ones;

		printf("Enter a two-digit number: ");
		scanf("%d", &read);

		tens = read / 10;
		ones = read % 10;
		printf("The reversal is: %d%d\n", ones, tens);

		return 0;
}
