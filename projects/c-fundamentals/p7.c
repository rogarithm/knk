#include <stdio.h>

int main(void)
{
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

		return 0;
}
