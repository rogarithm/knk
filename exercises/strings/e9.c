#include <stdio.h>
#include <string.h>

int main(void)
{
	char s1[10], s2[10];

	strcpy(s1, "computer");
	strcpy(s2, "science");
	while(*s1)
		putchar(*s1++);
	putchar('\n');
	while(*s2)
		putchar(*s2++);

	if (strcmp(s1, s2) < 0)
		strcat(s1, s2);
	else
		strcat(s2, s1);
	s1[strlen(s1)-6] = '\0';

	while(*s1)
		putchar(*s1);

	return 0;
}
