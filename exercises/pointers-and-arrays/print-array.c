void print_array(int a[], int n)
{
	int *p;

	for (p = a; p < a + n - 1; p++)
		// stop before the last element
		printf("%d, ", *p);
	printf("%d\n", *p);
}
