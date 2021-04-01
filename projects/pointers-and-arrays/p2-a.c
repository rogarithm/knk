// check whether the message read is palindrome or not.
#include <stdio.h>
#include <ctype.h>

#define N 50

// int *read_line(int *msg, int len);
// void reverse_msg(int *msg, int len);

int main(void)
{
	int ch, msg[N], i = 0;

	printf("Enter a message: ");

	// why these doesn't work?
  // int is_capital = ((ch >= 'A') && (ch <= 'Z'));
  // int is_smallcase = ((ch >= 'a') && (ch <= 'z'));

	while ((ch = getchar()) != '\n')
	{
		if (((ch >= 'A') && (ch <= 'Z')) || ((ch >= 'a') && (ch <= 'z')))
		{
			msg[i] = toupper(ch); // make all characters uppercase for easy compare
			i++;
		}
		else
			;
	}
	// <- something should be here to remove garbage
	i--; // last position should be undo, because it has no content.

	int back = 0;
	while (back <= i)
		// the = condition is when the string is odd number
		// where in the end back = i.
	{
		if (msg[back] != msg[i])
		{
			printf("Not a palindrome\n");
			return 0;
		}
		else
		{
			back++;
			i--;
		}
	}

	printf("Palindrome\n");

	return 0;
}
