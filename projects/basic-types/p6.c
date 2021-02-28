#include <stdio.h>

// write a program that prints the values of

int main (void)
{
	printf("int size: %d", (int) (sizeof (int)));
	printf("\n");
	printf("short size: %d", (int) (sizeof (short)));
	printf("\n");
	printf("long size: %d", (int)	(sizeof (long)));
	printf("\n");
	printf("float size: %d", (int)	(sizeof (float)));
	printf("\n");
	printf("double size: %d", (int)	(sizeof (double)));
	printf("\n");
	printf("long double size: %d", (int)	(sizeof (long double)));
	printf("\n");

	return 0;
}
