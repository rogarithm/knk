#include <stdio.h>

double median(double x, double y, double z);

int main(void)
{
	double x, y, z;

	printf("Enter three double values: ");
	scanf("%lf %lf %lf", &x, &y, &z);

	printf("median: %.2f\n", median(x, y, z));
	return 0;
}

// finds the median of three numbers.
double median(double x, double y, double z)
{
	double smaller, bigger, middle;

	// initialize anchor values with x, y
	if (x > y)
	{
		bigger = x;
		smaller = y;
	}
	else
	{
		bigger = y;
		smaller = x;
	}

	// assign middle value with possible conditions
	if (z <= smaller)
		middle = smaller;
	else if (z <= bigger)
		middle = z;
	else
		middle = bigger;

	// return middle value
	return middle;
}

/* For backup
** *** assign conditions ***
** smaller bigger
** 
** -> ? smaller bigger -> return smaller
** -> smaller ? bigger -> return ?
** -> smaller bigger ? -> return bigger
**
**
** *** tidy up original conditions ***
**	if (x <= y) && (y <= z)
**		return y;
**	if (z <= y) && (y < x)
**		return y;
**
**	else if (x <= y) && (z < x) && (z < y)
**		return x;
**	if (x <= z) && (y < x) && (y < z)
**		return x;
**
**	else if (x <= y) && (x <= z) && (z < y)
**		return z;
*/
