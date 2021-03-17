#include <stdio.h>

void find_two_largest(int a[], int n, int *largest, int *second_largest);
void swap(int *p, int *q);

int main(void)
{
	int my_a[] = {4, 5, 1, 2, 6, 3};
	int first, second;

	find_two_largest(my_a, 6, &first, &second);
	printf("first: %d\n", first);
	printf("second: %d\n", second);

	return 0;
}

void find_two_largest(int a[], int n, int *largest, int *second_largest)
{
	int i;

	*largest = a[0];
	*second_largest = a[1];

	if (a[1] > a[0])
		swap(largest, second_largest);

	i = 2;
	while (i < n)
	{
		if (a[i] < *second_largest)
			;
		else if ((*second_largest < a[i]) && (a[i] < *largest))
		{
			*second_largest = a[i];
		}
		else if (a[i] > *largest)
		{
			*largest = a[i];
		}

		i++;
	}

	return ;
}

// exchanges values
void swap(int *p, int *q)
{
	int temp;

	temp = *p;
	*p = *q;
	*q = temp;

	return ;
}
