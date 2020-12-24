#include <stdio.h>

void conv_24_to_12(int h, int m)
{
		if (h == 0)
				printf("Equivalent 12-hour time: %d:%d AM\n", h + 12, m);
		if ((0 < h) && (h < 11))
				printf("Equivalent 12-hour time: %d:%d AM\n", h, m);
		if (h == 12)
				printf("Equivalent 12-hour time: %d:%d PM\n", h, m);
		if ((12 < h) && (h < 23))
				printf("Equivalent 12-hour time: %d:%d PM\n", h - 12, m);
		if ((h == 24) && (m == 00))
				printf("Equivalent 12-hour time: %d:%d AM\n", h - 12, m);
		//else
		//		printf("It's not a valid input\n");
}

int main(void)
{
		int test_h;
		int test_m;

		printf("Enter a 24-hour time: ");
		scanf("%d:%d", &test_h, &test_m);
		conv_24_to_12(test_h, test_m);

		return 0;
}


