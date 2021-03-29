// rewrite the function to use pointer arithmetic instead of array subscripting.
// That is, eliminate the var i and all uses of the [] operator.
#include <stdio.h>

int sum_array(const int a[], int n);

int main(void)
{
	int my_a[5] = {2, 4, 6, 8, 10};

	printf("%d\n", sum_array(my_a, 5));
}

int sum_array(const int a[], int n)
{
	int sum = 0;
	int *p;

	for (p = a; p < a + n; p++)
		sum += *p;

	return sum;
}

/* for backup the original function
** int sum_array(const int a[], int n)
** {
** 	int i, sum;
** 
** 	sum = 0;
** 	for (i = 0; i < n; i++)
** 		sum += a[i];
** 	return sum;
** }
*/
