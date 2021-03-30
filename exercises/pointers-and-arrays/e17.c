int sum_two_dimensional_array(const int a[][LEN], int n)
{
	int *p;
	int sum = 0;

	for (p = a[]; p < a[] + LEN; p++)
		sum += *p;
	return sum;
}

/* for backup
** int sum_two_dimensional_array(const int a[][LEN], int n)
** {
** 	int i, j, sum = 0;
** 
** 	for (i = 0; i < n; i++)
** 		for (j = 0; j < LEN; j++)
** 			sum += a[i][j];
** 
** 	return sum;
** }
*/
