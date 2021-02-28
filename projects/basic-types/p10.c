#include <stdio.h>
#include <ctype.h>

int main (void)
{
	int ch, vowel_num;

	printf("Enter a sentence: ");

	vowel_num = 0;
	while ((ch = getchar()) != '\n')
	{
		ch = toupper(ch);
		if ((ch == 'A') || (ch == 'E') || (ch == 'I') || (ch == 'O') || (ch == 'U'))
			vowel_num++;
	}

	printf("Your sentence contains %d vowels.\n", vowel_num);
	return 0;
}
