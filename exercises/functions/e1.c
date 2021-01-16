#include <stdio.h>

/*
double triangle_area(double base, double height)
double product; // function name is different from the function prototype.
{
	product = base * height; // a ◊var named product not declared before.
	return product / 2;
}
*/

// Thus, it should be:
double triangle_area(double base, double height)
{
		double product;

		product = base * height;
		
		return (product / 2);
}

int main(void)
{
		printf("%f", triangle_area(3, 4));

		return (0);
}
