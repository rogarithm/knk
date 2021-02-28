#include <stdio.h>
#include <ctype.h>

int conv_rarity(int ch);

int main(void)
{
	int ch, val, sum;
	char upper;

	printf("Enter a word: ");

	sum = 0;
	while ((ch = getchar()) != '\n')
	{
		upper = toupper(ch);
		val = conv_rarity(upper);
		sum += val;
	}

	printf("Scrabble value: ");
	putchar(sum);
	printf("\n");

	return 0;
}

int conv_rarity(int ch)
{
	if ((ch == 'A') || (ch == 'E') || (ch == 'I') || (ch == 'L') || (ch == 'N') || (ch == 'O') || (ch == 'R') || (ch == 'S') || (ch == 'T') || (ch == 'U'))
		ch = 50;
	if ((ch == 'D')	|| (ch == 'G'))
		ch = 51;
	if ((ch == 'B') || (ch == 'C') || (ch == 'M') || (ch == 'P'))
		ch = 52;
	if ((ch == 'F') || (ch == 'H') || (ch == 'V') || (ch == 'W') || (ch == 'Y'))
		ch = 53;
	if (ch == 'K')
		ch = 54;
	if ((ch == 'J') || (ch == 'X'))
		ch = 56;
	if ((ch == 'Q') || (ch == 'Z'))
		ch = 58;

	return ch;
}
