#include <stdio.h>

void find_closest_flight(int desired_time, int *departure_time, int *arrival_time);

int main(void)
{
	// asks user to enter a time (in hours and minutes, using the 24 hour).
	// Returns message with the departure and arrival times for the flight
	// whose departure is closest to that entered by the user.

	int hr, min, min_hr;
	int dep_t, arr_t;
	int dep_h, dep_m, arr_h, arr_m;
	char dep_c, arr_c;

	printf("Enter a 24-hour time: ");
	scanf("%d:%d", &hr, &min);
	min_hr = hr * 60 + min;

	find_closest_flight(min_hr, &dep_t, &arr_t);

	dep_h = dep_t /  60;
	dep_m = dep_t % 60;
	arr_h = arr_t /  60;
	arr_m = arr_t % 60;

	if (dep_h > 12)
	{
		dep_c = 'p';
	}
	else
	{
		dep_c = 'a';
	}

	if (arr_h > 12)
	{
		arr_c = 'p';
	}
	else
	{
		arr_c = 'a';
	}

	printf("Closest departure time is %d:%.2d %c.m., arriving at %d:%.2d %c.m.\n",
			dep_h, dep_m, dep_c, arr_h, arr_m, arr_c);

	return 0;
}

// find the flight that has closest departure_time from desired_time.
void find_closest_flight(int desired_time, int *departure_time, int *arrival_time)
{
	if (desired_time < 480)
	{
		*departure_time = 480;
		*arrival_time = 616;
	}
	if ((desired_time >= 480) && (desired_time < 583))
	{
		*departure_time = 583;
		*arrival_time = 712;
	}
	if ((desired_time >= 583) && (desired_time < 679))
	{
		*departure_time = 679;
		*arrival_time = 811;
	}
	if ((desired_time >= 679) && (desired_time < 767))
	{
		*departure_time = 767;
		*arrival_time = 900;
	}
	if ((desired_time >= 767) && (desired_time < 840))
	{
		*departure_time = 840;
		*arrival_time = 968;
	}
	if ((desired_time >= 840) && (desired_time < 945))
	{
		*departure_time = 945;
		*arrival_time = 1075;
	}
	if ((desired_time >= 945) && (desired_time < 1140))
	{
		*departure_time = 1140;
		*arrival_time = 1280;
	}
	if ((desired_time >= 1140) && (desired_time < 1305))
	{
		*departure_time = 1305;
		*arrival_time = 1438;
	}

	return ;
}

/* for backup
printf("Closest departure time is 8:00 a.m., arriving at 10:16 a.m.");

if (desired_time < 480)
	printf("Closest departure time is 8:00 a.m., arriving at 10:16 a.m.");

if ((desired_time >= 480) && (desired_time < 583))
	printf("Closest departure time is 9:43 a.m., arriving at 11:52 a.m.");

if ((desired_time >= 583) && (desired_time < 679))
	printf("Closest departure time is 11:19 a.m., arriving at 1:31 p.m.");

if ((desired_time >= 679) && (desired_time < 767))
	printf("Closest departure time is 12:47 p.m., arriving at 3:00 p.m.");

if ((desired_time >= 767) && (desired_time < 840))
	printf("Closest departure time is 2:00 p.m., arriving at 4:08 p.m.");

if ((desired_time >= 840) && (desired_time < 945))
	printf("Closest departure time is 3:45 p.m., arriving at 5:55 p.m.");

if ((desired_time >= 945) && (desired_time < 1140))
	printf("Closest departure time is 7:00 p.m., arriving at 9:20 p.m.");

if ((desired_time >= 1140) && (desired_time < 1305))
	printf("Closest departure time is 9:45 p.m., arriving at 11:58 p.m.");
*/
