#include <stdio.h>


int main(void)
{
		const int temperature_readings[30][24];
		int row, col, sum;
		double avrg;

		temparature_readings = 
		{{1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
			 1, 1, 1, 1,  }
		sum = 0;
		row = 0;
		while (row < 30) // row is 0-29, col is 0-23.
		{
				col = 0;
				while (col < 24)
				{
						sum = sum + temperature_readings[row][col];
						col = col + 1;
				}
				row = row + 1;
		}
		avrg = sum / (24 * 30);
		printf("the average for a month is %f", avrg);

		return 0;
}
