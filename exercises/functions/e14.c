#include <stdio.h>
#include <stdbool.h>

bool has_zero(int a[], int n);
bool has_zero_rev(int a[], int n);

int main(void)
{
	int a[] = {1, 2, 0, 4, 5};
	int b[] = {1, 2, 3, 4, 5};

	printf("When there's at least one 0, it should be true (1).\n");
	printf("For a[] = {1, 2, 0, 4, 5}\n");
	 printf("original: %d\n", has_zero(a, 5));
	printf("revised: %d\n", has_zero_rev(a, 5));
	printf("When all elements are nonzero, it should be false (0).\n");
	printf("For b[] = {1, 2, 3, 4, 5}\n");
	printf("original: %d\n", has_zero(b, 5));
	printf("revised: %d\n", has_zero_rev(b, 5));

	return 0;
}

bool has_zero(int a[], int n)
{
	int i;

	for (i = 0; i < n; i++)
		if (a[i] == 0)
			return true;
		else
			return false;
}

/*
return true if any elem of the array a has the val 0
return false if all elems are nonzero
*/
bool has_zero_rev(int a[], int n)
{
	int i;

	for (i = 0; i < n; i++)
	{
		if (a[i] == 0)
			return true;
	}
	return false;
}
