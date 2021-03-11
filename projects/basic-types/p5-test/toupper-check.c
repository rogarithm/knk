#include <stdio.h>
#include <ctype.h>

// test for toupper
// char output type doesn't give a value, whereas int output type gives a value in int.
// putchar doesn't give a value, too.
int main (void)
{
	int ch, val;

	printf("Enter a word: ");

	while ((ch = getchar()) != EOF && ch != '\n')
	{
		ch = toupper(ch);
		putchar(ch);
	}
	printf("\n");

	return 0;
}
