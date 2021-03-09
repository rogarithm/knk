#include <stdio.h>
#include <ctype.h> // for toupper function

int main(void)
{
	int counter;
	char message[100];

	counter = 0;
	printf("Enter message: ");
	while ((message[counter] = getchar()) != EOF && message[counter] != '\n')
	{
		message[counter] = toupper(message[counter]);
		counter++;
	}

	counter = 0;
	while(message[counter]) // iterate until the array reaches the end of it
	{
		if (message[counter] == 'A')
			message[counter] = 52;
		if (message[counter] == 'B')
			message[counter] = 56;
		if (message[counter] == 'E')
			message[counter] = 51;
		if (message[counter] == 'I')
			message[counter] = 49;
		if (message[counter] == 'O')
			message[counter] = 48;
		if (message[counter] == 'S')
			message[counter] = 53;

		counter++;
	}

	counter = 0;
	printf("In B1FF-speak: ");
	while (message[counter] != '\n')
	{
		putchar(message[counter]);
		counter++;
	}
	printf("!!!!!!!!!!");
	printf("\n");

	return 0;
}
