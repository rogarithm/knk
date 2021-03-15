#include <stdio.h>

double median(double x, double y, double z);

int main(void)
{
	return 0;
}

// finds the median of three numbers.
double median(double x, double y, double z)
{
	if (x <= y)
		if (y <= z) x < y < z
			return y;
		else if (x <= z) x < z < y
			return z;
		else return x;
	if (z <= y)
		return y;
	if (x <= z)
		return x;
	return z;
}
