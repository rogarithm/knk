// modify the function using pointer arithmetic to calculate the return value.
#include <stdio.h>

int *orig(int a[], int n);
int *find_middle(int a[], int n);

int main(void)
{
	int my_a[] = {1, 2, 3};

	printf("orig-f: %d\n", *orig(my_a, 3));
	printf("rev-f: %d\n", *find_middle(my_a, 3));

	return 0;
}

int *find_middle(int a[], int n)
{
	int *p = a;

	return p + n/2;
}

int *orig(int a[], int n)
{
	return &a[n/2];
}
