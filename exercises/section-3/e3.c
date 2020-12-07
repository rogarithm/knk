#include <stdio.h>

int main(void)
{
		printf("exercise 3. for each of the following pairs of scanf format strings, indicate whether or not the two strings are equivalent. If they're not, show how they can be distinguished.");
		//(a)
		int a, b;
		printf("enter integer: ");
		scanf("%d", &a);
		printf("assigned value is %d\n", a);

		printf("enter integer, but white space before: ");
		scanf(" %d", &b);
		printf("assigned value is %d\n", b);
		
		//(b)
		int a, b, c;
		printf("enter integer in this format 'a-b-c': ");
		scanf("%d-%d-%d", &a, &b, &c);
		printf("assigned value is %d & %d & %d each.\n", a, b, c);

		a = 0; b = 0; c = 0; //initialize variables
		printf("enter integer like above, but white space before each elements: ");
		scanf("%d -%d -%d", &a, &b, &c);
		printf("assigned value is %d & %d & %d each.\n", a, b, c);

		float x;
		printf("enter float number:");
		scanf("%f", &x);
		printf("assigned value is %f\n", x);
		
		x = 0;
		printf("enter float number plus white space:");
		scanf("%f ", &x);
		printf("assigned value is %f", x);

		//(d)
		float x, y, z, a;
		printf("f,f\n");
		scanf("%f,%f", &x, &y);
		printf("%f, %f", x, y);

		printf("f, f\n");
		scanf("%f, %f", &z, &a);
		printf("%f, %f", z, a);

		return (0);
}
