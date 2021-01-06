#include <stdio.h>


int main(void)
{
		const int temperature_readings[30][24];
		int row;
		int col;
		int sum;
		double avrg;

		sum = 0;
		row = 0;

		while (row < 31)
		{
				col = 0;
				while (col < 25)
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
