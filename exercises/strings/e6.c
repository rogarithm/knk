#include <stdio.h>
#include <string.h>

#define N 50

int read_line(char str[], int n);
char *censor(char *p);
int match_foo(char *p);
char *foo_2_xxx(char *p);

/*
** censor: modifies every occurrence of foo by xxx.
** char * -> char *
*/

int main(void)
{
	char msg[N];
	int i;

	read_line(msg, N);
	censor(msg);

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

char *censor(char *p)
{
	char *tmp;

	tmp = p;
	while (*p)
	{
		if (((*p != '\0') && (*(p+1) != '\0') && (*(p+2) != '\0'))
				&& (match_foo(tmp) == 1))
		{
			foo_2_xxx(tmp);
			// tmp += 3; // it's wrong because there's a chance that no character after the foo.
		}
		else
			tmp++;
	}

	return p;
}

char *foo_2_xxx(char *p)
{
	char *tmp;

	tmp = p;
	*tmp = 'x';
	*++tmp = 'x';
	*++tmp = 'x';

	return p;
}

int match_foo(char *p)
{
	if ((*p == 'f') && (*(p+1) == 'o') && (*(p+2) == 'o'))
		return 1;
	else
		return 0;
}
