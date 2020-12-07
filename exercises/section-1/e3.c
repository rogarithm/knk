#include <stdio.h>

int main(void)
{
		printf("exercise 3."\n);
		/* Computes the dimensional weight of a 12" x 10" x 8" box */
		int height; int length; int width; int volume;

		height = 8; length = 12; width = 10;
		volume = height * length * width;

		printf("Dimensions: %d x %d x %d\n", length, width, height);
		printf("Volume (cubic inches): %d\n", volume);
		printf("Dimensional weight (pounds): %d\n\n", (volume + 165) / 166);
}
