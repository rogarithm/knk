#include <stdio.h>

int main(void)
{
	printf("exercise 5. the value of each of the following exps in C89\n");

	int neg_8, neg_5;
	neg_8 = -8; neg_5 = -5;

	printf("(a). 8 %% 5 is %d", 8 % 5);
	printf("\n");
	printf("(b). -8 %% 5 is %d", neg_8 % 5);
	printf("\n");
	printf("(c). 8 %% -5 is %d", 8 % neg_5);
	printf("\n");
	printf("(d). -8 %% -5 is %d", neg_8 % neg_5);
	printf("\n");
	return 0;
}
