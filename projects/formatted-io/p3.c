#include <stdio.h>

int main(void)
{
		int gs1_prefix, group_id, publisher_code, item_num, check_digit;

		printf("Enter ISBN: ");
		scanf("%d - %d - %d - %d - %d", &gs1_prefix, &group_id, &publisher_code, &item_num, &check_digit);

		printf("GS1 prefix: %d", gs1_prefix);
		printf("\n");

		printf("Group identifier: %d", group_id);
		printf("\n");

		printf("Publisher code: %d", publisher_code);
		printf("\n");

		printf("Item number: %d", item_num);
		printf("\n");

		printf("Check digit: %d", check_digit);
		printf("\n");

		return 0;
}
