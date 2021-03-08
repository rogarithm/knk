how to use a ◊uc{digit (in character form)} as a subscript

for example, letter A has 65 as its digit value, and letter a has 97 as its digit value. If we want a character form digit as a subscript, for uppercase:

int a[26];

a[digit - 97] = 0;

#include <stdio.h>

int main (void)
{
	int char_array[26];
	char ch;

	printf("%d", char_array[ch - 'a']);

	return 0;
}
