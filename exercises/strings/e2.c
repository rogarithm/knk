#include <stdio.h>

int main(void)
{
	char *p = "abc";

	putchar(*p); // prints the first character of the string p.
	puts(p); // prints the string p and additional newline character.
}

p is an array of character, and *p is a character.
putchar's input type is a character, puts' input type is a string.
putchar(p); type mismatch. 
putchar(*p); legal.
puts(p); legal.
puts(*p); type mismatch.
