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

	printf("Enter a word: ");

	while (ch != '\n')
	{
		ch = getchar();
		ch = toupper(ch);
		ch = rarity(ch);
		putchar(ch);
	}


	return 0;
}

int rarity(int ch)
{
	if ((ch == 'A') || (ch == 'E') || (ch == 'I') || (ch == 'L') || (ch == 'N') || (ch == 'O') || (ch == 'R') || (ch == 'S') || (ch == 'T') || (ch == 'U'))
		ch = 49;
	if ((ch == 'D')	|| (ch == 'G'))
		ch = 50;
	if ((ch == 'B') || (ch == 'C') || (ch == 'M') || (ch == 'P'))
		ch = 51;
	if ((ch == 'F') || (ch == 'H') || (ch == 'V') || (ch == 'W') || (ch == 'Y'))
		ch = 52;
	if (ch == 'K')
		ch = 53;
	if ((ch == 'J') || (ch == 'X'))
		ch = 56;
	if ((ch == 'Q') || (ch == 'Z'))
		ch = 58;

	return ch;
}
