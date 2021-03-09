#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <stdbool.h>

void next_step(int row, int col)
{
	int direction;
	int next_row, next_col;

	direction = rand() % 4;

	// how to make loop if temp_ value doesn't pass the check functions?
	// 0: down / 1: left / 2: up / 3: right
	// computes next_direction
	if (direction == 0)
		next_row = row + 1;
	if (direction == 1)
		next_col = col - 1;
	if (direction == 2)
		next_row = row - 1;
	if (direction == 3)
		next_col = col + 1;

	// this cannot narrow which temp value should be used
	if ((check_outside(next_row, next_col) == false) && (check_filled(next_row, next_col) == false))
	{
		if ((direction == 0) || (direction == 2))
			a[next_row][col];
		else
			a[row][next_col];
	}
}

// if a next position is out of the array boundary, return 1.
// if it's inside, return 0.
int check_outside(int row, int col)
{
 return ((0 > col) || (3 < col) || (0 > row) || (3 < row));
}

// if a next position is not empty, return 1.
// it it's empty, return 0.
int check_filled(int row, int col)
{
	return (a[row][col] != '.');
}
