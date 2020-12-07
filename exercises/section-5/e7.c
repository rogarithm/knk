#include <stdio.h>

int main(void)
{
	printf("exercise 7. When i has the value 17,\n");
	i = 17;
	printf("%d should be 17\n", (i >= 0 ? i : -i));
	i = -17;
	printf("and %d should be 17 when i is -17.\n\n", (i >= 0 ? i : -i));

	return (0);
}
