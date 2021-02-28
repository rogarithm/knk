#include <stdio.h>

int main (void)
{
	int hr, min, ch;

	printf("Enter a 12-hour time: ");

	scanf("%d:%d", &hr, &min);
	while ((ch = getchar()) != '\n')
	{
		if ((ch == 'p') || (ch == 'P'))
			hr += 12;
		if ((ch == 'a') || (ch == 'A'))
			;
	}

	printf("Equivalent 24-hour time: %d:%d\n", hr, min);

	return 0;
}
