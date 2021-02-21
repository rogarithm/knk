#include <stdio.h>

int main(void)
{
		printf("exercise 1. what output do the following calls of printf produce?");

		printf("(a): %6d, %4d should print '    86', '1040'", 86, 1040);
		printf("(b): %12.5e should print 0.30253e+4", 30.253);
		printf("(c): %.4f should print 83.1620", 83.162);
		printf("(d): %-6.2g should print ?", .0000009979);
		/* given value is more than 6, which determines the maximum number to be printed. So the memory will be allocated according to the value, not from the "m" */

		return 0;
}
