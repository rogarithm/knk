#include <stdio.h>

// display the scanned dollars-and-cents amount, with 5% added

int main(void)
{
	float dollar_n_cents;

	printf("enter the amount of dollar and cents\n");
	printf("in floating number like 100.20 for 100 dollars and 20 cents: ");
	scanf("%f", &dollar_n_cents);
	printf("With tax added: ");
	printf("%.2f\n", dollar_n_cents * 1.05);

	return (0);
}
