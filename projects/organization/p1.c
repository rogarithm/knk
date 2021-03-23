// Modify the stack implementation to store characters.
#include <stdbool.h>
#include <stdio.h>

#define STACK_SIZE 100

void make_empty(void);
bool is_empty(void);
bool is_full(void);
void push(char i);
int pop(void);

/* external variables */
char contents[STACK_SIZE];
int top = 0;

int main(void)
{
	char c, popped;
	int i = 0;

	printf("Enter a series of parentheses and/or braces: ");
	while ((c = getchar()) != '\n' && c != EOF)
	{
		if (c == '(' || c == '{')
			push(c);
		else if (c == ')' || c == '}')
		{
			popped = pop();
			if (((popped == '(') && (c == ')')) ||
					((popped == '{') && (c == '}')))
				; // would this be a problem?
			else // if pop() isn't match
			{
				printf("Parentheses/braces are not nested properly\n");
				return 0;
			}
		}
	}

	if ((c = getchar()) == '\n')
	{
		if (is_empty() == true)
			printf("Parentheses/braces are nested properly\n");
		else
			printf("Parentheses/braces are not nested properly\n");
	}

	return 0;
}

void make_empty(void)
{
	top = 0;
}

bool is_empty(void)
{
	return top == 0;
}

bool is_full(void)
{
	return top == STACK_SIZE;
}

void push(char i)
{
	if (is_full())
		printf("stack_overflow()");
	else
		contents[top++] = i;
}

int pop(void)
{
	if (is_empty())
		printf("stack_underflow()");
	else
		return contents[--top];
}
