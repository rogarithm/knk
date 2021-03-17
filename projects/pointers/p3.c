// modify so that it includes the reduce function.
#include <stdio.h>

int swap(int m, int n);
void reduce(int numerator, int denominator,
		        int *reduced_numerator, int *reduced_denominator);

int main(void)
{
	int numer, denom;
	int gcd;
	int rd_num, rd_denom;

	printf("Enter a fraction: ");
	scanf("%d/%d", &numer, &denom);

	if (numer < denom)
		swap(numer, denom);

	reduce(numer, denom, &rd_num, &rd_denom);
	numer = numer / rd_num;
	denom = denom / rd_num;

	printf("gcd: %d\n", rd_num);
	printf("In lowest terms: %d/%d\n", numer, denom);

	return 0;
}

int swap(int m, int n)
{
	{
		int swap;

		swap = m;
		m = n;
		n = swap;
	}
}

void reduce(int num, int denom, int *rd_num, int *rd_denom)
{
	while (denom != 0)
	{
		int mod;

		mod = num % denom;
		num = denom;
		*rd_num = num;
		denom = mod;
		*rd_denom = denom;
	}
}
