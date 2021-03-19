#include <stdio.h>

int gcd_recursive(int m, int n);

int main(void)
{
	int m, n;
	printf("Enter two integers: ");
	scanf("%d %d", &m, &n);

	printf("Greatest common divisor: %d\n", gcd_recursive(m, n));
	return 0;
}

// write a recursive version of the gcd function.
int gcd_recursive(int m, int n)
{
	return n == 0 ? m :	gcd_recursive(n, m % n);
}

/* for backup
** if (n == 0)
** 	return m;
** else
** 	gcd_recursive(n, m % n);
*/
