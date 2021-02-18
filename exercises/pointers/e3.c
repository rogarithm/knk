computes the sum and average of the numbers in the array ◊code{a}

void refined_avg_sum(double a[], int n, double *avg, double *sum)
{
	int i;

	*sum = 0.0;
	for (i = 0; i < n; i++)
		*sum += a[i];
	*avg = *sum / n;
}


void orig_avg_sum(double a[], int n, double *avg, double *sum)
{
	int i;

	sum = 0.0;
	for (i = 0; i < n; i++)
		sum += a[i];
	avg = sum / n;
}
