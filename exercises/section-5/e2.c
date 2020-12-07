#include <stdio.h>

int main(void)
{
	printf("exercise 2. show the output produced by each, assuming that i, j, and k are int variables.\n");
	i = 10; j = 5;
	printf("(a): %d should be 1.\n", (!i) < j);
	i = 2; j = 1;
	printf("(b): %d should be 1, as !i is 0, !!i is 1, and !j is 0.\n", (!!i) + (!j));
	i = 5; j = 0; k = -5;
	printf("(c): %d should be 1, as true && false gives false, and fale || true gives true.\n", (i && j) || k);
	i = 1; j = 2; k = 3;
	printf("(d): %d should be 1, as true || true is ture.\n\n", i < j || k);

	return (0);
}
