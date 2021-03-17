#include <stdio.h>
void swap(int *p, int *q);

int main(void)
{
	int i = 3, j = 4;

	swap(&i, &j);
	printf("(3,4) -> (%d,%d)\n", i, j);

	return 0;
}

// exchanges values
void swap(int *p, int *q)
{
	int temp;

	temp = *p;
	*p = *q;
	*q = temp;

	return ;
}
