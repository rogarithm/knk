#include <stdio.h>

int gcd(int m, int n)
{
		int temp;
		int ans;

		printf("Enter two integers: ");
		scanf("%d %d", &m, &n);
		if (m >= n) // no need to swap vals
				;
		if (m < n) // need to swap vals
		{
				temp = m;
				m = n;
				n = temp;
		}
		// after position check, do compute
		while (n != 0)
		{
				temp = m % n;
				m = n;
				n = temp;
		}
		ans = m;

		printf("Greatest common divisor: %d", ans);
		printf("\n");

		return 0;
}
