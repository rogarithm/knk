// modify read_line
#include <stdio.h>

int read_after_ws(char str[], int n);
int read_until_ws(char str[], int n);
int read_until_nl(char str[], int n);
int leave_left(char str[], int n);

int main(void)
{
	char str[5];
	int i;

	read_until_nl(str, 5);

	i = 0;
	while (str[i] != '\0')
	{
		putchar(str[i]);
		i++;
	}

	return 0;
}

// d. have it leave behind characters that it doesn't have room to store.

int leave_left(char str[], int n)
{
	int ch, i = 0;

	while ((ch = getchar()) != '\n')
	{
		if (i < n)
			str[i++] = ch;
		if (i > n)
			q
	}

	return i;
}


// c. have it stop at the first new-line character, then store
// the new-line character in the string.

int read_until_nl(char str[], int n)
{
	int ch, i = 0;

	while ((ch = getchar()) != '\n')
		if (i < n)
			str[i++] = ch;
	str[i] = '\n';       /* terminates string */
	str[i+1] = '\0';
	return i;            /* number of characters stored */
}


// b. have it stop reading at the first white-space character.

int read_until_ws(char str[], int n)
{
	int ch, i = 0;

	/* store characters before the first white-space character */
	while (((ch = getchar()) != ' ') && (ch != '\t') && (ch != '\n'))
		/* the && operator should be used as logical operator, because 
		 * if using ||, any white-space character will not be filtered. */
		if (i < n)
			str[i++] = ch;
	str[i] = '\0';       /* terminates string */
	return i;            /* number of characters stored */
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
