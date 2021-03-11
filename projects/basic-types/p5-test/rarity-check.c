#include <stdio.h>
#include <ctype.h>

int rarity(int ch);

// test for rarity
// from usage of getchar, the input type must be int.
// the result remains the same whether it's char or int.
// see the difference btw three cases. They're all different.
// char -> unquoted input
// int -> ascii val
// putchar -> character
int main (void)
{
	int ch;
	int sum;

	printf("Enter a word: ");

	sum = 0;
	while ((ch = getchar()) != EOF && ch != '\n')
	{
		ch = toupper(ch);
		sum += (int) rarity(ch);
	}
	printf("%d", sum);
	printf("\n");

	return 0;
}

int rarity(int ch)
{
	if ((ch == 'A') || (ch == 'E') || (ch == 'I') || (ch == 'L') || (ch == 'N') || (ch == 'O') || (ch == 'R') || (ch == 'S') || (ch == 'T') || (ch == 'U'))
		ch = 1;
	if ((ch == 'D')	|| (ch == 'G'))
		ch = 2;
	if ((ch == 'B') || (ch == 'C') || (ch == 'M') || (ch == 'P'))
		ch = 3;
	if ((ch == 'F') || (ch == 'H') || (ch == 'V') || (ch == 'W') || (ch == 'Y'))
		ch = 4;
	if (ch == 'K')
		ch = 5;
	if ((ch == 'J') || (ch == 'X'))
		ch = 8;
	if ((ch == 'Q') || (ch == 'Z'))
		ch = 10;

	return ch;
}
