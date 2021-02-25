#include <stdio.h>

int num_count(int num)
{
	int n_digits;

	if ((0 <= num) && (num <= 9))
		n_digits = 1;
	if ((10 <= num) && (num <= 99))
		n_digits = 2;
	if ((100 <= num) && (num <= 999))
		n_digits = 3;
	if ((1000 <= num) && (num <= 9999))
		n_digits = 4;

	return n_digits;
}

int main(void)
{
	int num;

	printf("Enter a number: ");
	scanf("%d", &num);

	if (num_count(num) == 1)
		printf("The number %d has 1 digit", num);
	else
		printf("The number %d has %d digit", num, num_count(num));
	printf("\n");

	return 0;
}
