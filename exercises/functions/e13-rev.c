int evaluate_position(char board[8][8]);
int value(char elem);
/*
** K, Q, R, B, N, P are white pieces
** k, q, r, b, n, p are black pieces
** sum the values of the white/black pieces separately.
** values are: K, Q(= 9), R(= 5), B(= 3), N(= 3), P(= 1) (same as black)
**
** the function returns the difference of the two sums.
** if black has higher value, it would be negative, and if
** white has higher value, it would be positive.
*/
int evaluate_position(char board[8][8])
{
	int row, col;
	int black_sum, white_sum;
	int diff;

	// using nested loop to check the elements in board
	row = 0;
	while (row < 9)
	{
		col = 0;
		while (col < 9)
		{
			if ((board[row][col] == 'q') ||
					(board[row][col] == 'r') ||
					(board[row][col] == 'b') ||
					(board[row][col] == 'n') ||
					(board[row][col] == 'p'))
			black_sum += value(board[row][col]);
			if ((board[row][col] == 'Q') ||
					(board[row][col] == 'R') ||
					(board[row][col] == 'B') ||
					(board[row][col] == 'N') ||
					(board[row][col] == 'P'))
			white_sum += value(board[row][col]);
			col++;
		}
		row++;
	}
	diff = white_sum - black_sum;

	return diff;
}

int value(char elem)
{
			int value;

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
