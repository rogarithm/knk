#include <stdio.h>

int main(void)
{
		float loan, interest, pay;
		int pay_num;
		printf("write a program that calculates the remaining balance on a loan after the first, second, and third monthly payments\n\n");
		printf("Enter amount of loan: ");
		scanf("%f", &loan);
		printf("Enter interest rate: ");
		scanf("%f", &interest);
		printf("Enter monthly payment: ");
		scanf("%f", &pay);
		printf("Enter the number of payments: ");
		scanf("%d", &pay_num);
		printf("\n");

		float inc_monthly;
		inc_monthly = (interest / 100) / 12;

		while (pay_num > 0)
		{
			loan = loan * (1 + inc_monthly) - pay; // every month, "loan" gets modified in accumulative.
			pay_num--;
		}

		printf("Balance remaining after %d payments: $%.2f", pay_num, loan);
		printf("\n");

		return 0;
}
