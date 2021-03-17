#include <stdio.h>

void pay_amount(int dollars, int *twenties, int *tens, int *fives, int *ones);

int main(void)
{
	int x, div_20, div_10, div_5, div_1;
	printf("enter a dollar amount: ");
	scanf("%d", &x);

	pay_amount(x, &div_20, &div_10, &div_5, &div_1);
	printf("$20 bills: %d\n", div_20);
	printf("$10 bills: %d\n", div_10);		
	printf("$5 bills: %d\n", div_5);
	printf("$1 bills: %d\n", div_1);

	return 0;
}

// Determines the smallest number of $20, $10, $5, and $1 bills for the dollars var.
void pay_amount(int dollars, int *twenties, int *tens, int *fives, int *ones)
{
	int less_than_twenties = dollars % 20;
	int less_than_tens = less_than_twenties % 10;

	*twenties = dollars / 20;
	*tens = less_than_twenties / 10;
	*fives = less_than_tens / 5;
	*ones = less_than_tens % 5;

	return ;
}
