#include <stdio.h>
#include <ctype.h>

#define N 50

int read_line(char str[], int n);
char *capitalize(char *p);

/*
** capitalize: capitalizes all letters in its argument.
** char * -> char *
** Input is null-terminated string. This function uses array subscripting to access the characters.
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
	int i = 0;

	while (p[i] != '\0')
	{
		if ((p[i] >= 'a') && (p[i] <= 'z'))
			p[i] = toupper(p[i]);
		i++;
	}

	return p;
}
