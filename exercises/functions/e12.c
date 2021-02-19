double inner_product(double a[], double b[], int n);
{
	int count = 0;
	int sum = 0;

	// if the length of two arrays are different, raise an error
	
	while (count < n)
	{
		sum = sum + (a[count] * b[count]);
		count++;
	}

	return sum;
}

