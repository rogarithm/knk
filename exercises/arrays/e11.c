#include <stdio.h>

int main (void)
{
	// initialize the array
	char checker_board[8][8] = {{0}, {0}, {0}, {0}, {0}, {0}, {0}, {0}};
	int row, col;

	row = 0;
	while (row < 8)
	{
		col = 0;
		while (col < 8)
		{
			if (((row + col) % 2) == 0)
				checker_board[row][col] = 'B';
			else
				checker_board[row][col] = 'R';
			col++;
		}
		row++;
	}

	// initialize & print
	row = 0;
	while (row < 8)
	{
		col = 0;
		while (col < 8)
		{
			printf("%c ", checker_board[row][col]);
			if (col == 7)
				printf("\n");
			col++;
		}
		row++;
	}
	

	return 0;
}
