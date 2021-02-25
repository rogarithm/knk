#include <stdio.h>

int main(void)
{
		/*
		a program that prompts the user to enter two dates and then indicates which date comes earlier on the calendar;
		*/

		int year_1, year_2, month_1, month_2, day_1, day_2;
		int conv_day_1, conv_day_2;
		int first_is_before;

		printf("Enter first date (mm/dd/yy): ");
		scanf("%d / %d / %d", &month_1, &day_1, &year_1);
		printf("Enter second date (mm/dd/yy): ");
		scanf("%d / %d / %d", &month_2, &day_2, &year_2);

		conv_day_1 = (year_1 * 365 + month_1 * 30 + day_1);
		conv_day_2 = (year_2 * 365 + month_2 * 30 + day_2);

		first_is_before = conv_day_1 <= conv_day_2;

		if (first_is_before)
				printf("%d/%d/%.2d is earlier than %d/%d/%.2d", month_1, day_1, year_1, month_2, day_2, year_2);
		else
				printf("%d/%d/%.2d is earlier than %d/%d/%.2d", month_2, day_2, year_2, month_1, day_1, year_1);
		printf("\n");

		return 0;
}
