#include <stdio.h>

void wind_speed(int n)
{
		if ((0 <= n) && (n < 1))
				printf("Calm\n");
		if ((1 <= n) && (n <= 3))
				printf("Light air\n");
		if ((4 <= n) && (n <= 27))
				printf("Breeze\n");
		if ((28 <= n) && (n <= 47))
				printf("Gale\n");
		if ((48 <= n) && (n <= 63))
				printf("Strom\n");
		if (63 < n)
				printf("Hurricane\n");
		return ;
}

int main(void)
{
		int test_speed;

		printf("Enter a wind speed (in knots): ");
		scanf("%d", &test_speed);
		wind_speed(test_speed);

		return 0;
}
