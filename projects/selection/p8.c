#include <stdio.h>

int main(void)
{
		// asks user to enter a time (in hours and minutes, using the 24 hour).
		// Then the program displays the departure and arrival times for the flight
		// whose departure is closest to that entered by the user.

		/*
			 comparing operation needs only departure time.

			 - convert each departure time to minute and compare with input also converted to minute.
			 - departure time must be after the input time. We cannot time travel yet.
			 */

		int hr, min, min_hr;

		printf("Enter a 24-hour time: ");
		scanf("%d:%d", &hr, &min);
		min_hr = hr * 60 + min;

		if (min_hr < 480)
				printf("Closest departure time is 8:00 a.m., arriving at 10:16 a.m.");

		if ((min_hr >= 480) && (min_hr < 583))
				printf("Closest departure time is 9:43 a.m., arriving at 11:52 a.m.");

		if ((min_hr >= 583) && (min_hr < 679))
				printf("Closest departure time is 11:19 a.m., arriving at 1:31 p.m.");

		if ((min_hr >= 679) && (min_hr < 767))
				printf("Closest departure time is 12:47 p.m., arriving at 3:00 p.m.");

		if ((min_hr >= 767) && (min_hr < 840))
				printf("Closest departure time is 2:00 p.m., arriving at 4:08 p.m.");

		if ((min_hr >= 840) && (min_hr < 945))
				printf("Closest departure time is 3:45 p.m., arriving at 5:55 p.m.");

		if ((min_hr >= 945) && (min_hr < 1140))
				printf("Closest departure time is 7:00 p.m., arriving at 9:20 p.m.");

		if ((min_hr >= 1140) && (min_hr < 1305))
				printf("Closest departure time is 9:45 p.m., arriving at 11:58 p.m.");

		printf("\n");

		return 0;
}
