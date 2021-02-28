#include <stdio.h>

int char_to_num(int ch);

// translates an alphabetic phone number into numeric form.

int main(void)
{

	int ch;
	int num;

	printf("Enter phone number: ");
	// ch = getchar();
	while (ch != '\n')
	{
		ch = getchar();
		num = char_to_num(ch);
		putchar(num);
	}

	return 0;
}


int char_to_num(int ch)
{
	if ((ch == 'A') || (ch == 'B') || (ch == 'C'))
		ch = 50;
	if ((ch == 'D') || (ch == 'E') || (ch == 'F'))
		ch = 51;
	if ((ch == 'G') || (ch == 'H') || (ch == 'I'))
		ch = 52;
	if ((ch == 'J') || (ch == 'K') || (ch == 'L'))
		ch = 53;
	if ((ch == 'M') || (ch == 'N') || (ch == 'O'))
		ch = 54;
	if ((ch == 'P') || (ch == 'R') || (ch == 'S'))
		ch = 55;
	if ((ch == 'T') || (ch == 'U') || (ch == 'V'))
		ch = 56;
	if ((ch == 'W') || (ch == 'X') || (ch == 'Y'))
		ch = 57;

	return ch;
}
