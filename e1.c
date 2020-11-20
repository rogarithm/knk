#include <stdio.h>

int main(void)
{

		printf("exercise 1.\n");
		printf("hello, world\n\n");

		printf("exercise 2."\n);
		// statements below
		printf("Parkinson's Law:\nWork expands so as to ");
		printf("fill the time\n");
		printf("available for its completion.\n\n");

		printf("exercise 3."\n);
		/* Computes the dimensional weight of a 12" x 10" x 8" box */
		int height; int length; int width; int volume;

		height = 8; length = 12; width = 10;
		volume = height * length * width;

		printf("Dimensions: %d x %d x %d\n", length, width, height);
		printf("Volume (cubic inches): %d\n", volume);
		printf("Dimensional weight (pounds): %d\n\n", (volume + 165) / 166);


		printf("exercise 4."\n);
		int i1, i2, i3;
		float f1, f2, f3;

		printf("uninitialized integers and floating numbers: \n");
		printf("%d %d %d are integers\n", i1, i2, i3);
		printf("%f %f %f are floating numbers\n\n", f1, f2, f3);
}
