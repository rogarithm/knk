#include <stdio.h>

int main(void)
{
		int teenager;
		int age;
		int true;
		int false;

		true = 1;
		false = 0;
		age = 0;
		if ((13 <= age) && (age <= 19))
				teenager = true;
		else
				teenager = false;
		printf("I'm not teenager yet(%d), i'm %d years old\n", teenager, age);

		age = 15;
		if ((13 <= age) && (age <= 19))
				teenager = true;
		else
				teenager = false;
		printf("I'm teenager(%d), i'm %d years old\n", teenager, age);

		age = 30;
		if ((13 <= age) && (age <= 19))
				teenager = true;
		else
				teenager = false;
		printf("I'm not teenager anymore(%d), i'm %d years old\n", teenager, age);

		return (0);
}
