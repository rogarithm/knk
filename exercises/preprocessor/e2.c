#include <stdio.h>

#define NELEMS(a) ((sizeof(a)) / (sizeof(a[0])))

int main(void)
{
	int a[10] = {0};

	printf("The number of elements in array a is %lu\n", NELEMS(a));
	return 0;
}
