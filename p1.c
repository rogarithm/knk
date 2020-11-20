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

		return (0);
}
