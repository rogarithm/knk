#include <stdio.h>
void split_date(int day_of_year, int year, int *month, int *day);
int leap_year(int year);

// day_of_year: integer between 1 and 366. Number of days specified by the variable year.
// month, day: equivalent month and day within that month.

int main(void)
{
	int month, day;

	month = 0;
	day = 0;

	split_date(51, 1992, &month, &day);
	printf("%d/%d\n", month, day);

	return 0;
}

void split_date(int day_of_year, int year, int *month, int *day)
{
	int a[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
	if (leap_year(year) == 1)
		a[1] = 29;

	int i = 0;
	while (day_of_year > 0)
	{
		if (day_of_year < a[i])
		{
			*day = day_of_year;
			break;
		}
		else
		{
			day_of_year -= a[i];
			*month = i + 1;
			i++;
		}
	}

	return ;
}

int leap_year(int year)
{
	int true = 1;
	int false = 0;

	int div_4 = ((year % 4) == 0);
	int div_100 = ((year % 100) == 0);
	int div_400 = ((year % 400) == 0);

	if (div_4 && !div_100)
		return true;
	if (div_4 && div_100 && div_400)
		return true;
	else
		return false;
}
