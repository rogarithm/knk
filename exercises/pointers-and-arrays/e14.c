/*
** a week's worth of hourly temperature readings, with each row containing the readings for one day
** int temperatures[7][24];
** 
** write a statement that uses the search function to search the entire temperatures array for the value 32
*/

#include <stdio.h>
#include <stdbool.h>

bool search(const int a[], int n, int key);
int main(void)
{
	int t_temperatures[7][24] = {{0}, {0}, {0}, {32}, {0}, {0}, {0}};
	int f_temperatures[7][24] = {{0}, {0}, {0}, {0}, {0}, {0}, {0}};

	printf("Ture: 1 / False: 0\n");
	printf("32 in the temp-array: %d\n", search(t_temperatures, 7 * 24, 32));
	printf("No 32 in the temp-array: %d\n", search(f_temperatures, 7 * 24, 32));
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
