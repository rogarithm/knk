rewrite the code initialize an identity matrix using a single pointer.

#define N 10

double ident[N][N];

/*
 * Examine several cases, 1 should be occur every n+1 starting from 0
** 3,3 -> 1, 5, 9;
** 4,4 -> 1, 6, 11, 16;
*/

void make_ident(void)
{
	double *p;

	for (p = ident[0]; p < ident + N*N; p++)
		*p = 0;
	for (p = ident[0]; p < ident + N*N; p + N + 1)
		*p = 1;
}

/* backup original function
** #define N 10
** 
** double ident[N][N];
** int row, col;
**
** void make_ident(void)
** {
** 	for (row = 0; row < N; row++)
** 		for (col = 0; col < N; col++)
** 			if (row == col)
** 				ident[row][col] = 1.0;
** 			else
** 				ident[row][col] = 0.0;
** }
*/
