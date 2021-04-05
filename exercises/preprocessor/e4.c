#include <stdio.h>

#define DEBUG 0
#define AVG(x,y) (((x)+(y))/2)
#define AREA(x,y) ((x)*(y))

int main(void)
{
#if DEBUG
// #define AVG(x,y) (x+y)/2
// #define AREA(x,y) (x)*(y)
	printf("When AVG(x,y) macro is defined as (x+y)/2, a problem occurs when\n"
			"3*AVG(1,2). Without wrapping parentheses, /2 of AVG is computed\n"
			"later than * operation, giving 3*3 / 2 = %d which is expected to be\n"
			"3 * (3 / 2) -> 3 * 1 -> 3\n", 3*AVG(1,2));
	printf("When AREA(x,y) is defined as (x)*(y), a problem occurs when\n"
			"4/AREA(2,2). Our intention is 4/4=1, but unwrapped macro twists the\n"
			"expression's compute order, making 4/2 * 2 = %d.\n", 4/AREA(2,2));
#endif

	printf("%d == 3\n", 3*AVG(1,2));
	printf("%d == 1\n", 4/AREA(2,2));

	return 0;
}
