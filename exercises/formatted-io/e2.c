#include <stdio.h>

int main(void)
{
	float n;

	n = 9;
	printf("exercise 2. write calls of printf that display a float variable x in the following formats.");
	printf("\n");

	printf("(a): '%-8.1e'", n);
	printf("\n");
	printf("as?: '9.0e+00 '");
	printf("\n");
	// the condition needs more space than specified
	printf("(b): '%10.6e'", n);
	printf("\n");
	printf("as?: '9.000000e+00'");
	printf("\n");
	printf("(c): '%-8.3f'", n);
	printf("\n");
	printf("as?: '9.000   '");
	printf("\n");
	// defualt representation for f?
	printf("(d): '%6f'", n);
	printf("\n");
	printf("as?: '     9'");
	printf("\n");

	return (0);
}
