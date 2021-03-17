/*
 * computes the sum and average of the numbers in the array a.
 */
#include <stdio.h>

void refined_avg_sum(double a[], int n, double *avg, double *sum);

int main(void)
{
	double my_array[] = {1, 1.5, 1, 1.5, 1};
	double my_avg, my_sum;

	refined_avg_sum(my_array, 5, &my_avg, &my_sum);
	printf("avg: %.2f\n", my_avg);
	printf("sum: %.2f\n", my_sum);

	return 0;
}


void refined_avg_sum(double a[], int n, double *avg, double *sum)
{
	int i;

	*sum = 0.0;
	for (i = 0; i < n; i++)
		*sum += a[i];
	*avg = *sum / n;
}


/*
void orig_avg_sum(double a[], int n, double *avg, double *sum)
{
	int i;

	sum = 0.0; // sum is a pointer. To modify the value, you need to do what it points to, not the address.
	for (i = 0; i < n; i++)
		sum += a[i]; // same as above.
	avg = sum / n; // Likewise, avg is a pointer. Modification should be executed on what avg points to.
}
*/
