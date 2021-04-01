// reads a message, then prints the reversal of the message:
#include <stdio.h>

#define N 50

// int *read_line(int *msg, int len);
// void reverse_msg(int *msg, int len);

int main(void)
{
	int ch, msg[N], *p;

	printf("Enter a message: ");

	p = msg;
	while ((ch = getchar()) != '\n')
	{
		*p++ = ch;
	}
	// <- something should be here to remove garbage. That is...
	p--; // last position should be undo, because it has no content.

	printf("Reversal is: ");

	while (p >= msg)
		putchar(*p--);
	putchar('\n');

	return 0;
}

// int *read_line(int *msg, int len)
// {
// 	int ch, i = 0;
// 
// 	while ((ch = getchar()) != '\n')
// 	{
// 		msg[i++] = ch;
// 	}
// 	// is the newline character stored?
// 
// 	return msg;
// }

// void reverse_msg(int *msg, int len)
// {
// 	int i = 0;
// 	while (msg[i] != '\n')
// 		i++;
// 
// 	while (i >= 0)
// 	{
// 		printf("%c", msg[i]);
// 		i--;
// 	}
// 
// 	return ;
// }
