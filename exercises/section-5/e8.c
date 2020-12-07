#include <stdio.h>

int main(void)
{
	printf("exercise 8. Simplify following if statement.\n");
	int teenager; int age;

	teenager = 15; age = 0;
	teenager = (13 <= age) && (age <= 19);
	printf("I'm not teenager yet(%d), that is, i'm %d years old\n", teenager, age);
	age = 15;
	teenager = (13 <= age) && (age <= 19);
	printf("I'm teenager(%d), that is, i'm %d years old\n", teenager, age);
	age = 30;
	teenager = (13 <= age) && (age <= 19);
	printf("I'm not teenager anymore(%d), that is, i'm %d years old\n", teenager, age);

	return (0);
}
