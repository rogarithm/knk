#include <stdio.h>
#define PI 3.14

// computes the volume of a sphere with a
// 10-meter radius, using the formula described

int main(void)
{
	float factor;
	int radius;

	factor = 4.0f/3.0f;
	radius = 10;

	printf("the volume of sphere with 10-meter radius is: \n");
	printf("%f\n", factor * PI * radius * radius * radius);

	return (0);
}
