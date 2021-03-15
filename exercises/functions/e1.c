#include <stdio.h>

// original function
//
// double triangle_area(double base, double height)
// double product; // function name is different from the function prototype.
// {
// 	product = base * height; // a ◊var named product not declared before.
// 	return product / 2;
// }
//
// Thus, it should be:

double triangle_area(double base, double height);

int main(void)
{
	double base, height;

	printf("Enter base of triangle: " );
	scanf("%lf", &base);
	printf("Enter height of triangle: " );
	scanf("%lf", &height);
	printf("%.2f\n", triangle_area(base, height));

	return 0;
}

double triangle_area(double base, double height)
{
	double product;

	product = base * height;

	return (product / 2);
}
