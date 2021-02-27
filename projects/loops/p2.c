#include <stdio.h>

int main(void)
{
	int m, n;

	printf("Enter two integers: ");
	scanf("%d %d", &m, &n);

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


	printf("Greatest common divisor: %d", m);
	printf("\n");

	return 0;
}
