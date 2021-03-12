#lang pollen

◊title{functions}

◊section{}

Why we need function? Function is a way of minimizing repetitive work we encounter while we're programming. Using function makes us avoid duplicating code. Also function can be reused.

Unlike the definition of function in mathmetics, some functions in C doesn't have arguments, and some doesn't compute value. In C, both are called function.

◊section{defining and calling functions}

◊bold{Computing Averages}

◊codeblock{
double avrg(double a, double b)
{
	return (a + b) / 2;
}
}

◊uc{Unclear about relationship among variable, parameter, argument.} A function parameter is essentially a variable whose initial value will be supplied later, when the function is called. ◊uc{Then a function argument is a value to initialize?} An argument can be a variable, but also can be any expression of a compatible type with parameter. ◊uc{I guess the difference between expression and variable is that the former is the value, whereas the later has the value.}

◊em{defining function}

We must specify a type of data a function returns and a type of data supplied to the function (this input data is called parameter). A function parameter is a ◊var that will be initialized with the corresponding argument of the function later when the function is called.

After specifying data, the body comes next, which will do the purpose of the function: computing a value, or make a side effect, etc.. The body is enclosed by braces.

◊em{calling function}

To call a function, we write the function name, followed by arguments enclosed by parentheses. By calling a function, we can give values to initialize function parameter. ◊uc{An argument of a function can be a ◊|var| or an ◊|expr|, or just a value. Whatever we choose, these will finally be converted to the value that will be given to the function}.

By default, program does not save its return value. If we need the value, assign in a ◊|var|.


◊bold{Printing a Countdown}

◊codeblock{
void print_count(int n)
{
	printf("T minus %d and counting\n", n);
}
}

A function without return value can be marked by specifying its return type ◊t{void}.


◊bold{Printing a Pun (Revisited)}

◊codeblock{
void print_pun(void)
{
	printf("To C, or not to C: that is the question.\n");
}
}

We can make a function that has no parameter. Specify ◊t{void} type for function arguments. Function call must be the function name followed by the parentheses, with no arguments inside.


◊bold{Function Definitions}

◊form{
return-type function-name ( parameters )
{
	declarations
	statements
}
}

There's one restriction for function's return type. It cannot be an array.

Each parameters are preceded by a specification of its type.

