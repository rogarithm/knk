#include <stdio.h>

int main(void)
{
		float number_of_shares, price_per_share;
		float commission, value;

		printf("Enter number of shares: ");
		scanf("%f", &n);
		printf("Enter price per share: ");
		scanf("%f", &p);

		value = &n * &p;

		if (
		if (value < 2500.00f)
				commission = 30.00f + .017f * value;
		else if (value < 6500.00f)
				commission = 56.00f + .0066f * value;
		else if (value < 20000.00f)
				commission = 76.00f + .0034f * value;
		else if (value < 50000.00f)
				commission = 100.00f + .0022f * value;
		else if (value < 500000.00f)
				commission = 155.00f + .0011f * value;
		else
				commission = 255.00f + .0009f * value;

		if (commission < 39.00f)
				commission = 39.00f;

		printf("Commission: $%.2f\n", commission);

		return 0;
}
