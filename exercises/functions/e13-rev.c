#include <stdio.h>

int evaluate_position(char board[8][8]);
int position_value(char elem);
int is_black(char piece);

int main(void)
{
	char b[8][8] = {{'p', 'p', 'p', 'p', 'p', 'p', 'p', 'p'},
		{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '},
		{'P', 'P', 'P', 'P', 'P', 'P', 'P', 'P'}};

	printf("%d\n", evaluate_position(b));

	return 0;
}
/*
 ** K, Q, R, B, N, P represents white pieces
 ** k, q, r, b, n, p represents black pieces
 ** sum the values of the white/black pieces separately.
 ** values are: K, Q(= 9), R(= 5), B(= 3), N(= 3), P(= 1) (same as black)
 **
 ** the function returns the difference of the two sums.
 ** That is, white_sum - black_sum.
 */

// evaluates a chess position
int evaluate_position(char board[8][8])
{
	int row, col;
	int black_sum = 0, white_sum = 0;
	int diff;

	// using nested loop to check the elements in board
	row = 0;
	while (row < 9)
	{
		col = 0;
		while (col < 9)
		{
			if (is_black(board[row][col]) == 1)
				black_sum += position_value(board[row][col]);
			if (is_black(board[row][col]) == 0)
				white_sum += position_value(board[row][col]);
			else
				;
			col++;
		}
		row++;
	}
	diff = white_sum - black_sum;

	return diff;
}

int is_black(char piece)
{
	// if a piece is not capital, its color is black.
	if ((piece == 'q') || (piece == 'r') ||
			(piece == 'b') || (piece == 'n') ||
			(piece == 'p'))
		return 1;
	// if a piece is capital, its color is white.
	if ((piece == 'Q') || (piece == 'R') ||
			(piece == 'B') || (piece == 'N') ||
			(piece == 'P'))
		return 0;
	else
		return 2;
}

int position_value(char elem)
{
	int value = 0;

	if ((elem == 'Q') || (elem == 'q'))
		value = 9;
	if ((elem == 'R') || (elem == 'r'))
		value = 5;
	if ((elem == 'B') || (elem == 'b'))
		value = 3;
	if ((elem == 'N') || (elem == 'n'))
		value = 3;
	if ((elem == 'P') || (elem == 'p'))
		value = 1;

	return value;
}
