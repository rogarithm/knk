#include <stdio.h>

int main(void)
{
	printf("operator precedence: logical not > arithmetic (multi > add & sub)) >\n");
	printf("relational > equality > logical and > logical or > assignment\n\n");
	int i; int j; int k;

	printf("exercise 1. show the output produced by each, assuming that i, j, and k are int variables.\n\n");
	i = 2; j = 3; k = i * j == 6;
	printf("the precedence order is *, ==, =, from high to low.\n");
	printf("thus, i * j computes to 6, checked with 6 for equality which is true,\n");
	printf("and the result gets assigned to k. So,\n");
	printf("(a): %d should be 1.\n", k);
	i = 5; j = 10; k = 1;
	printf("< has high precedence than >. So,\n");
	printf("(b): %d should be 1.\n", k > i < j);
	i = 3; j = 2; k = 1;
	printf("relational ops have higher precedence than equality ops. So,\n");
	printf("(c): %d should be 1.\n", i < j == j < k);
	i = 3; j = 4; k = 5;
	printf("(d): %d should be 0.\n\n", i % j + i < k);

	printf("exercise 2. show the output produced by each, assuming that i, j, and k are int variables.\n");
	i = 10; j = 5;
	printf("(a): %d should be 1.\n", (!i) < j);
	i = 2; j = 1;
	printf("(b): %d should be 1, as !i is 0, !!i is 1, and !j is 0.\n", (!!i) + (!j));
	i = 5; j = 0; k = -5;
	printf("(c): %d should be 1, as true && false gives false, and fale || true gives true.\n", (i && j) || k);
	i = 1; j = 2; k = 3;
	printf("(d): %d should be 1, as true || true is ture.\n\n", i < j || k);

	printf("exercise 7. When i has the value 17,\n");
	i = 17;
	printf("%d should be 17\n", (i >= 0 ? i : -i));
	i = -17;
	printf("and %d should be 17 when i is -17.\n\n", (i >= 0 ? i : -i));

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
}
