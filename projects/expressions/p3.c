#include <stdio.h>

int main(void)
{
	printf("project 3. Rewrite the program in Programming Project 2 so that it prints the reversal\n"
			"of a three-digit number without using arithmetic to split the number into digits.\n"
			"------------------------------------------------------------------------\n\n");

	int hundreds, tens, ones;

	printf("Enter a three-digit number one by one: ");
	scanf("%1d%1d%1d", &hundreds, &tens, &ones);

	printf("The reversal is: %d%d%d\n", ones, tens, hundreds);

	return 0;
}
