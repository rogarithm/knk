#include <stdio.h>

int find_largest(int a[], int n);
void print_array(int a[], int n);

int main(void)
{
	int my_a[] = {4, 1, 5, 2};

	printf("input array: ");
	print_array(my_a, 4);
	printf("largest elem: %d\n", find_largest(my_a, 4));

	return 0;
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

void print_array(int a[], int n)
{
	int *p;

	for (p = a; p < a + n - 1; p++)
		// stop before the last element
		printf("%d, ", *p);
	printf("%d\n", *p);
}
/* backup for original function
** int find_largest(int a[], int n)
** {
** 	int i, max;
** 
** 	max = a[0];
** 	for (i = 1; i < n; i++)
** 		if (a[i] > max)
** 			max = a[i];
** 	return max;
** }
*/
