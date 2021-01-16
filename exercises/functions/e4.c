#include <stdio.h>
int day_of_month(int month, int year);
int leap_day(int year);
int leap_year(int year);
int day_of_year(int month, int day, int year);
#define DAY_TO_JULY 214;

// https://www.mathsisfun.com/measure/months.html

int day_of_month(int month, int year)
{
	if (month == 1)
		return 31;
	if (month <= 7)
		return (30 * month) + (((month + 1) / 2) * 1) + leap_day(year);
	// month + 1 is to prevent the effect of thrown fractional part
	if ((7 < month) && (month <= 12))
		return DAY_TO_JULY + leap_day(year) + (30 * (month - 7)) + (((month - 7 + 1) / 2) * 1);
	// consider the order of 31 and 30 has reversed from august
}

int leap_day(int year)
{
	if (leap_year(year) == 0)
		return -1;
	else
		return -2;
}

int leap_year(int year)
{
	if ((year % 4) == 0)
		if ((year % 100) == 0)
			if ((year % 400) == 0)
				return 1; // if the year is leap year, plus 1
	return 0; // if the year isn't leap year, leave it as it is
}

//(((year % 100) == 0) && ((year % 400) == 0))
int day_of_year(int month, int day, int year)
{
	return day + (day_of_month((month - 1), year));
}

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
	// test for day_of_year for no leap year
	printf("%d == 31\n", day_of_year(2, 1, 1992));
	printf("%d == 65\n", day_of_year(3, 5, 1992));
	// test for day_of_year for leap year
	printf("%d == 31\n", day_of_year(2, 1, 1900));
	printf("%d == 64\n", day_of_year(3, 5, 1900));

	return 0;
}
