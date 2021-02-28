#include <stdio.h>

int main(void)
{
		float loan, interest, pay;
		printf("write a program that calculates the remaining balance on a loan after the first, second, and third monthly payments\n\n");
		printf("Enter amount of loan: ");
		scanf("%f", &loan);
		printf("Enter interest rate: ");
		scanf("%f", &interest);
		printf("Enter monthly payment: ");
		scanf("%f", &pay);
		printf("\n");

		float inc_monthly, mod_1, mod_2, mod_3;
		inc_monthly = (interest / 100) / 12;
		// every month, "loan" gets modified in accumulative.
		mod_1 = (loan - pay) +  loan * inc_monthly;
		mod_2 = (mod_1 - pay) + mod_1 * inc_monthly;
		mod_3 = (mod_2 - pay) + mod_2 * inc_monthly;

		printf("Balance remaining after first payment: $%.2f", mod_1);
		printf("\n");
		printf("Balance remaining after second payment: $%.2f", mod_2); 
		printf("\n");
		printf("Balance remaining after third payment: $%.2f", mod_3);
		printf("\n");

		return 0;
}
