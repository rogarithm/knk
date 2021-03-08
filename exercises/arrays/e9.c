#include <stdio.h>


int main(void)
{
	// why did I declared the array with const int?
	double temperature_readings[4][3] = {{2, 3.5, 4}, {5, 6, 7.5}, {8.5, 9, 10}, {11, 12.3, 13}};
	int row, col;
	double sum, avrg;

	sum = 0;
	row = 0;
	while (row < 4) // row is 0-3, col is 0-2.
	{
		col = 0;
		while (col < 3)
		{
			sum = sum + temperature_readings[row][col];
			col = col + 1;
		}
		printf("Current sum: %.2lf\n", sum);
		row = row + 1;
	}
	avrg = sum / (4 * 3);
	printf("Average: %.2lf\n", avrg);

	return 0;
	}
