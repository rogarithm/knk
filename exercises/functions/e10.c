#include <stdio.h>
int lrg_num(int a[], int n);
int avrg_elem(int a[], int n);
int p_elem_num(int a[], int n);

int main(void)
{
	int a[] = { 3, 1, 5, 9, -1, 7 };

	printf("largest number %d should be 9\n", lrg_num(a, 5));
	printf("average element %d should be 4\n", avrg_elem(a, 5));
	printf("5 positive elements should be %d\n", p_elem_num(a, 5));

	return 0;
}

int lrg_num(int a[], int n)
{
	// the largest number in a
	int largest;
	int count;

	count = 0;
	largest = a[n];
	while (count != n) // check a[n] with initialized largest
	{
		if (a[count] > largest)
			largest = a[count];
		count++;
	}

	return largest;
}


int avrg_elem(int a[], int n)
{
	// the average of all elements in a
	int sum;

	sum = 0;
	while (n >= 0)
	{
		sum = sum + a[n];
		n--;
	}
	sum = sum / (n + 1); // casting to int doesn't work

	return sum;
}

int p_elem_num(int a[], int n)
{
	// the number of positive elements in a
	int p_count;

	p_count = 0;
	while (n >= 0)
	{
		if (a[n] > 0)
			p_count++;
		n--;
	}

	return p_count;
}
