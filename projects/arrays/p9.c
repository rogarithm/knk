#include <time.h>

void random_walk(void)
{
	// initialize array
	char a[10][10] = {'.'};
	int row, col;

	srand((unsigned) time(NULL));
	col = rand() % 10;
	row = rand() % 10;

	a[row][col] = 'A';
	while (1)
		next_step(row, col);

	return 0;
}


void next_step(int row, int col)
{
	int direction;
	int temp_row, temp_col;

	direction = rand() % 4;

	// how to make loop if temp_ value doesn't pass the check functions?
	// 0: down / 1: left / 2: up / 3: right
	// computes next_direction
	if (direction == 0)
		temp_row = row + 1;
	if (direction == 1)
		temp_col = col - 1;
	if (direction == 2)
		temp_row = row - 1;
	if (direction == 3)
		temp_col = col + 1;

	// this cannot narrow which temp value should be used
	if ((check_outside(.) == 0) && (check_filled(.) == 0)
			apply the direction;
			assign next character;

	return 0;
}

// if a next position is out of the array boundary, return 1.
// if it's inside, return 0.
int check_outside(int row, int col)
{
 return ((0 > col) || (9 < col) || (0 > row) || (9 < row));
}

// if a next position is not empty, return 1.
// it it's empty, return 0.
int check_filled(int row, int col)
{
	return (a[row][col] != '.');
}

