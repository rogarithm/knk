#include <stdio.h>
#include <ctype.h>

#define N 50

int read_line(char str[], int n);
char *capitalize(char *p);

/*
** capitalize: capitalizes all letters in its argument.
** char * -> char *
** Input is null-terminated string. This function uses pointer arithmetic to access the characters.
*/

int main(void)
{
	char msg[N];
	int i;

	read_line(msg, N);
	capitalize(msg);

	for (i = 0; msg[i] != '\0'; i++)
		putchar(msg[i]);
	putchar('\n');

	return 0;
}

int read_line(char str[], int n)
{
	int ch, i = 0;

	printf("Enter a line: ");

	while ((ch = getchar()) != '\n')
		if (i < n)
			str[i++] = ch;
	str[i] = '\0';

	return i;
}

char *capitalize(char *p)
{
	char *msg;
	msg = p;

	/* Though msg points the first element of p,
	 * changes to msg also affects p, thus
	 * also making change to p.
	 * (Or is the two changes are the same?)
	*/
	while (*msg)
	{
		if ((*msg >= 'a') && (*msg <= 'z'))
			*msg = toupper(*msg);
		msg++;
	}

	return p;
}
