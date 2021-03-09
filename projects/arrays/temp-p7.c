#include <stdio.h>
/* Reads 5 X 5 array of integers and then prints the row sums and the column sums */
// how about to implement with 2-dimensional array?
int row_total (int row);

int main (void)
{
	int array[2][5] = {{0}, {0}};
	int row, col;


	row = 0;
	while (row < 2)
	{
		printf("Enter row %d: ", row + 1);

		col = 0;
		// because the length of one row is constant, I think
		// check for EOF and '\n' is not needed
		while (col < 5 && (array[row][col] = getchar()) != ' ' && array[row][col] != '\n')
		{
			col++;
		}
		row++;
	}
/*
	int row_1 = array[0][0] + array[0][1] + array[0][2] + array[0][3] + array[0][4];
	int row_2 = array[1][0] + array[1][1] + array[1][2] + array[1][3] + array[1][4];

	printf("Row totals: %d %d", row_1, row_2);
	// printf("Column totals: %d %d", );
*/
	printf("\n");
	return 0;
}

/*
int row_total (int row)
{
	int row_1, col;

	row_1 = 0;
	col = 0;
	while (col < 5)
	{
		row_1 += array[1][col];
		col++;
	}

	return row_1;
}
*/
// int col_total (int col)
