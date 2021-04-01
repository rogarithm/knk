// reads a message, then prints the reversal of the message:
#include <stdio.h>

#define N 50

// int *read_line(int *msg, int len);
// void reverse_msg(int *msg, int len);

int main(void)
{
	int ch, msg[N], i = 0;

	printf("Enter a message: ");

	while ((ch = getchar()) != '\n')
	{
		msg[i] = ch;
		i++;
	}
	// <- something should be here to remove garbage
	i--; // last position should be undo, because it has no content.

	printf("Reversal is: ");

	while (i >= 0)
	{
		putchar(msg[i]);
		i--;
	}
	putchar('\n');

	return 0;
}
