#include <stdio.h>

// modify to: the departure times are stored in an array and the arrival times are stored in a second array.

int main (void)
{
	// asks user to enter a time (in hours and minutes, using the 24 hour).
	// Then the program displays the departure and arrival times for the flight
	// whose departure is closest to that entered by the user.

	// comparing operation needs only departure time.
	// - convert each departure time to minute and compare with input also converted to minute.
	// - departure time must be after the input time. We cannot time travel yet.

	int hr, min, min_hr;
	int d[] = {480, 583, 679, 767, 840, 945, 1140, 1305};
	int a[] = {616, 712, 811, 900, 968, 1075, 1280, 1438};

	printf("Enter a 24-hour time: ");
	scanf("%d:%d", &hr, &min);
	min_hr = hr * 60 + min;

	int dep_t, arr_t, i;
	i = 0;

	if (min_hr < d[0])
	{
		dep_t = d[0];
		arr_t = a[0];
	}
	else while (i < 8)
	{
		if ((d[i] < min_hr) && (min_hr < d[i + 1]))
		{
			dep_t = d[i + 1];
			arr_t = a[i + 1];
			break;
		}
		else i++;
	}

	// convert back for message formatting
	// implement a.m. and p.m. too?
	int d_conv_h = dep_t / 60;
	int d_conv_m = dep_t % 60;
	int a_conv_h = arr_t / 60;
	int a_conv_m = arr_t % 60;
	
	printf("Closest departure time is %.2d:%.2d, arriving at %.2d:%.2d.", d_conv_h, d_conv_m, a_conv_h, a_conv_m);
	printf("\n");

	return 0;
}
