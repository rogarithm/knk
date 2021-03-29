#include <stdio.h>
#include <stdbool.h>

bool search(const int a[], int n, int key);

int main(void)
{
	const int my_a[] = {1, 2, 3, 4, 5};

	printf("Ture: 1 / False: 0\n");
	printf("Key in the array: %d\n", search(my_a, 5, 3));
	printf("No key in the array: %d\n", search(my_a, 5, 6));
	return 0;
}

bool search(const int a[], int n, int key)
{
	int *p;

	p = a;
	while (p < a + n)
	{
		if (*p == key)
			return true;
		p++;
	}

	return false;
}
