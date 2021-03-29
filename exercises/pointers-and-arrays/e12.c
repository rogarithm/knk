#include <stdio.h>

void find_two_largest(const int *a, int n, int *largest, int *second_largest);
void print_array(int a[], int n);

int main(void)
{
	int my_a[] = {3, 2, 1, 4, 2};
	int lar, s_lar;

	printf("input: ");
	print_array(my_a, 5);
	find_two_largest(my_a, 5, &lar, &s_lar);
	printf("largest: %d\n", lar);
	printf("second: %d\n", s_lar);

	return 0;
}

void find_two_largest(const int *a, int n, int *lrg, int *scd_lrg)
{
	lrg = a;
	scd_lrg = a + n - 1;
	int *p;

	for (p = a + 1; p < a + n; p++)
	{
		if (*p >= *lrg)
			lrg = p;
		else if (*p > *scd_lrg)
			scd_lrg = p;
	}

}

void print_array(int a[], int n)
{
	int *p;

	for (p = a; p < a + n - 1; p++)
		// stop before the last element
		printf("%d, ", *p);
	printf("%d\n", *p);
}
/* Need this?
** if (n == 2)
** {
** 	if (*p >= *(p + 1))
** 	{
** 		lrg = p;
** 		scd_lrg = (p + 1);
** 	}
** 	else
** 	{
** 		lrg = (p + 1);
** 		scd_lrg = p;
** 	}
** }
*/
