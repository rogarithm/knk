// finds the largest in a series of numbers entered by user.

#include <stdio.h>

int main(void)
{
		int flag;
		float prev;
		float new;
		float largest;

		flag = 1;
		prev = 0;
		while (flag != 0)
		{
				printf("Enter a number: ");
				scanf("%f", &new);
				if (new <= 0)
				{
						flag = 0;
						break;
				}

				if (new <= prev)
				{
						largest = prev;
				}
				else
				{
						largest = new;
				}
		}

		printf("The largest number entered was %.2f", largest);
		printf("\n");

		return 0;
}
