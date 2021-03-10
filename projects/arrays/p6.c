#include <stdio.h>
#include <ctype.h> // for toupper function

int main(void)
{
		int counter;
		char message[100];

		counter = 0;
		printf("Enter message: ");
		while (message[counter])
		{
				scanf("%c", &message[counter]);
				message[counter] = toupper(message[counter]);
				counter++;
		}

		counter = 0;
		while(message[counter]) // iterate until the array reaches the end of it
		{
				if (message[counter] == 'A')
						message[counter] = 4;
				if (message[counter] == 'B')
						message[counter] = 8;
				if (message[counter] == 'E')
						message[counter] = 3;
				if (message[counter] == 'I')
						message[counter] = 1;
				if (message[counter] == 'O')
						message[counter] = 0;
				if (message[counter] == 'S')
						message[counter] = 5;
				counter++;
		}

		counter = 0;
		printf("In B1FF-speak: ");
		while (message[counter])
		{
				printf("%c", message[counter]);
				counter++;
		}
		printf("\n");

		return 0;
}
