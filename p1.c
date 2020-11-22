#include <stdio.h>

#define PI 3.14 // for project 2

int main(void)
{
		printf("programming project 1.\n");
		printf("       *\n");
		printf("      * \n");
		printf("     *  \n");
		printf("*   *   \n");
		printf(" * *    \n");
		printf("  *     \n");
		printf("\n\n");

		printf("programming project 2.\n");
		// computes the volume of a sphere with a
		// 10-meter radius, using the formula described
		float factor;
		int radius;

		factor = 4.0f/3.0f;
		radius = 10;

		printf("the volume of sphere with 10-meter radius is: \n");
		printf("%f\n", factor * PI * radius * radius * radius);
		printf("\n\n");

		printf("programming project 3.\n");
		float factor;
		int radius;

		factor = 4.0f/3.0f;

		printf("enter the radius that you want to compute the sphere (in integer value): ");
		scanf("%d", &radius);
		printf("the volume of sphere is: \n");
		printf("%f\n", factor * PI * radius * radius * radius);
		printf("\n\n");

		printf("programming project 4.\n");
		// display the scanned dollars-and-cents amount, with 5% added
		float dollar_n_cents;

		printf("enter the amount of dollar and cents\n");
		printf("in floating number like 100.20 for 100 dollars and 20 cents: ");
		scanf("%f", &dollar_n_cents);
		printf("With tax added: ");
		printf("%.2f\n", dollar_n_cents * 1.05);
		printf("\n\n");

		printf("programming project 5");
		int val, x, sq_x, cb_x;

		printf("enter a value for x: ");
		scanf("%d", &x);
		sq_x = x * x;
		cb_x = sq_x * x;
		val = (3 * cb_x * sq_x) + (2 * sq_x * sq_x) - (5 * cb_x) - sq_x + (7 * x) - 6;
		printf("%d", val);

		printf("programming project 6");
		int val, x;

		printf("enter a value for x: ");
		scanf("%d", &x);
		val = ((((3 * x + 2) * x - 5) * x - 1) * x + 7) * x - 6;
		printf("%d", val);

		printf("project 7");

		int x, div_20, mod_20, div_10, mod_10, div_5, mod_5;
		printf("enter a dollar amount: ");
		scanf("%d", &x);
		div_20 = x / 20;
		mod_20 = x % 20;
		div_10 = mod_20 / 10;
		mod_10 = mod_20 % 10;
		div_5 = mod_10 / 5;
		div_1 = mod_10 % 5;

		printf("$20 bills: %d", div_20);
		printf("$10 bills: %d", div_10);		
		printf("$5 bills: %d", div_5);
		printf("$1 bills: %d", div_1);

		print("project 8");
		float loan, interest, payment, month_interest;
		printf("write a program that calculates the remaining balance on a loan after the first, second, and third monthly payments:");
		printf("Enter amount of loan: ");
		scanf("%.2f", &loan);
		printf("Enter interest rate: ");
		scanf("%.1f", &interest);
		printf("Enter monthly payment: ");
		scanf("%.2f", &payment);

		month_interest = (interest / 100) / 12;
		first_remainder = (loan - payment) * month_interest;
		second_remainder = (first_remainder - payment) * month_interest;
		third_remainder = (second_remainder - payment) * month_interest;

		printf("Balance remaining after first payment: $%.2f", first_remainder);
		printf("Balance remaining after second payment: $%.2f", second_remainder); 
		printf("Balance remaining after third payment: $%.2f", third_remainder);
		return (0);
}
