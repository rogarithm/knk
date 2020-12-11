#include <stdio.h>

double triangle_area(double base, double height);

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
