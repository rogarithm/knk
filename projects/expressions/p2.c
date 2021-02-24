#include <stdio.h>

int main(void)
{
		printf("project 2. Extend the program in Programming Project 1 to handle three-digit numbers.\n"
						"------------------------------------------------------------------------\n\n");
		int read, hundreds, tens, ones;

		printf("Enter a three-digit number: ");
		scanf("%d", &read);

		hundreds = read / 100;
		tens = (read % 100) / 10;
		ones = (read % 100) % 10;

		printf("When reversed, the number is: %d%d%d\n", ones, tens, hundreds);
		
		return 0;
}

