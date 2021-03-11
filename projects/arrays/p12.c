#include <stdio.h>
#include <ctype.h>

int rarity(int ch);

int main (void)
{
	//                 {a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q,  r, s, t, u, v, w, x, y, z}
	int scrb_val[26] = {1, 3, 3, 2, 1, 4, 2, 4, 1, 8, 5, 1, 3, 1, 1, 3, 10, 1, 1, 1, 1, 4, 4, 8, 4, 10};
	int ch;
	int sum;

	printf("Enter a word: ");

	sum = 0;
	while ((ch = getchar()) != EOF && ch != '\n')
	{
		ch = toupper(ch);
		sum += scrb_val[ch - 65];
	}
	printf("%d", sum);
	printf("\n");

	return 0;
}

/*
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
*/
