#include <stdio.h>

// pauses every 24 squares and choose whether to continue or not.
// getchar won't allow the program to continue until the user presses the enter key

int main(void)
{
	int n, i;
	int ch; // the output type of getchar must be int

	printf("Enter number of entries in table: ");
	scanf("%d", &n);

	i = 1;
	while (i <= n)
	{
		printf("%10d%10d\n", i, i * i);

		if (i % 24 == 0)
		{
			printf("Press Enter to continue... ");
			ch = 1;
			ch = getchar();
			while ((ch = getchar()) != EOF && ch != '\n')
			{
				ch = getchar();
			}
		}

		i++;
	}

	return 0;
}
