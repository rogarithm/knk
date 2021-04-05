#include <stdio.h>

int power(int x, int y);

/*
** DISP(f,x): expands into a call of printf that displays the value of the function f
**             when called with argument x.
** example: DISP(sqrt,3.0); should expand into printf("sqrt (%g) = %g\n", 3.0, sqrt(3.0));
*/
#define DISP2(f,x,y) (printf ("f (%d) (%d) = %d\n", x, y, f(x, y)))

int main(void)
{
	DISP2(power, 2, 3);

	return 0;
}

int power(int x, int y)
{
	int sum = 1;

	while (y-- > 0)
	{
		sum *= x;
	}

	return sum;
}
