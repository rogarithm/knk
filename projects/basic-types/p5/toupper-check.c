#include <stdio.h>
#include <ctype.h>

// test for toupper
// char output type doesn't give a value, whereas int output type gives a value in int.
// putchar doesn't give a value, too.
int main (void)
{
	int ch, val;

	printf("Enter a word: ");

	// printf("%c", toupper(49));
	// printf("\n");
	// printf("%c", toupper('a'));
	// printf("\n");

	while (ch != '\n')
	{
		ch = getchar();
		ch = toupper(ch);
		putchar(ch);
	}

	// printf("value of char: %c", val);
	// printf("\n");
	// printf("value of int: %d", val);
	// printf("\n");
	// putchar(val);
	// printf("\n");

	return 0;
}
