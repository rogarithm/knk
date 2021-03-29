#include <stdio.h>

void print_array(double a[], int n);
double inner_product(const double *a, const double *b, int n);

int main(void)
{
	const double a[] = {0.5, 0.2, 0.25};
	const double b[] = {2, 5, 4};

	printf("input a: ");
	print_array(a, 3);
	printf("input b: ");
	print_array(b, 3);
	printf("inner-p: %.2f is 3.00\n", inner_product(a, b, 3));

	return 0;
}

double inner_product(const double *a, const double *b, int n)
{
	double *p1, *p2; // pointer for a and b
	double sum = 0;

	p1 = a;
	p2 = b;
	while ((p1 < a + n) && (p2 < b + n))
	{
		sum += *p1 * *p2;
		p1++;
		p2++;
	}

	return sum;
}

void print_array(double a[], int n)
{
	double *p;

	for (p = a; p < a + n - 1; p++)
		// stop before the last element
		printf("%.2f, ", *p);
	printf("%.2f\n", *p);
}
