#include <stdlib.h>
#include <time.h>
#include <stdio.h>

void random_walk(void);

int main (void)
{
	random_walk();

	return 0;
}

void random_walk(void)
{
	// initialize array
	char a[3][3] = {'.'};
	int row, col;
	int prompt;

	srand((unsigned) time(NULL));

	// start position
	row = rand() % 3;
	col = rand() % 3;
	a[row][col] = 'A';
	
	/*
  // program does not exit as I intended. everytime it executes twice. what's wrong?
	printf("To stop, enter 0: ");
	while ((prompt = getchar()) != 0 && prompt != EOF)
	{
		row = rand() % 3;
		col = rand() % 3;

		printf("(%d, %d)\n", row, col);
	}
	*/
}
