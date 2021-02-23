#include <stdio.h>

int main(void)
{
		int where, first, second;

		printf("Enter phone number [(xxx) xxx-xxxx]: ");
		scanf("(%d) %d - %d", &where, &first, &second);

		printf("You entered %d.%d.%d", where, first, second);
		printf("\n");

		return 0;
}
