#include <stdio.h>

int main(void)
{
		/*
		printf("exercise 1. what output do the following calls of printf produce?");

		printf("(a): %6d, %4d should print '    86', '1040'", 86, 1040);
		printf("(b): %12.5e should print 0.30253e+4", 30.253);
		printf("(c): %.4f should print 83.1620", 83.162);
		printf("(d): %-6.2g should print ?", .0000009979);

		printf("exercise 2. write calls of printf that display a float variable x in the following formats.");

		printf("(a): '%-8.1e'");
		printf("(b): '%10.6e'");
		printf("(c): '%-8.3f'");
		printf("(d): '%6f'");

		printf("exercise 3. for each of the following pairs of scanf format strings, indicate whether or not the two strings are equivalent. If they're not, show how they can be distinguished.");
		*/
		/*
		//(a)
		int a, b;
		printf("enter integer: ");
		scanf("%d", &a);
		printf("assigned value is %d\n", a);

		printf("enter integer, but white space before: ");
		scanf(" %d", &b);
		printf("assigned value is %d\n", b);
		*/

		/*
		//(b)
		int a, b, c;
		printf("enter integer in this format 'a-b-c': ");
		scanf("%d-%d-%d", &a, &b, &c);
		printf("assigned value is %d & %d & %d each.\n", a, b, c);

		a = 0; b = 0; c = 0; //initialize variables
		printf("enter integer like above, but white space before each elements: ");
		scanf("%d -%d -%d", &a, &b, &c);
		printf("assigned value is %d & %d & %d each.\n", a, b, c);
		*/
		float x;
		printf("enter float number:");
		scanf("%f", &x);
		printf("assigned value is %f\n", x);
		
		x = 0;
		printf("enter float number plus white space:");
		scanf("%f ", &x);
		printf("assigned value is %f", x);
		/*
		//(d)
		float x, y, z, a;
		printf("f,f\n");
		scanf("%f,%f", &x, &y);
		printf("%f, %f", x, y);

		printf("f, f\n");
		scanf("%f, %f", &z, &a);
		printf("%f, %f", z, a);
		*/
		return (0);
}

		
