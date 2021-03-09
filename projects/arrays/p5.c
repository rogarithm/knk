/* interest.c (Chapter 8, page 169) */
/* Prints a table of compound interest */

// compounds interest monthly instead of annually.
#include <stdio.h>

#define NUM_RATES ((int) (sizeof(value) / sizeof(value[0])))
#define INITIAL_BALANCE 100.00

int main(void)
{
  int i, low_rate, num_years, year;
  double value[5];

  printf("Enter interest rate: ");
  scanf("%d", &low_rate);
  printf("Enter number of years: ");
  scanf("%d", &num_years);

  printf("\nYears");
  for (i = 0; i < NUM_RATES; i++) {
    printf("%6d%%", low_rate + i);
    value[i] = INITIAL_BALANCE;
  }
  printf("\n");

  for (year = 1; year <= num_years; year++) {
    printf("%3d    ", year);
    for (i = 0; i < NUM_RATES; i++) {
			// this should be modified to compound monthly, not annually.
      value[i] += (low_rate + i) / 100.0 * value[i];
      printf("%7.2f", value[i]);
    }
    printf("\n");
  }

  return 0;
}

double monthly_rate = (double) low_rate / 12;

double monthly_compound (double value, double monthly_rate)
{
	for (i = 0; i < 12; i++)
		value += (monthly_rate + i) / 100.0 * value;
	return value;
}
