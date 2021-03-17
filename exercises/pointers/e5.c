#include <stdio.h>
void split_time(long total_sec, int *hr, int *min, int *sec);

int main(void)
{
	int hour, minute, second;

	split_time(23430, &hour, &minute, &second);
	printf("Current time: %d:%d:%d\n", hour, minute, second);

	// 21600 1800 30 -> 6:30:30
	return 0;
}

void split_time(long total_sec, int *hr, int *min, int *sec)
{
	int hour_in_sec = 3600;
	int sec_in_minute = 60;

	*hr = (int) (total_sec / hour_in_sec);
	*min = (int) ((total_sec % hour_in_sec) / sec_in_minute);
  // *min = (int) ((total_sec - (*hr * hour_in_sec)) / 60);
	*sec = (int) ((total_sec % hour_in_sec) % sec_in_minute);
	// *sec = (int) ((total_sec - (*hr * hour_in_sec) - (*min * 60)));

	return ;
}
