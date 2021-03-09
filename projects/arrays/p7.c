#include <stdio.h>
/* Reads 5 X 5 array of integers and then prints the row sums and the column sums */
// how about to implement with 2-dimensional array?
int main (void)
{
	int row_1[5], row_2[5], row_3[5], row_4[5], row_5[5];
	int i;

	array_position = 0;
	printf("Enter row 1: ");
	// put each number in the array, but skip whitespace. Do until EOF && '\n'
	while ((row_1[i]= getchar()) != EOF && row_1[i] != '\n' && row_1[i] != ' ')
		i++;
	printf("Enter row 2: ");
	while ((row_2[i]= getchar()) != EOF && row_2[i] != '\n' && row_2[i] != ' ')
		i++;
	printf("Enter row 3: ");
	while ((row_3[i]= getchar()) != EOF && row_3[i] != '\n' && row_3[i] != ' ')
		i++;
	printf("Enter row 4: ");
	while ((row_4[i]= getchar()) != EOF && row_4[i] != '\n' && row_4[i] != ' ')
		i++;
	printf("Enter row 5: ");
	while ((row_5[i]= getchar()) != EOF && row_5[i] != '\n' && row_5[i] != ' ')
		i++;

	printf("Row totals: %d %d %d %d %d");
	return 0;
}

int row_total()
{
	int sum = 0;
	while (i < 5)
	{
		sum += row_x[i];
		i++;
	}

	return sum;
}

int column_total(int col_num)
{
	int sum = 0;

	sum = row_1[[col_num]] + row_2[[col_num]] + row_3[[col_num]] + row_4[[col_num]] + row_5[[col_num]];

	return sum;
}
