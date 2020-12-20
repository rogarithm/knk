#include <stdio.h>

int main(void)
{
		int month;
		int day;
		int year;

		printf("Enter a date (mm/dd/yyyy) : ");
		scanf("%d/%d/%d", &month, &day, &year);
		printf("You entered the date %d%d%d\n", year, month, day);

		return 0;
}
