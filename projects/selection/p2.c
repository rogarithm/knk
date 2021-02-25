#include <stdio.h>

int conv_to_12(int h)
{
	// for AM
	if ((0 < h) && (h < 11))
		h = h;
	if (h == 0)
		h = h + 12;
	if (h == 24)
		h = h - 12;

	// for PM
	if (h == 12)
		h = h;
	if ((12 < h) && (h < 23))
		h = h - 12;

	return h;
}

int main(void)
{
	int hour;
	int min;

	printf("Enter a 24-hour time: ");
	scanf("%d:%d", &hour, &min);

	if (((0 <= hour) && (hour < 11)) || ((hour == 24) && (min == 00)))
		printf("Equivalent 12-hour time: %d:%.2d AM", conv_to_12(hour), min);
	if ((12 <= hour) && (hour < 23))
		printf("Equivalent 12-hour time: %d:%.2d PM", conv_to_12(hour), min);

	printf("\n");

	return 0;
}
