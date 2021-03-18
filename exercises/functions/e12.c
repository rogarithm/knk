#include <stdio.h>
double inner_product(double a[], double b[], int n);

int main(void)
{
	double a[] = {1.0, 2.0, 3.0};
	double b[] = {1.0, 2.0, 3.0};

	printf("%.1f \n", inner_product(a, b, 3));
	return 0;
}

// return a[0] * b[0] + a[1] * b[1] + ... + a[n-1] * b[n-1].
double inner_product(double a[], double b[], int n)
{
	int i = 0;
	int product = 0;

	while (i < n)
	{
		product += (a[i] * b[i]);
		i++;
	}

	return product;
}
