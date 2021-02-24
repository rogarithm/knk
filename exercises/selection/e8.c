#include <stdio.h>
#include <stdbool.h>

int main(void)
{
	int teenager, age;

	teenager = 13 <= age && age <= 19 ? true : false;

	age = 1;
	printf("age is 1: %d", teenager = 13 <= age && age <= 19 ? true : false);
	printf("\n");
	printf("ans: false");
	printf("\n");

	age = 15;
	printf("age is 15: %d", teenager = 13 <= age && age <= 19 ? true : false);
	printf("\n");
	printf("ans: true");
	printf("\n");

	age = 20;
	printf("age is 20: %d", teenager = 13 <= age && age <= 19 ? true : false);
	printf("\n");
	printf("ans: false");
	printf("\n");

	return 0;
}
