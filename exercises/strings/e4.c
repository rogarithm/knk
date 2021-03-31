// modify read_line
#include <stdio.h>

int read_after_ws(char str[], int n);
int read_until_ws(char str[], int n);

int main(void)
{
	char str[50];
	int i;

	read_after_ws(str, 50);

	i = 0;
	while (str[i] != '\0')
	{
		putchar(str[i]);
		i++;
	}

	return 0;
}

// a. have it skip white space before beginning to store input characters

int read_after_ws(char str[], int n)
{
	int ch, i = 0;

	/* ignore preceding white space */
	while (((ch = getchar()) == ' ') || ch == '\t')
		;
	str[i++] = ch; /* when encounters the first non white-space character,
										if without this statement, it'll be discarded, which is
										not what our intention. So store it. */
	while ((ch = getchar()) != '\n')
		if (i < n)
			str[i++] = ch;
	str[i] = '\0';       /* terminates string */
	return i;            /* number of characters stored */
}

// b. have it stop reading at the first white-space character.

int read_until_ws(char str[], int n)
{
	int ch, i = 0;

	/* store characters before the first white-space character */
	while (((ch = getchar()) != ' ') || (ch != '\t'))
		if (i < n)
			str[i++] = ch;
	str[i] = '\0';       /* terminates string */
	return i;            /* number of characters stored */
}

/* backup for original function
** int read_line(char str[], int n)
** {
** 	int ch, i = 0;
** 
** 	while ((ch = getchar()) != '\n')
** 		if (i < n)
** 			str[i++] = ch;
** 	str[i] = '\0';       terminates string
** 	return i;            number of characters stored
** }
*/
