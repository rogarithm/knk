/*
int a[];
int *p;

p = a;

which of the following expressions are illegal because of mismatched types? Of the remaining expressions, which are true (have a nonzero value)?

(a) p == a[0] pointer == int -> illegal
(b) p == &a[0] pointer == address -> legal
(c) *p == a[0] int == int -> legal
(d) p[0] == a[0] int == int -> 
*/
#include <stdio.h>

int main(void)
{
	int a[] = {2};
	int *p;

	p = a;

  printf("%d\n", p == a[0]); // type mismatch
	printf("%d\n", p == &a[0]); // legal, 1
	printf("%d\n", *p == a[0]); // legal, 1
	printf("%d\n", p[0] == a[0]); // legal, 1
}
