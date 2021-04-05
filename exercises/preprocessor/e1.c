#include <stdio.h>

#define CUBE(x) ((x) * (x) * (x))
#define MOD4(x) ((x)%4)
#define BELOW_100(x,y) ((x)*(y)<100 ? 1 : 0)

int main(void)
{
	printf("cube of 3: %d\n", CUBE(3));
	printf("remainder of 5 divided by 4: %d\n", MOD4(5));
	printf("99 is (%d) below 100, 101 isn't (%d) below 100\n", BELOW_100(1,99), BELOW_100(101,1));

	return 0;
}
