#include <stdio.h>

int find_largest(int a[], int n);

int temp[7][24];

// prints the highest temperature in the temperatures array for each day of the week.
// The loop body should call the find_largest function, passing it one row of the array at a time.

// print highest temperature in row 1
void lrg_temp_per_day(void)
{
	for (i = 0; i < 7; i++)
		// stop before the last day
	{
		printf("%d, ", find_largest(temp[i], 24));
	}
	printf("%d\n", find_largest(temp[7], 24));
}

int find_largest(int a[], int n)
{
	int *p;
	int max = a[0];

	for (p = a + 1; p < a + n; p++)
		if (*p > max)
			max = *p;
	return max;
}
