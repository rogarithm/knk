#include <stdio.h>

int main(void)
{
		printf("project 4. Write a program that reads an integer entered by the user and displays it in octal (base 8)\n"
						"The output should be displayed using five digits, even if fewer digits are insufficient.\n"
						"------------------------------------------------------------------------\n\n");

		int num, ten_thousands, thousands, hundreds, tens, ones;

		printf("Enter a number between 0 and 32767: ");
		scanf("%d", &num);

		ones = num % 8;
		tens = (num % (8 * 8)) / 8;
		hundreds = (num % (8 * 8 * 8)) / (8 * 8);
		thousands = (num % (8 * 8 * 8 * 8)) / (8 * 8 * 8);
		ten_thousands = (num % (8 * 8 * 8 * 8 * 8)) / (8 * 8 * 8 * 8);
		
		printf("In octal, your number is: %d%d%d%d%d", ten_thousands, thousands, hundreds, tens, ones);
		printf("\n");

		return 0;
}
