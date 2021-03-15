#include <stdio.h>
int lrgst_num(int a[], int n);
double avrg_elem(int a[], int n);
int positive_elem_num(int a[], int n);

int main(void)
{
	int a[] = { 3, 1, 5, 9, -1, 7 };

	printf("largest number %d should be 9\n", lrgst_num(a, 6));
	printf("average element %.2lf should be 4.00\n", avrg_elem(a, 6));
	printf("5 positive elements should be %d\n", positive_elem_num(a, 6));

	return 0;
}

// the largest number in a
int lrgst_num(int a[], int n)
{
	int largest = a[n - 1]; // largest index is length - 1.
	int idx = 0;

	while (idx != n - 1) // check every elements with initialized largest
	{
		if (a[idx] > largest)
			largest = a[idx];
		idx++;
	}

	return largest;
}


// the average of all elements in a
double avrg_elem(int a[], int n)
{
	double sum = 0;
	int idx = 0;

	while (idx < n)
	{
		sum = sum + a[idx];
		idx++;
	}
	sum = sum / n; // casting to int doesn't work

	return sum;
}

int positive_elem_num(int a[], int n)
{
	// the number of positive elements in a
	int p_count = 0;
	int idx = 0;

	while (idx < n)
	{
		if (a[idx] > 0)
			p_count++;
		idx++;
	}

	return p_count;
}
