#include <stdio.h>
#include <ctype.h>

// capitalize: capitalizes all letters in its argument.

void capitalize(char *p)
{
	int i = 0;

	read_line();

	while ((ch = getchar()) != '\n')
	{
		if ((p[i] >= 'a') && (p[i] <= 'z'))
		{
			p[i] = toupper(p[i]);
		}
		p++;
	}

	for (i = 0; p[i] != '\0'; i++)
		putchar(p[i]);

	return ;
}
