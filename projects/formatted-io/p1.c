#include <stdio.h>

int main(void)
{
		int month;
		int day;
		int year;

		printf("Enter a date in the form mm/dd/yyyy: ");
		scanf("%d/%d/%d", &month, &day, &year);
		printf("You entered the date %.4d%.2d%.2d\n", year, month, day);

		return 0;
}
