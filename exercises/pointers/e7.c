check exercises/functions/e4.c

void split_date(int day_of_year, int year, int *month, int *day);

// day_of_year: integer between 1 and 366. Number of days specified by the variable year.
// month, day: equivalent month and day within that month.

// Specify day_of_year and year. As month and day are given as pointers, they'll be specified (and stored) inside the function body.

void split_date(int day_of_year, int year, int *month, int *day)
{
	//this is first version. It doesn't care about difference in February, and entire number of day in a year.
	// and also, suppose there's only 30 days in a month.

	if (not_leap_year(year) == true)
	{
	*month = day_of_year;
	*day = day_of_year;
	}
	{
	*month = day_of_year;
	*day = day_of_year;
	}
	return 0;
}

while (over_28)
{
	if (div_by_31 || div_by_30)
		month = month + 1;

	consider feb;

	assign_left_to_day;
}

