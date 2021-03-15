#include <stdio.h>
int day_of_month(int month, int year);
int leap_day(int year);
int leap_year(int year);
int day_of_year(int month, int day, int year);
#define DAY_TO_JULY 214; // why plus 2? Because leap day of Feb will be subed later.

// https://www.mathsisfun.com/measure/months.html

int main(void)
{
	// test for leap_year
	printf("%d == 1\n", leap_year(1992));
	printf("%d == 1\n", leap_year(2000));
	printf("%d == 0\n", leap_year(1900));
	// test for day_of_month when it's leap year
	printf("%d == 31\n", day_of_month(1, 1992));
	printf("%d == 60\n", day_of_month(2, 1992));
	printf("%d == 91\n", day_of_month(3, 1992));
	// test for day_of_month when it's not leap year
	printf("%d == 31\n", day_of_month(1, 1900));
	printf("%d == 59\n", day_of_month(2, 1900));
	printf("%d == 90\n", day_of_month(3, 1900));
	// test for day_of_year for leap year
	printf("%d == 32\n", day_of_year(2, 1, 1992));
	printf("%d == 65\n", day_of_year(3, 5, 1992));
	// test for day_of_year for not leap year
	printf("%d == 32\n", day_of_year(2, 1, 1900));
	printf("%d == 64\n", day_of_year(3, 5, 1900));

	return 0;
}

int day_of_month(int month, int year)
{
	if (month == 1)
		return 31;
	if ((1 < month) && (month <= 7))
		return (30 * month) + ((month + 1) / 2) + leap_day(year);
	// compute day in each months as 30 at first, and remove trailing days for Feb with leap_day(year). If leap_year, Feb is 29 days, so remove just 1; if not leap_yaer, Feb is 28 days, so remove 2.
	if ((7 < month) && (month <= 12))
		return DAY_TO_JULY + leap_day(year) + (30 * (month - 7)) + ((month - 7 + 1) / 2);
	// initialize month so Aug is converted to 1. Other operations are the same with condition (month <= 7).
}

int leap_day(int year)
{
	// If given year is the leap year, make days in Feb 29; if not, make it 28.
	int true = 1;

	if (leap_year(year) == true)
		return -1;
	else
		return -2;
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

//(((year % 100) == 0) && ((year % 400) == 0))
int day_of_year(int month, int day, int year)
{
	return day + (day_of_month((month - 1), year));
}
