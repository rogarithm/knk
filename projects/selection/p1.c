#include <stdio.h>

void n_digits(int n)
{
		if ((0 <= n) && (n <= 9))
				printf("The number %d has 1 digit\n", n);
		if ((10 <= n) && (n <= 99))
				printf("The number %d has 2 digit\n", n);
		if ((100 <= n) && (n <= 999))
				printf("The number %d has 3 digit\n", n);
		if ((1000 <= n) && (n <= 9999))
				printf("The number %d has 4 digit\n", n);
		return ;
}

int main(void)
{
		int test_n;

		printf("Enter a number: ");
		scanf("%d", &test_n);
		n_digits(test_n);

		return 0;
}
