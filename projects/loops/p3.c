#include <stdio.h>

int search_gcd(int m, int n)
{
	if (m < n) // format arguments so that larger one comes first
	{
		int swap;

		swap = m;
		m = n;
		n = swap;
	}

	while (n != 0)
	{
		int mod;

		mod = m % n;
		m = n;
		n = mod;
	}

	return m;
}

int main(void)
{
	int numer;
	int denom;
	int gcd;

	printf("Enter a fraction: ");
	scanf("%d/%d", &numer, &denom);

	gcd = search_gcd(numer, denom);
	numer = numer / gcd;
	denom = denom / gcd;

	printf("In lowest terms: %d/%d", numer, denom);
	printf("\n");

	return 0;
}
