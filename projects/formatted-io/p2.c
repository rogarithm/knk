#include <stdio.h>

int main(void)
{
		int item_number;
		float unit_price;
		int year;
		int month;
		int day;

		printf("Enter item number: ");
		scanf("%d", &item_number);
		// printf("\n");
		printf("Enter unit price: ");
		scanf("%f", &unit_price);
		printf("Enter purchase date (mm/dd/yyyy): ");
		scanf("%d/%d/%d", &month, &day, &year);
		// printf("\n");

		printf("Item\t\tUnit\t\tPurchase");
		printf("\t\t\tPrice\t\tDate");
		printf("%d\t$%f\t%d/%d/%d", item_number, unit_price, month, day, year);

		return 0;
}
