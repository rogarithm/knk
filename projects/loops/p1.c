// finds the largest in a series of numbers entered by the user.

#include <stdio.h>

int main(void)
{
		int loop_flag;
		float prev_val;
		float new_val;
		float largest_val;

		loop_flag = 1;
		prev_val = 0;
		while (loop_flag != 0)
		{
				printf("Enter a number: ");
				scanf("%f", &new_val);
				if (new_val <= 0)
				{
						loop_flag = 0;
						continue;
				}
				if (prev_val >= new_val)
				{
						largest_val = prev_val;
						new_val = prev_val;
				}
				if (new_val > prev_val)
				{
						largest_val = new_val;
						prev_val = new_val;
				}
		}

		printf("The largest number entered was %f", largest_val);
		printf("\n");

		return 0;
}
