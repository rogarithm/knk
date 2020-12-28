#include <stdio.h>

int main(void)
{
		int i;
		int sum;

		sum = 0;
		for (i = 0; i < 10; i++)
		{
				if (i % 2)
						continue; 
				// if (i % 2) is 1 (true), that is, if the ◊var{i} is an odd number, the program ignores ◊st{sum += i} that is, the statement between ◊st{continue} and ending brace. Thus when ◊var{i} is an odd number, it doesn't be added to ◊var{sum}, but when ◊var{i} is an even number, it'll be added to ◊var{sum}
				sum += i;
		}
		printf("%d\n", sum);
}

/*
void sum_even(int until)
{
		int i;
		int sum;

		sum = 0;
		for (i = 0; i < until; i++)
		{
				if (i % 2)
						continue;
				sum += i;
		}
		printf("%d\n", sum);
}

int main(void)
{
		sum_even(10);
		return (0);
}
*/
