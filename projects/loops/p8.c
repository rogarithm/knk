#include <stdio.h>

int main(void)
{
	int month_num, start_day;

	printf("Enter number of days in month: ");
	scanf("%d", &month_num);
	printf("Enter starting day of the week (1=Sun, 7=Sat): ");
	scanf("%d", &start_day);

	int i = 1;
	while (i < start_day)
	{
		printf("   ");
		i++;
	}

	int day = 1;
	while (day <= month_num)
	{
		printf("%3d", day);
		if (i % 7 == 0) // newline should be inserted after print last day of the week
			printf("\n");
		day++;
		i++;
	}
	printf("\n");

	return 0;
}
