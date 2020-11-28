#include <stdio.h>

int main(void)
{
		/*
		printf("project 1. Write a program that asks the user to enter a two-digit number,\n"
						"then prints the number with its digits reversed.\n"
						"------------------------------------------------------------------------\n\n");
		int read, tenth, oneth;

		printf("Enter a two-digit number: ");
		scanf("%d", &read);

		tenth = read / 10;
		oneth = read % 10;
		printf("The reversal is: %d%d\n", oneth, tenth);
		*/

		/*
		printf("project 2. Extend the program in Programming Project 1 to handle three-digit numbers.\n"
						"------------------------------------------------------------------------\n\n");
		int read, first, mod, second, third;

		printf("Enter a three-digit number: ");
		scanf("%d", &read);

		first = read / 100;
		mod = read % 100;
		second = mod / 10;
		third = mod % 10;
		
		printf("The reversal is: %d%d%d\n", third, second, first);
		*/
		printf("project 3. Rewrite the program in Programming Project 2 so that it prints the reversal\n"
						"of a three-digit number without using arithmetic to split the number into digits.\n"
						"------------------------------------------------------------------------\n\n");

		int first, second, third;

		printf("Enter a three-digit number one by one: ");
		scanf("%d %d %d", &first, &second, &third);

		printf("The reversal is: %d%d%d\n", third, second, first);

		printf("project 4. Write a program that reads an integer entered by the user and displays it in octal (base 8)\n"
						"The output should be displayed using five digits, even if fewer digits are insufficient.\n"
						"------------------------------------------------------------------------\n\n");

		int num;

		printf("Enter a number between 0 and 32767: ");
		scanf("%d\n", &num);
		printf("In octal, your number is: %d", )
		return (0);
}
		
		
