#include <stdio.h>

int *find_largest(int a[], int n);

int main(void)
{
	int my_a[] = {3, 1, 2, 7, 0};
	int my_lrg;

	my_lrg = *find_largest(my_a, 5);
	printf("%d\n", my_lrg);

	return 0;
}

// return a pointer to the input array's largest element
int *find_largest(int a[], int n)
{
	int *largest = &a[0];
	int i = 1;

	while (i < n)
	{
		if (a[i] > *largest)
			largest = &a[i];
		i++;
	}

	return largest;
}
