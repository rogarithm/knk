#include <stdio.h>

int main (void)
{
	double value = 100.00;
	int low_rate = 5;
	// To maintain input from user as int, and get monthly_rate
	// in double form from the input, casting (double)
	double monthly_rate = (double) low_rate / 12;

	int idx;
	for (idx = 0; idx < 12; idx++)
	{
		value *= (1 + monthly_rate / 100);
	}

	printf("%.2f", value);

	return 0;
}
