#include <stdio.h>

float compute_tax(int income);

int main(void)
{
		int test_income;

		printf("Enter the amount of taxable income: ");
		scanf("%d", &test_income);
		printf("%.2f\n", compute_tax(test_income));

		return 0;
}

float compute_tax(int income)
{
	float tax;

	if ((0 <= income) && (income <= 750))
		tax = income * 0.01;
	if ((750 < income) && (income <= 2250))
		tax = 7.50 + ((income - 750) * 0.02);
	if ((2250 < income) && (income <= 3750))
		tax = 37.50 + ((income - 2250) * 0.03);
	if ((3750 < income) && (income <= 5250))
		tax = 82.50 + ((income - 3750) * 0.04);
	if ((5250 < income) && (income <= 7000))
		tax = 142.50 + ((income - 5250) * 0.05);
	if (7000 < income)
		tax = 230.00 + ((income - 7000) * 0.07);

	return tax;
}
