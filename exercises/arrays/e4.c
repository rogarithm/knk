#include <stdbool.h>
#include <stdio.h>

int main (void)
{
	bool weekend[7] = {[0] = true, [6] = true};

	printf("weekend[0]: %d\n", weekend[0]);
	printf("weekend[1]: %d\n", weekend[1]);
	printf("weekend[2]: %d\n", weekend[2]);
	printf("weekend[3]: %d\n", weekend[3]);
	printf("weekend[4]: %d\n", weekend[4]);
	printf("weekend[5]: %d\n", weekend[5]);
	printf("weekend[6]: %d\n", weekend[6]);
	
	return 0;
}
