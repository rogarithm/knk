#lang pollen

◊title{functions}

◊section{}

Why we need function? Function is a way of minimizing repetitive work we encounter while we're programming. We might do a certain computing job to get a value, but with different argument each time we do the job. If we can save somewhere the way of computing, and then call any time by just calling the name with its corresponding arguments, it would be nicer.

Unlike the definition of function in mathmetics, some functions in C doesn't have arguments, and some doesn't compute value. Other programming languages call as a procedure a function that doesn't compute a value, but there's no such distinction in C.

◊section{defining and calling functions}

◊bold{Computing Averages}

◊codeblock{
double avrg(double a, double b)
{
	return (a + b) / 2;
}
}

◊em{defining function}

We must specify a type of data a function returns and a type of data supplied to the function (this input data is called parameter). A function parameter is a ◊var that will be initialized with the corresponding argument of the function later when the function is called.

After specifying data, the body comes next, which will do the purpose of the function: computing a value, or make a side effect, etc.. The body is enclosed by braces.

◊em{calling function}

To call a function, we write the function name, followed by arguments enclosed by parentheses. By calling a function, we can give values to initialize function parameter. ◊uc{An argument of a function can be a ◊|var| or an ◊|expr|, or just a value. Whatever we choose, these will finally be converted to the value that will be given to the function}.

The value of return statement will not be saved as you can see in the return statement of ◊f{avrg} function. By default, program prints its return value and discards it. If we need the return value, assign it in a ◊|var|.


◊bold{Printing a Countdown}

◊codeblock{
void print_count(int n)
{
	printf("T minus %d and counting\n", n);
}
}

If a function does not return a value, we specify this by writing the function's return type ◊t{void}.


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

There's one rule for function's return type. It cannot be an array.


◊bold{Function Calls}

◊form{
function-name ( list-of-arguments )
}

Because a ◊t{void} function returns nothing, the ◊t{void} function call will not be used as an operand in other ◊|expr|s.

◊uc{For a non-◊t{void} function,} the semicolon-ended function call is an ◊xref[expressions]{expression statement}. As an alternative, ◊xref[basic-types]{casting} ◊code{(void)} can deliver programmer's intention that he/she wants to ignore the result value of the function.


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

reread

◊section{the return statement}

A non-void function must have the return statement in its body. The ◊expr of the return ◊st could be a constant, ◊|var|, or ◊|expr|. They'll be evaluated to give a value, and then returns its value when it's nonnegative. If the value is 0 or negative, they'll return 0.

The return type of the function definition(◊?{plus its prototype}) is prior to the return type in the return ◊|st|. If the two is different, it'll converted to match the return type of function definition.

For void function, return ◊st is unnecessary. But we can insert the ◊st by just writing ◊code{return;}.

If a non-void function fails to compute its return value that'll be used in body of a program, some compliers give "control reaches end of non-void function". This is because in this case, the behavior of the program would be undefined.

◊section{program termination}

The return value of the main program indicates termination status. If 0, the program terminates normally; if not 0, it terminates abnormally.

The ◊f{exit} function can be used as an alternative to the return statement. The <stdlib.h> header provides macro to name an ◊|expr| used for the ◊f{exit} function..

Though the main function do its job (program termination) when it's used in main function, the exit function do its job for every functions it's used.
