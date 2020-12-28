#include <stdio.h>

int main(void)
{
		int m;
		int n;
		int temp;
		int ans;

		printf("Enter two integers: ");
		scanf("%d %d", &m, &n);
		if (m >= n)
				;
		if (m < n)
		{
				temp = m;
				m = n;
				n = temp;
		}
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
