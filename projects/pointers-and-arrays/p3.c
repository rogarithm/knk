// reads a message, then prints the reversal of the message:
#include <stdio.h>

#define N 50

int main(void)
{
	int ch, msg[N], *p;

	printf("Enter a message: ");

	p = msg;
	while ((ch = getchar()) != '\n')
	{
		*p++ = ch;
	}
	// <- something should be here to remove garbage. That is...
	p--; // last position should be undo, because it has no content.

	printf("Reversal is: ");

	while (p >= msg)
		putchar(*p--);
	putchar('\n');

	return 0;
}
