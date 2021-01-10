#lang pollen

◊title{functions}

◊section{}

Unlike the definition of function in mathmetics, some functions in C doesn't have arguments, some doesn't computes a value. Other languages call a function that doesn't compute a value as a procedure, but there's no distinction in C.

◊section{defining and calling functions}

◊bold{Computing Averages}

◊codeblock{
double avrg(double a, double b)
{
	return (a + b) / 2;
}
}

function is a way of minimizing repetitive work we're encounter while we're programming. We might do a certain computing job to get a ◊|val|, but with different argument everytime we do the job. If we can save the way we compute the ◊val somewhere, and then call each time we want by just call the name of it with arguments, it would be nicer. The way is function.

We must specify the type of the data that the function returns and the type of the data supplied to the function (this data is called parameter). ◊?{what's the difference between identifiers and parameters?} ◊!{A function parameter is a ◊var that will be initialized later, like when? When the function is called.}

Every function has the body, which will do the purpose of the function, computing a value, or make a side effect, etc.. The body is enclosed by braces.

By calling a function, we can give values to be used to initialization of the parameters of the function. To call a function, we write the function name, followed by arguments. If an argument of a function can be a ◊|var| or an ◊|exp|, or just a ◊|val|. These will finally be converted to ◊val that will be given to the function.

The ◊val of return statement like in avrg function above isn't savee. By default, the program prints the ◊val and discards it. If we need the returned ◊|val|, assign the ◊|val| in a ◊|var|.

◊bold{Printing a Countdown}

◊codeblock{
void print_count(int n)
{
	printf("T minus %d and counting\n", n);
}
}

If a function does not return a value, we specify this by writing the function's return type ◊t{void}, just like in the ◊f{print_count}.

◊bold{Printing a Pun (Revisited)}

◊codeblock{
void print_pun(void)
{
	printf("To C, or not to C: that is the question.\n");
}
}

We can make a function that needs no parameters. Like we write ◊t{void} in the position for return type, we need to write ◊t{void} in the position for function arguments. To call the function, write the function name with the parentheses, no arguments inside.

◊bold{Function Definitions}

◊form{
return-type function-name ( parameters )
{
	declarations
	statements
}
}

Functions may not return arrays. ◊?{Then is it possible to modify elements of an array?}

Variables declared in a function body can only be used inside the function.

◊bold{Function Calls}

Forms are described above. Because a ◊t{void} function returns nothing, it'll not be used as an operand in other ◊|exp|s. Therefore it'll always followed by a semicolon. For a non-◊t{void} function, a return value can be used in other ◊|exp|s, so there's a chance that a non-◊t{void} function call not end with semicolon.

If we don't need a return value of non-◊t{void} function, put semicolon. ◊uc{For a non-◊t{void} function,} the semicolon-ended function call is an ◊xref[expressions]{expression statement}. ◊xref[basic-types]{casting} ◊code{(void)} can make programmer's intention that he/she wants to ignore the result value of the function.

◊bold{Testing Whether a Number Is Prime}

Using the same name for ◊var in multiple functions doesn't affect each other. Assigning a new value to one ◊var doesn't change the other ◊|var|.

◊section{function declarations}

Putting a function definition after function or program that uses the definition of the function does not raises error. But if you put a definition like we've just said, the compiler should anticipate what the function's return type and arguments' type. If there's no clue for that, the compiler determine these types as default (int), and if it does not match with the type in definition, then we'll get an error.

Putting a function definition before the program isn't a solution, because there are situations when we cannot put a definition before its use, especially when a function is recursive. So we need to declare (or make a prototype of) a function before calling it.

◊form{
return-type function-name ( parameters );
}

By declaring a function before calling the function lets the compiler anticipate the function's return type and arguments' type.

There's a convention about how to deal with parameter name of function prototype. If you need details, see 193p.

◊section{arguments}

◊uc{Since the parameter contains a copy of the argument's value, any changes made to the parameter during the execution of the function don't affect the argument.}

What's "passed by value"? ◊?{passed after the ◊|expr|s get computed to make values?}

A parameter can be modified without affecting the corresponding argument. It has both good side and bad side.

◊bold{Argument Conversions}

For function calls in C, the arguments' type allowed to be different with the function's parameter type. For some cases, there's a rule for converting the arguments' type. But don't trust. There's a danger of error, so do explicitly clarify the arguments' type.

◊bold{Array Arguments}

◊collect-for-array-problem{We don't put brackets after an array name when passing it to a function.}

A function can change the elements of an array parameter.

◊bold[C99]{Variable-Length Array Parameters}

VVLAs can be parameters

parameter for variable (that'll be used for array) must come before the array.

Prototypes for VLAs can be written as ordinary, but the ◊var for VLA can be written as *. The * can give the compiler a clue that the array uses as its length a ◊var that is (or can be) omitted in the prototype, but located before the array argument.

VLA parameters with a single dimension might be error prone.

◊bold[c99]{Using static in Array Parameter Declarations}

static used in array parameter choose the minimum value of array length. It makes a process with the array faster. But for an array that has more than 2 dimensions, static can only be used in first dimension.

◊bold[c99]{Compound Literals}

reread

◊section{the return statement}

A non-void function must have the return statement in its body.

The ◊expr of the return ◊st could be a constant, ◊|var|, or ◊|expr|. They'll be evaluated to give a value, and then returns its value when it's nonnegative. If the value is 0 or negative, they'll return 0.

The return type of the function definition(◊?{plus its prototype}) precedes the return type in the return ◊st in its priority. If the two is different, it'll converted to match the one of function definition.

For void function, return ◊st is unnecessary. But we can insert by just writing ◊code{return;}.

If a non-void function fails to compute its return value, that'll be used in body of a program, some compliers gives "control reaches end of non-void function", because in this case, the behavior of the program would be undefined.

◊section{program termination}

The return value of the main program indicates termination status. If 0, the program terminates normally; if not 0, it terminates abnormally.

The exit function can be used as an alternative to the return function. The <stdlib.h> header provides macro to name an ◊|expr|.

Though the main function do its job (program termination) when it's used in main function, the exit function do its job for whatever functions its used.
