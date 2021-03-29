#include <stdio.h>

void store_zeros(int a[], int n);
void print_array(int a[], int n);

int main(void)
{
	int my_a[] = {1, 2, 3, 4, 5};

	printf("Before initializing with zero: ");
	print_array(my_a, 5);
	printf("After initializing with zero:  ");
	store_zeros(my_a, 5);
	print_array(my_a, 5);

	return 0;
}

void print_array(int a[], int n)
{
	int *p;

	for (p = a; p < a + n - 1; p++)
		// stop before the last element
		printf("%d, ", *p);
	printf("%d\n", *p);
}

void store_zeros(int a[], int n)
{
	int *p;
	
	for (p = a; p < a + n; p++)
		*p = 0;
}

/* backup the original function
** void store_zeros(int a[], int n)
** {
** 	int i;
** 
** 	for (i = 0; i < n; i++)
** 		a[i] = 0;
** }
*/
