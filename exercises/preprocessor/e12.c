#include <stdio.h>

#define M 10

int main(void)
{
#if M
	putchar('a');
#endif
#ifdef M
	putchar('b');
#endif
#ifndef M /* will fail */
	putchar('c');
#endif
#if defined(M)
	putchar('d');
#endif
#if !defined(M) /* will fail */
	putchar('e');
#endif

	return 0;
}
