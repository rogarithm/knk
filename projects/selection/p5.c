#include <stdio.h>

void tax_for_income(int income)
{
		if ((0 <= income) && (income <= 750))
				printf("%.2f\n", (income * 0.01));
		if ((750 < income) && (income <= 2250))
				printf("%.2f\n", 7.50 + ((income - 750) * 0.02));
		if ((2250 < income) && (income <= 3750))
				printf("%.2f\n", 37.50 + ((income - 2250) * 0.03));
		if ((3750 < income) && (income <= 5250))
				printf("%.2f\n", 82.50 + ((income - 3750) * 0.04));
		if ((5250 < income) && (income <= 7000))
				printf("%.2f\n", 142.50 + ((income - 5250) * 0.05));
		if (7000 < income)
				printf("%.2f\n", 230.00 + ((income - 7000) * 0.07));
		return ;
}

int main(void)
{
		int test_income;

		printf("Enter the amount of taxable income: ");
		scanf("%d", &test_income);
		tax_for_income(test_income);

		return 0;
}
