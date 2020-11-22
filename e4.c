#include <stdio.h>

int main(void)
{
		/*
	printf("exercise 1\n");
	int i;
	int j;
	int k;

	i = 5; j = 3;
	printf("(a): %d %d should be 1 and 2 each.\n", i / j, i % j);

	i = 2; j = 3;
	printf("(b): %d should be 0\n", (i + 10) % j);

	i = 7; j = 8; k = 9;
	printf("(c): %d should be 1, as multiplicative operators are left associative.\n", (i + 10) % k / j);

	i = 1; j = 2; k = 3;
	printf("(d): %d should be 0, same reason as (c).\n", (i + 5) % (j + 2) / k);

	printf("exercise 2\n");
	printf("solve after first reading\n");

	printf("exercise 3. the value of each of the following exps in C89\n");
	printf("check for the condition to compile with C89 statndard");	

	printf("exercise 4. the value of each of the following exps in C99\n");

	i = 8; j = 5;
	printf("(a): %d should be 1\n", i / j);
	
	i = -8; j = 5;
	printf("(b): %d should be -1\n", i / j);

	i = 8; j = -5;
	printf("(c): %d should be -1\n", i / j);

	i = -8; j = -5;
	printf("(d): %d should be 1\n", i / j);

	printf("exercise 5. the value of each of the following exps in C89\n");
	printf("check for the condition to compile with C89 statndard");	

	printf("exercise 6. the value of each of the following exps in C89\n");

	i = 8; j = 5;
	printf("(a): %d should be 3\n", i % j);
	
	i = -8; j = 5;
	printf("(b): %d should be -3\n", i % j);

	i = 8; j = -5;
	printf("(c): %d should be 3\n", i % j);

	i = -8; j = -5;
	printf("(d): %d should be -3\n", i % j);

	printf("exercise 7\n");
	printf("(have thought to be improved) algorithm behaves differently when the total is 10.\n");
	printf("original one returns 0, but pseudo improved one returns 10, which is not we want.\n");

	printf("exercise 8\n");
	printf("No. It'll behave differently if the total has 10, 20, 30, ... value.\n");

	printf("exercise 9. show the output produced by each of the following program fragments.\n");

	i = 7; j = 8;
	i *= j + 1;
	printf("(a): %d & %d should be 57 & 8 each.\n", i, j);
	
	i = j = k = 1;
	i += j += k;
	printf("(b): %d & %d & %d should be 3, 2, 1.\n", i, j, k);

	i = 1; j = 2; k = 3;
	i -= j -= k;
	printf("(c): %d & %d & %d should be 0, -1, 3.\n", i, j, k);

	i = 2; j = 1; k = 0;
	i *= j *= k;
	printf("(d): %d & %d & %d should be 0, 0, 0.\n", i, j, k);

	printf("exercise 10. show the output produced by each of the following program fragments.\n");

	i = 6;
	j = i += i;
	printf("(a): %d & %d should be 12 & 12 each.\n", i, j);
	
	i = 5;
	j = (i -= 2) + 1;
	printf("(b): %d & %d should be 3, 4.\n", i, j);

	i = 7;
	j = 6 + (i = 2.5);
	printf("(c): %d & %d should be 2.5, 8.5.\n", i, j);

	i = 2; j = 1; k = 0;
	i *= j *= k;
	printf("(d): %d & %d & %d should be 0, 0, 0.\n", i, j, k);

	printf("exercise 12. Show the output produced by each of the following program fragments. \n"
					"Assume that i and j are int variables. \n");
	i = 5;
	j = ++i * 3 - 2;
	printf("(a): %d %d should be 6 and 16\n", i, j);

	i = 5;
	j = 3 - 2 * i++;
	printf("(b): %d %d should be 6 and -7\n", i, j);

	i = 7;
	j = 3 * i-- + 2;
	printf("(c): %d %d should be 6 and 23\n", i, j);

	i = 7;
	j = 3 + --i * 2;
	printf("(d): %d %d should be 6 and 15\n", i, j);
*/
	printf("exercise 13. Only one of the expressions ++i and i++ is exactly the same\n"
					"as (i += 1); which is it? Justify your answer.\n");
  // 이걸 테스트해볼 수 있나? 나중에 생각해보기

	printf("exercise 14. Supply parentheses to show how a C compiler would interpret each of the following expressions.\n");

	printf("(a): a * b - c * d + e would be (a * b) - (c * d) + e\n");
	printf("(b): a / b % c / d would be ((a / b) % c) / d\n");
	printf("(c): - a - b + c - + d would be ((((-a) - b) + c) - (+d))\n");
	printf("(d): a * - b / c - d would be ((a * (-b)) / c) - d\n");

	printf("exercise 15. Give the values of i and j after each of the following expression statements\n"
					"has been executed. (Assume that i has the value 1 initially and j has the value 2.)\n");

	printf("(a): i += j; then i would be 3, j would be 2.");
	printf("(b): i--; then i would be 0, j would be 2.");
	printf("(c): i * j / i; then i and j would be unchanged.");
	printf("(d): i % ++j; then i would be 1, j would be 3.");

	return (0);
}