◊uc{what's the definition of declaration and statement?}

◊bold{Function Calls}

◊form{
function-name ( list-of-arguments )
}

A void function is always followed by a semicolon, but a non-void function isn't.

Because a ◊t{void} function returns nothing, the ◊t{void} function call will not be used as an operand in other ◊|expr|s.

◊uc{For a non-◊t{void} function,} the semicolon-ended function call is an ◊xref[expressions]{expression statement}. As an alternative, ◊xref[basic-types]{casting} ◊code{(void)} can deliver programmer's intention to ignore the result value of the function.


◊bold{Testing Whether a Number Is Prime}

◊codeblock{
bool is_prime(int n)
{
  int divisor;

  if (n <= 1)
	...
	if (n % divisor == 0)
	...
  return true;
}

int main(void)
{
  int n;

  if (is_prime(n))
	...
  else
	...
  return 0;
}
}

Using the same variable name in two different functions doesn't affect each variable's value. That is, assigning a new value to a ◊var in one function doesn't change the value of the other ◊var in another function.

◊section{function declarations}

Putting a function definition after a program that uses the function does not raise an error. But it makes the compiler anticipate its type and number of argument(s), also its return type. If there's no clue, the compiler creates an implicit declaration of the function by assigning its output type as ◊t{int}. If ◊t{int} isn't the type of the function definition, its evaluation will raise an error.

Putting a function definition before the program isn't a complete solution, because there are situations where we can't put a definition before its use, especially when a function is recursive (where functions call each other). So we need to declare (or make a prototype of) a function before calling it.

◊form{
return-type function-name ( parameters );
}

Declaring a function before its function call lets the compiler know the function's return type and arguments' type. ◊consider-delete{Function declarations are known as function prototypes to distinguish them from the older style of function declaration where the parentheses are left empty.}

◊?{Is containing input type always necessary for prototype, function declaration, and function definition?}

◊section{arguments}

Parameters appear in function definition. They'll be initialized with arguments' values from function call.

Arguments are passed by value. That is, each argument is passed (assigned to the corresponding parameter) after each argument's ◊|expr| get computed to value. Parameters can be modified, but since the parameters contain a copy of the argument's value, the modification of parameter doesn't modify corresponding argument. That is, the modified value of parameter cannot be remained as modified out of the body of the function.

For example, if we apply decrese ◊|op|, the ◊val from argument will not be changed:

◊codeblock{
int power(int x, int n)
{
	int result = 1;

	while (n-- > 0) ◊#{during the loop, n will be decreased in every loop, but its value of argument, which is contained in the corresponding parameter, will not be modified.}
		result = result * x;
	
	return 0;
}
}

Pass-by-value has both good side and bad side.

◊?{but how "modifying paramter" is valid sentence? The parameter is just a dummy value that must be filled with an argument to be used, isn't it?}

◊bold{Argument Conversions}

For function calls in C, the arguments' type are allowed to be different from the function's parameter type. For some cases, there's a rule for converting the arguments' type. But don't trust. There's a danger of error, so do explicitly clarify the arguments' type and do not let it be done automatically.

If the compiler has seen the function's definition or prototype before the function call, the compiler will implicitly convert the arguments' type into parameters' type.

If the compiler hasn't seen the function's definition or prototype before the function call, the compiler performs the default argument promotion. For details, see 194p.

◊bold{Array Arguments}

Array can be used as function argument. For one-dimensional array, the length of ◊strong{parameter} can be left unspecified. But if the function needs its length, (for now) we need to give it explicitly ◊uc{in function call as an argument}.

When calling a function with array parameter, just specify an array name without brackets (which is a must for array paramter).

The compiler can't check whether we give right length of an array. This feature can be used to compute only a part of an array by giving a length shorter than its original length. But we also need to be careful not to give longer length of array, because it may cause undefined behavior.

A function can change the elements of an array parameter, and ◊uc{we can use the modified value outside the function.} 

For multi-dimensional arrays, we cannot omit array length except the first dimension. This can be solved by using ◊xref{arrays of pointers} or c99's ◊xref{variable-length array parameters}.

◊bold[C99]{Variable-Length Array Parameters}

VLAs can be used as parameter.

◊uc{parameter for variable (that'll be used for array) must come before the array}.

Prototypes for VLAs can be written as ordinary, but the ◊var for VLA can be written as *. The * can give the compiler a clue that the array uses as its length a ◊var that is (or can be) omitted in the prototype, but located before the array argument.

VLA parameters with a single dimension might be error prone.

◊bold[c99]{Using static in Array Parameter Declarations}

static used in array parameter determines the minimum value of array length. It makes a process with the array faster. But for an array that has more than 2 dimensions, static can only be used in first dimension.

◊bold[c99]{Compound Literals}

No matter how many times an array argument will be used, the array must be declared. If an array is to be used only once, we can avoid declare-call annoyance by using a compound literal. No name for this literal, just specify its elements.

◊codeblock{
BEFORE                   | AFTER
int b[] = {1, 2, 3};     | total = sum_array((int []){1, 2, 3},, 3);
total = sum_array(b, 3); | ◊#{or specify its length:} (int [3]){1, 2, 3}
}

A compound literal may contain designators (specify a position of specific value.) When there's not enough initialization, left elements are initialized with 0.

A compound literal is an lvalue, so it can be left operand of assignment statement. If a compound literal is considered not to be modified, block modification by adding the word const.

◊section{the return statement}

A non-void function must contain the return statement. The ◊expr of the return ◊st could be an expression mostly a constant or ◊|var|.

When a function's return type is different with the type of expression in return statement, return statement's expression is converted to match the function's return type.

For void function, return ◊st is unnecessary. But we can insert the return ◊st by just writing ◊code{return;}.

If a non-void function fails to compute its return value, some compliers give "control reaches end of non-void function". This is because in this case, the behavior of the program would be undefined.

◊section{program termination}

The return value of the main program is a status code that indicates termination status. If 0, the program terminates normally; if not 0, it terminates abnormally. Always write status code is a good practice, since others might use the value.

◊bold{The exit function}

The ◊f{exit} function in <stdlib.h> can be used as an alternative to the return statement. The header provides EXIT_SUCCESS and EXIT_FAILTURE macro (which represents 0, 1, respectively) that are less cryptic than the ordinary integer values.

An exit function is equivalent to a return statement:

exit (expression);  |  return expression;

The difference of these is that the return statement triggers program termination only when the statement is in the main function, whereas the exit function always triggers the termination no matter what function it's written.

◊section{recursion}

A recursive function calls itself in its body. C language doesn't heavily depend on the recursion, but there are cases where this is effective than iteration. Like when? When you need a function to call itself two or more times.

◊bold{the quicksort algorithm}

1. Choose a partitioning element e, and rearange the input array into 3 parts: elements 1, ..., i-1 are less than or equal to e, element i contains e, elements i+1, ..., n are greater than or equal to e.
2. Apply quicksort to elements 1, ..., i-1 recursively (till every elements 1, ..., i-1 get sorted).
3. Apply quicksort to elements i+1, ..., n recursively (till every elements i+1, ..., n get sorted).

After step 1, not all elements are sorted. Only partitioning element is in the proper place, and elements left of e and right of e are just have the same property: left elements are less than or equal to e, right elements are greater than or equal to e.

By applying quicksort for left parts and right parts, there'll be partition element for each parts, making the new partition element in the right place, with its left & right elements have the proper property. The process will continue until every elements of the input array get sorted from small one to the large one.
