#include <stdio.h>

int main(void)
{
		int item_number;
		printf("Enter item number: ");
		scanf("%d", &item_number);

		float unit_price;
		printf("Enter unit price: ");
		scanf("%f", &unit_price);

		int year, month, day;
		printf("Enter purchase date (mm/dd/yyyy): ");
		scanf("%d / %d / %d", &month, &day, &year);

		printf("Item\t\tUnit\t\tPurchase");
		printf("\n");
		printf("\t\tPrice\t\tDate");
		printf("\n");
		printf("%-d \t\t $%.2f \t %.2d/%.2d/%.4d", item_number, unit_price, month, day, year);
		printf("\n");

		return 0;
}
