#lang pollen

◊title{program organization}

Discusses issues when a program contains more than one function. discuss local/external variables, blocks (compound statements containing declarations), scope rules, and how to organize the big program.

◊section{local variables}

A variable declared in the body of a function definition is said to be local to the function. Local variables have automatic storage duration (or extent) and block scope.

When you declare a variable, it requires a memory to be allocated to store a value in the variable. The "automatic" means that the allocation process is automatically done. When the function wrapping a local variable is called, a memory for the variable is allocated. When the function returns (that is, after its return value get printed in the main function), the memory is deallocated, and the return value isn't guaranteed to still have its old value.

A variable in a program has a boundary that it can be seen. This boundary is called the scope. A local variable has block scope: its boundary starts when the variable is declared, and ends when the function body containing the local variable ends.

◊bold{Static Local Variables}

When you append ◊code{static} before the type of a local variable to be declared, it causes the variable to have static storage duration. A variable with this property continue to have its value throughout the ◊uc{execution of the program}. Because it's local variable, its block scope property makes other functions not able to see the variable. But static local variable is useful when the function that has the variable in its body is to be called in the future.

◊?{Is using a local variable's value as return value different with the fact that the local variable isn't visible to other functions?}

◊bold{Parameters}

Parameters have the same properties as the local variables except parameters are initialized when a function is called.


◊section{external variables}

To use a return value of one function in another function, we can pass the return value as an argument to another function. We can also use external variables to get the same effect.

Unlike local variables, external variables have static storage duration, and have file scope. Its boundary is starts at the declaration of the variable, and ends at the end of the file, so that all functions in the file can use and modify the variable.

◊bold{Pros and Cons of External Variables}

In most case, it's better to communicate with parameters (use return value of a function as an argument of another function) than by sharing variables.

The more functions that uses external variables, the more binding between functions. As a result, modifying one function possibly affects other function, making it hard to maintenance or reuse the program.

◊section{blocks}

Block is a compound statement that contain declarations:

◊codeblock{{declarations statements}}

A variable declared in a block has automatic storage allocation. The variable can be seen only in the block. A variable declared in a block can be static duration by making it preceded by ◊code{static}. Using these properties, we can declare a variable inside a block for temporary use. Because its scope is restricted inside the block:

◊codeblock{
if (i > j) {
  int temp = i;
	i = j;
	j = temp;
}
}

◊?{are the swaped values retained outside the block?}

1. if the block is in the same function, yes. In the code below, the swapped value is stored outside the block.

int main(void)
{
	int i = 1, j = 0;

	if (i > j) {
		int temp = i;
		i = j;
		j = temp;
	}

	printf("i: %d\n", i);
	printf("j: %d\n", j);
	return 0;
}

2. If the block is in other function, yes. In the code below, the swapped value is stored and referenced outside the function containing the block.

#include <stdio.h>

int swap(int i, int j);

int main(void)
{
	int i = 1, j = 0;

	printf("j: %d\n", swap(i, j));
	return 0;
}

int swap(int i, int j)
{
	if (i > j) {
		int temp = i;
		i = j;
		j = temp;
	}

	return j;
}

◊?{Is there further cases? Or am I thinking it wrong?}

◊section{scope}

If you declare in a block an identifier that's already visible (that is, if there's a variable with the same name in the enclosing block or as an external variable), the new declaration that you've just declared temporarily "hides" the old one, and switch the meaning of the identifier with its (the new declaration's) meaning. The old identifier can give its meaning to the compiler again after the end of the "new identifier's" block.


◊section{organizing a C program}


