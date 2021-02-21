#include <stdio.h>

int main(void)
{
		printf("exercise 1. what output do the following calls of printf produce?");
		printf("\n");
		// ok.
		printf("(a): '%6d', '%4d'", 86, 1040);
		printf("\n");
		printf("as?: '    86', '1040'");
		printf("\n");
		// why?
		printf("(b): '%12.5e' ", 30.253);
		printf("\n");
		printf("as?: '0.30253e+02'");
		printf("\n");
		// ok.
		printf("(c): '%.4f' ", 83.162);
		printf("\n");
		printf("as?: '83.1620'");
		printf("\n");
		// why?
		printf("(d): '%-6.2g'", .0000009979);
		printf("\n");
		printf("as?: ?");
		printf("\n");
		/* given value is more than 6 of %-6.2g, which determines the maximum number to be printed. So the memory will be allocated according to the value, not from the "m" */

		return 0;
}
