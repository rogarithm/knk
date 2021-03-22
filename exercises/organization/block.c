#include <stdio.h>

int swap(int i, int j);

int main(void)
{
	int i = 1, j = 0;

	printf("j: %d\n", swap(i, j));
	return 0;
}

int swap(int i, int j)
{
	if (i > j) {
		int temp = i;
		i = j;
		j = temp;
	}

	return j;
}
