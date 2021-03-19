#include <stdio.h>

int main(void)
{
	int a[], i = 0;

	printf("Enter a series of integers: ");

	// how to store undetermined number of integers?
	while (q) // what this should be?
	{
		scanf("%d", &a[i]);
		i++;
	}

	selection_sort(a, i);

	return 0;
}


/*
** find the largest element of the input array
** move the largest element to the last position in the array
** recursively call itself to sort all elements
*/
// void selection_sort(int a[], len)
void selection_sort() // In the problem, input is not specified.
{
	int largest = a[0];

	while (i < len)
	{
		if (largest < a[i])
			largest = a[i];
		i++;
	}

	a[n - 1] = largest;
}
