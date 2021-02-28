#include <stdio.h>

// make it to sum a series of double values

int main(void)
{
	double n, sum = 0;

  printf("This program sums a series of doubles.\n");
  printf("Enter float-point values(0 to terminate): ");

  scanf("%le", &n);
  while (n != 0) {
    sum += n;
    scanf("%le", &n);
  }
  printf("The sum is: %le\n", sum);

  return 0;
}
