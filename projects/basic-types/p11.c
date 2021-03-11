#include <stdio.h>

int main (void)
{
	int first_initial, last_name, trash;

	printf("Enter a first and last name: ");
	first_initial = getchar();

	while (getchar() != ' ')
		trash = getchar();

	while ((last_name = getchar()) != EOF && last_name != '\n')
		putchar(last_name);

	putchar(',');
	putchar(32);
	putchar(first_initial);
	putchar('.');
	putchar(10);

	return 0;
}
