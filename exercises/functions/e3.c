#include <stdio.h>

int gcd(int m, int n);

int main(void)
{
	int m, n;
	printf("Enter two integers: ");
	scanf("%d %d", &m, &n);
	gcd(m, n);

	return 0;
}

int gcd(int m, int n)
{
	int temp;
	int ans;

	if (m < n) // m always have to be larger than n
	{
		temp = m;
		m = n;
		n = temp;
	}

	while (n != 0) // after position check, do compute
	{
		temp = m % n;
		m = n;
		n = temp;
	}
	ans = m;

	printf("Greatest common divisor: %d\n", ans);

	return 0;
}
