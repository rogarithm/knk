#lang pollen

◊title{functions}

◊section{}

Why we need function? Function is a way of minimizing repetitive work we encounter while we're programming. We might do a certain computing job to get a value, but with different argument each time we do the job. If we can save somewhere the way we compute the value, and then call each time we want by just call the name of the job with arguments, it would be nicer. This is why I think we need function.

Unlike the definition of function in mathmetics, some functions in C doesn't have arguments, and some ones doesn't computes a value. Other languages call a function that doesn't compute a value as a procedure, but there's no such distinction in C.

◊section{defining and calling functions}

◊bold{Computing Averages}

◊codeblock{
double avrg(double a, double b)
{
	return (a + b) / 2;
}
}

◊em{defining function}

We must specify a type of data a function returns and a type of data supplied to the function (this input data is called parameter). ◊collect-array{A function parameter is a ◊var that will be initialized later when the function is called.}

After specifying data, the body comes next, which will do the purpose of the function: computing a value, or make a side effect, etc.. The body is enclosed by braces.

◊em{calling function}

To call a function, we write the function name, followed by arguments. By calling a function (that is, giving it arguments), we can give values to be used to initialize parameters of the function. An argument of a function can be a ◊|var| or an ◊|expr|, or just a value. Whatever we choose, these will finally be converted to the value that will be given to the function.

The value of return statement like in ◊f{avrg} function will not be saved. By default, the program prints the value and discards it. If we need the returned value, assign the value in a ◊|var|.


◊bold{Printing a Countdown}

◊codeblock{
void print_count(int n)
{
	printf("T minus %d and counting\n", n);
}
}

If a function does not return a value, we specify this by writing the function's return type ◊t{void}, just like the ◊f{print_count} function.


◊bold{Printing a Pun (Revisited)}

◊codeblock{
void print_pun(void)
{
	printf("To C, or not to C: that is the question.\n");
}
}

We can make a function that needs no parameters. Like we write ◊t{void} in the position for return type, we need to write ◊t{void} in the position for function arguments. To call the function, write the function name with the parentheses, with no arguments inside.


◊bold{Function Definitions}

◊form{
return-type function-name ( parameters )
{
	declarations
	statements
}
}

◊collect-array{There's several restrictions for function's return type. As one, functions may not return arrays. ◊?{Then is it possible to modify elements of an array?}}

Variables declared ◊uc{(and initialized)} in a function body can only be used inside the function.

◊bold{Function Calls}

◊form{
function-name ( list-of-arguements )
}

Because a ◊t{void} function returns nothing, the ◊t{void} function call will not be used as an operand in other ◊|expr|s. Therefore it'll always followed by a semicolon. For a non-◊t{void} function, a return value can be used in other ◊|expr|s, so there's a chance that a non-◊t{void} function call may not end with semicolon.

If we don't need a return value of non-◊t{void} function, put semicolon after the function call. ◊uc{For a non-◊t{void} function,} the semicolon-ended function call is an ◊xref[expressions]{expression statement}. As an alternative, ◊xref[basic-types]{casting} ◊code{(void)} can deliver programmer's intention that he/she wants to ignore the result value of the function.

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

Using the same name for ◊|var|s in multiple functions doesn't affect each other. That is, assigning a new value to a ◊var inside one of the functions doesn't change the value of the other ◊|var|s. For example, the ◊f{is_prime} function and ◊f{main} function has the variable n, but they doesn't affect each other. It'll has no effect if we modify one of the ◊|var|s into other name.

◊section{function declarations}

It does not raise an error to put a function definition after another function or program that uses the definition of the function. But if you do, the compiler should anticipate what are return type and arguments' type for the function we defined. If there's no clue for that, the compiler determine ◊t{int} as default for these. If it does not match with the type of the function definition, we'll get an error.

Putting a function definition before the program isn't a solution, because there are situations when we cannot put a definition before its use, especially when a function is recursive (like functions call each other in their body). So we need to declare (or make a prototype of) a function before calling it.

◊form{
return-type function-name ( parameters );
}

By declaring a function before calling the function enables the compiler to anticipate the function's return type and arguments' type.

There's a convention about how to deal with parameter name of function prototype. If you need details, see 193p.

◊section{arguments}

In C, arguments are passed by value. That is, each argument is passed (assigned to the corresponding parameter) after the ◊|expr|s get computed to be values. Because the parameter contains a copy of the argument's value, any changes made to the parameter during the execution of the function don't affect the argument. ◊?{How the parameters get changed?}

When a function is called, given arguments are get computed to be ◊|val|s, and the ◊|val|s are assigned to parameters of the function definition in proper positions inside the function body. Even if we modify the parameters in the function body, it doesn't affect the ◊val computed from argument. ◊uc{That is, we can modify the value computed from argument where its scope affects, but we cannot use the convenience outside its scope.}

For example, if we apply decrese ◊|op|, the ◊val from argument will not be changed:

◊codeblock{
int power(int x, int n)
{
	int result = 1;

	while (n-- > 0) // during the loop, n will be decreased in every loop, but its value will not be modified.
		result = result * x;
	
	return 0;
}
}

◊?{but how can we check the value of argument which was given to the parameter didn't change?}

It has both good side and bad side.

◊bold{Argument Conversions}

For function calls in C, the arguments' type allowed to be different with the function's parameter type. For some cases, there's a rule for converting the arguments' type. But don't trust. There's a danger of error, so do explicitly clarify the arguments' type and do not let it be done automatically.

◊bold{Array Arguments}

We can use arrays as arguments. The length of array argument can be left unspecified when the argument is one-dimensional array. But if the function needs the length, we need to give it explicitly as an argument.

◊collect-array{We don't put brackets after an array name for parameter when calling a function that has array parameter.}

A function can't check if we give right length of an array. We can use this feature to give smaller length to compute only for that value. But we also need to be careful not to give bigger length than the array has, as it may cause undefined behavior.

A function can change the elements of an array parameter, and ◊uc{we can use the modified value outside the execution.} 

For multi-dimensional arrays, we cannot omit array length except the first dimension. This can be solved by using ◊xref{arrays of pointers} or c99's ◊xref{variable-length array parameters}.

◊bold[C99]{Variable-Length Array Parameters}

VLAs can be used as parameter.

parameter for variable (that'll be used for array) must come before the array.

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
