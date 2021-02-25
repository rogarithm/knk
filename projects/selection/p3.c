float rival_commission(int number_of_shares);
float original_commission(int number_of_shares, float price_per_share);

#include <stdio.h>

int main(void)
{
	int number_of_shares;
	float price_per_share, commission;

	printf("Enter number of shares: ");
	scanf("%d", &number_of_shares);
	printf("Enter price per share: ");
	scanf("%f", &price_per_share);


	printf("Original broker's commission: $%.2f", original_commission(number_of_shares, price_per_share));
	printf("\n");
	printf("Rival broker's commission: $%.2f", rival_commission(number_of_shares));
	printf("\n");

	return 0;
}

float original_commission(int number_of_shares, float price_per_share)
{
	float commission, value;

	value = number_of_shares * price_per_share;

  if (value < 2500.00f)
    commission = 30.00f + .017f * value; 
  else if (value < 6250.00f)
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

	return commission;
}

float rival_commission(int number_of_shares)
{
	float commission;

	if (number_of_shares < 2000)
		commission = 33 + (number_of_shares * 0.3f);
	else
		commission = 33 + (number_of_shares * 0.2f);

	return commission;
}
