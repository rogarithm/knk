#include <stdio.h>

int main(void)
{
	printf("Display (whatever number of) input digits you want it to be reversed\n\n");

	int read;

	printf("Enter a two-digit number: ");
	scanf("%d", &read);

	printf("The reversal is: ");
	while (read != 0)
	{
		printf("%d", read % 10);
		read /= 10;
	}
	printf("\n");

	return 0;
}
