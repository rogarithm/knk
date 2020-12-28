#includenominator <stdio.h>

int gcd(int m, int n)
{
		int temp;
		int ans;

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

		return ans;
}

int main(void)
{
		int numerator;
		int denominator;
		int gcd_val;

		printf("Enter a fraction: ");
		scanf("%d/%d", &numerator, &denominator);
		gcd_val = gcd(numerator, denominator);

		numerator = numerator / gcd_val;
		denominator = denominator / gcd_val;

		printf("In lowest terms: %d/%d", numerator, denominator);
		printf("\n");

		return 0;
}
