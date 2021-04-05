#include <stdio.h>

float twice(float x);

/*
** DISP(f,x): expands into a call of printf that displays the value of the function f
**             when called with argument x.
** example: DISP(sqrt,3.0); should expand into printf("sqrt (%g) = %g\n", 3.0, sqrt(3.0));
*/
#define DISP(f,x) (printf ("f (%g) = %g\n", x, f(x)))

int main(void)
{
	DISP(twice,2.2);
	return 0;
}

float twice(float x)
{
	return 2 * x;
}
