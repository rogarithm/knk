// check whether the message read is palindrome or not.
#include <stdio.h>
#include <ctype.h>

#define N 50

int main(void)
{
	int ch, *p, msg[N];

	printf("Enter a message: ");

	// why these doesn't work?
  // int is_capital = ((ch >= 'A') && (ch <= 'Z'));
  // int is_smallcase = ((ch >= 'a') && (ch <= 'z'));

	p = msg;
	while ((ch = getchar()) != '\n')
	{
		if (((ch >= 'A') && (ch <= 'Z')) || ((ch >= 'a') && (ch <= 'z')))
		{
			*p++ = toupper(ch); // make all characters uppercase for easy compare
		}
		else
			;
	}
	// <- something should be here to remove garbage
	p--; // last position should be undo, because it has no content.

	int *q;
	q = msg;
	while (q <= p)
		// the = condition is when the string is odd number
		// where in the end back = i.
	{
		if (*q != *p)
		{
			printf("Not a palindrome\n");
			return 0;
		}
		else
		{
			q++;
			p--;
		}
	}

	printf("Palindrome\n");

	return 0;
}
