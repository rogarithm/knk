#include <stdio.h>

int main(void)
{
	return 0;
}


(a) printf("%c", '\n');
-> character type newline character also functions as special character.
(b) printf("%c is type mismatch. But it's only one character of array"
			"(except null character). Is this problem?", "\n");
-> the character is not printed properly.
(c) printf("%s illegal. type mismatch", '\n');
-> segmentation fault: 11
(d) printf("%s prints newline, so this sentence should be printed on the next line.", "\n");
-> correct
(e) printf('\n'); //illegal. input type mismatch
-> segmentation fault: 11
(f) printf("\n"); //legal.
-> correct
(g) putchar('\n'); //legal.
-> correct
(h) putchar("\n"); //illegal.
-> correct
(i) puts('\n'); //illegal.
-> segmentation fault: 11
(j) puts("\n"); //legal.
-> correct. As the default behavior is to put additional newline, whole newline char is 2.
(k) puts(""); //legal.
-> correct. As the default behavior is to put additional newline, whole newline char is 1.
