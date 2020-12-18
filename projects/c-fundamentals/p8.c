#include <stdio.h>

int main(void)
{
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

		return 0;
}
