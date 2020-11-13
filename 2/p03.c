#include <stdio.h>
#define PI 3.14

// computes the volume of a sphere with a
// 10-meter radius, using the formula described

int main(void)
{
	float factor;
	int radius;

	factor = 4.0f/3.0f;

	printf("enter the radius that you want to compute the sphere (in integer value): ");
	scanf("%d", &radius);
	printf("the volume of sphere is: \n");
	printf("%f\n", factor * PI * radius * radius * radius);

	return (0);
}
