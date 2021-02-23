#include <stdio.h>

int main(void)
{
	printf("exercise 14. Supply parentheses to show how a C compiler would interpret each of the following expressions.\n");

	printf("(a): a * b - c * d + e would be (a * b) - (c * d) + e\n");
	printf("(b): a / b % c / d would be ((a / b) % c) / d\n");
	printf("(c): - a - b + c - + d would be ((((-a) - b) + c) - (+d))\n");
	printf("(d): a * - b / c - d would be ((a * (-b)) / c) - d\n");

	return (0);
}
