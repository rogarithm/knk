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
			if (board[row][col] == 'Q')
				white_sum += 9;
			if (board[row][col] == 'R')
				white_sum += 5;
			if (board[row][col] == 'B')
				white_sum += 3;
			if (board[row][col] == 'N')
				white_sum += 3;
			if (board[row][col] == 'P')
				white_sum += 1;

			if (board[row][col] == 'q')
				black_sum += 9;
			if (board[row][col] == 'r')
				black_sum += 5;
			if (board[row][col] == 'b')
				black_sum += 3;
			if (board[row][col] == 'n')
				black_sum += 3;
			if (board[row][col] == 'p')
				black_sum += 1;
			col++;
		}
		row++;
	}
	diff = white_sum - black_sum;

	return diff;
}

