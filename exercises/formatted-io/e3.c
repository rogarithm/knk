#include <stdio.h>

int main(void)
{
		/*
		printf("exercise 3. for each of the following pairs of scanf format strings, indicate whether or not the two strings are equivalent. If they're not, show how they can be distinguished.");
		*/
		//(a)
		int a, b;
		printf("enter integer: ");
		scanf("%d", &a);
		printf("assigned value is %d\n", a);

		printf("enter integer, but white space before: ");
		scanf(" %d", &b);
		printf("assigned value is %d\n", b);
		
		//(b)
		int c, d, e;
		printf("enter integer in this format 'c-d-e': ");
		scanf("%d-%d-%d", &c, &d, &e);
		printf("assigned value is %d & %d & %d each.\n", c, d, e);

		int f = 0; int g = 0; int h = 0; //initialize variables
		printf("enter integer like above, but white space before each elements: ");
		scanf("%d -%d -%d", &f, &g, &h);
		printf("assigned value is %d & %d & %d each.\n", f, g, h);

		float x;
		printf("enter float number:");
		scanf("%f", &x);
		printf("assigned value is %f\n", x);
		
		float y = 0;
		printf("enter float number plus white space:");
		scanf("%f ", &y);
		printf("assigned value is %f", y);

		//(d)
		float i, j, k, l;
		printf("f,f\n");
		scanf("%f,%f", &i, &j);
		printf("%f, %f", i, j);

		printf("f, f\n");
		scanf("%f, %f", &k, &l);
		printf("%f, %f", k, l);

		return (0);
}
