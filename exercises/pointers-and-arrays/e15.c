prints all temperature readings stored in row i of the temperatures array using a pointer to visit each element of the row.

#include <stdio.h>

int temp[7][24];

// print elements of i row.
void print_array(int a[], int q, int i)
{
	int *p;

	for (p = a[i]; p < a[i] + n - 1; p++)
		// stop before the last element
		printf("%d, ", *p);
	printf("%d\n", *p);
}
