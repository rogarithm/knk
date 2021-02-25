#include <stdio.h>

int main(void)
{
	int i1, i2, i3, i4;
	int large;
	int small;

	printf("Enter four integers: ");
	scanf("%d %d %d %d", &i1, &i2, &i3, &i4);

	// initialize largest and smallest value with i1, i2.
	if (i1 > i2)
	{
		large = i1;
		small = i2;
	}
	else
	{
		large = i2;
		small = i1;
	}

	// compare with i3, modify l/s if needed.
	if (i3 > large)
		large = i3;
	else if (i3 < small)
		small = i3;

	// compare (possibly new l/s) with i4, modify l/s if needed.
	if (i4 > large)
		large = i4;
	else if (i4 < small)
		small = i4;

	printf("Largest: %d\n", large);
	printf("Smallest: %d\n", small);

	return 0;
}
