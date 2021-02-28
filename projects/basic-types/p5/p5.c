#include <stdio.h>
#include <ctype.h>

int rarity(int ch);

int main (void)
{
	int ch, val;
	val = 0;

	printf("Enter a word: ");

	ch = getchar();
	while (ch != '\n')
	{
		ch = getchar();
		ch = toupper(ch);
//		val = val + rarity(val);
	}

	printf("Scrabble value: %d", ch);
	printf("\n");

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
