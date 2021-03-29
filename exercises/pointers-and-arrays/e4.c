// rewrite the ◊c{make_empty}, ◊c{is_empty}, and ◊c{is_full} functions of Section 10.2
// to use the pointer variable ◊c{top_ptr} instead of the integer variable ◊c{top}.

#include <stdio.h>
#include <stdbool.h>

#define STACK_SIZE 100

int contents[STACK_SIZE];
int *top_ptr = contents[0];

int main(void)
{
	push(2);
	push(3);
	pop();
	make_empty();
	printf("%d\n", *top_ptr);
}

/* pointer version */

void make_empty(void)
{
	top_ptr = contents; // but what if contents[0] has a value?
}

bool is_empty(void) // check if the object top_ptr currently points to is not filled.
{
	return *top_ptr == 0;
}

bool is_full(void) // check if top_ptr's index is its maximum
{
	return top_ptr == STACK_SIZE - 1;
}

void push(int i)
{
	if (is_full())
		printf("stack_overflow()");
	else
		*top_ptr++ = i;
}

int pop(void)
{
	if (is_empty())
		printf("stack_underflow()");
	else
		return *--top_ptr;
}
/*
** original version 
**
** -> ext var
** int contents[STACK_SIZE];
** int top = 0;
** 
** void make_empty(void)
** {
** 	top = 0;
** }
** 
** bool is_empty(void)
** {
** 	return top == 0;
** }
** 
** bool is_full(void)
** {
** 	return top == STACK_SIZE;
** }
** 
** void push(int i)
** {
** 	if (is_full())
** 		stack_overflow();
** 	else
** 		contents[top++] = i;
** }
** 
** int pop(void)
** {
** 	if (is_empty())
** 		stack_underflow();
** 	else
** 		return contents[--top];
** }
*/
