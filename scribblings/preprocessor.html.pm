#lang pollen

◊title{the preprocessor}

◊section{}

Edit programs before the compilation. Avoid using too much.

◊section{how the preprocessor works}

What a preprocessor do is determined by preprocessing directives. What are preprocessing directives? The one starts with a # character, like #include, #define. Preprocessors are converted later (◊uc{like when?}). A header file that is ◊c{#include}d get converted with the content of the header file, and a name of constant or expression ◊c{#define}d get expanded with the name.

The preprocessor is given a C program as an input, and expands all directives the program have. The preprocessor's output goes into the compiler, checks errors and converts it to object code.

how preprocessor converts the input program, what elements are converted to blank line, what values are expanded

preprocessor and compiler was seperated, but now integrated in compiler, but good to think it as seperated. There's an option in compiler to view preprocessed program. Since preprocessor has a little knowledge about C, examining preprocessed output would be good way to find an error (if any).

◊section{preprocessing directives}

Preprocessing directives may define a macro, or include a file outside of the program, or conditionally add/ignore a code block, or other action.

Rules about seperating space, multiline directive, its location, comments.

◊section{macro definitions}

Macros may have parameters or no parameters. Former is called parameterized macros, later is called simple macros.

◊bold{simple macros}

◊c{#define identifier replacement-list}

replacement-list is any order of preprocessing tokens. The list may include:

identifiers, keywords, numberic constants, character constants, string literals, operators, and punctuation.

and list of advantages...

◊bold{parameterized macros}

◊c{#define identifier( x1 , x2 , ... , xn ) replacement-list}

No space between ◊c{identifier} and ◊c{(} is a must.

Using excessive parentheses has a reason.

A parameterized macro may have an empty parameter list: ◊c{#define getchar() getc(stdin)}

Using a parameterized macro instead of a function has advantages. It's faster than its equivalent function, and can accept arguments of any type (as long as the result is valid).

But it also has disadvantages.

 - As every macro identifiers are expanded, the code will be larger.
 - Function has a kind of firewall for type mismatching: type conversion or raise error. Macro doesn't have one.
 - There's no pointer to a macro...
 - There's a danger of evaluating macro's argument more than once (especially the argument has a side effect)

◊bold{the # operator}

# is an operator. ## is also an operator. ◊uc{These are different from # in ◊c{#include}.} Both are ◊uc{executed} during preprocessing.

# operator converts a macro argument into a string literal.

◊bold{the ## operator}

Pasting tokens. Here's what I've understood. It's used to place a macro parameter right next to other character.

◊c{#define MK_ID(n) i##n} enables making i1, i2, i3, etc. without need for typing every character every time, but only specifying n part. The macro parameter can be placed before the ##, like ◊c{n##i}.

◊bold{generic properties of macros}

rules that apply to simple macros and parameterized macros.

A macro is expanded only when fully matched with its name.

A macro is in effect from its declaration to the end of the file. It does not follow the scope, so a macro defined in a function body also remains in effect to the end of the file.

Macros can be undefined by the ◊c{#undef} directive: ◊c{#undef identifier} where ◊c{identifier} is a macro name.

◊bold{parentheses in macro definitions}

When defining a macro, you need to put parentheses a) if its replacement list contains an operator, wrap the entire replacement list with parentheses, b) if it's parametrized macro, wrap every parameter with parentheses.

Why we have to wrap with parentheses? Because without thses parentheses, when they are mixed with other expressions, their precedence will be mixed, and may result different from our intention.

◊bold{creating longer macros}

Comma operator helps to create longer macros if the macro has multiple expressions.

◊c{#define ECHO(s) (gets(s), puts(s))}

But what if we want to wrap multiple statements in a macro? Then use a do loop with its condition false (so that it'll be executed only once).

◊c{
#define ECHO(s)	\
  do {	\
	  gets(s);	\
		puts(s);	\
		} while (0)
}

◊bold{predefined macros}

There's a several predefined macros of an integer constant or string literal. It's useful for error detecting. ◊c{assert} is a general-purpose error-detecting macro.

◊c99{additional predefined macros in c99}

For __STDC__HOSTED__ macro: An implementation of C consists of the compiler plus other software necessary to execute C programs. Implementation divided into hosted and freestanding. A hosted implementation run on every C standard program, but freestanding implementation does not have to run on every C standard program.

other macros...

◊c99{empty macro arguments}

In C99, you can omit at least one argument in a macro call. But you need to put the same number of commas with the normal call.

When omitting ◊uc{operand} of the # or ## operators, special rules apply. and here's the details...

◊c99{macros with a variable number of arguments}

◊c99{the __func__ identifier}

◊section{conditional compilation}

Include or exclude code depending on the test by preprocessor

◊bold{The ◊c{#if} and ◊c{#endif} directive}

Easy way for testing code to be left there, but ignored by compiler (so that you can use it easily when you need).

◊codeblock{
#if constant-expression
...your code for test
#endif
}

If the result of constant-expression is zero, preprocessor remove the code, the compiler won't see the code, ...
If it's nonzero, leave the code in the final program.

◊bold{The ◊c{defined} operator}

◊codeblock{
#if defined(DEBUG)
...
#endif

◊#{can be used...}

#if defined DEBUG ◊#{parentheses is not mandatory}
...
#endif
}

When applied to an identifier, produce 1 if the identifier is a currently defined macro. Otherwise, for the meaning of "defined," the tested macro doesn't have to have (any) replacement list, because a macro can be defined without any replacement list.

◊c{#define DEBUG} let ◊c{defined(DEBUG)}'s result 1.

◊bold{the ◊c{#ifdef} and ◊c{#ifndef} directives}

◊c{#ifdef identifier}

tests whether an ◊c{identifier} is currently defined as a macro. Same as ◊c{#if defined(identifier)}.

◊c{#ifndef identifier} tests whether an identifier is currently not defined as a macro. Same as ◊c{#if !defined(identifier)}.

Q&A why C provides ◊c{#ifdef} and ◊c{#ifndef}?

Actually ◊c{defined} operator came later. Then, the real question would why provide ◊c{(define)}?

Because ◊c{(define)} let checking multiple macros are defined or not.

◊bold{the ◊c{#elif} and ◊c{#else} directives}

◊c{#if}, ◊c{#ifdef}, ◊c{#ifndef} can be nested just like ordinary ◊c{if} statement. Using indentation is a good practice.

◊codeblock{
#if DEBUG
...
#endif /* DEBUG */
◊#{when whole #if block is large, this comment would be helpful to find the beginning of the #if block}
}

◊c{#elif}, ◊c{#else} are for additional convenience. These are be used in conjunction with ◊c{#if}, ◊c{#ifdef}, ◊c{#ifndef}.

◊c{#elif constant-expression}

◊c{#else}

◊codeblock{
#if expr1
if expr1 evaluates to nonzero, include this line
#elif expr2
if expr1 is zero, and expr2 is non-zero, include this line
#else
otherwise, include this line
#endif
}

◊bold{use of conditional compilation}

Other applications than debugging...

◊section{miscellaneous directives}

Used not much frequently

◊bold{the ◊c{#error} directive}

◊c{#error message}

prints an error message. Frequently used in conjunction with conditional compilation to raise an error when exceptional situation occurs.

◊bold{the ◊c{#line} directive}

alter the way program lines are numbered. Mainly used by programs that generate C code as output (and it makes programmer's debugging easy).

◊c{#line n} subsequent lines are numbered n, n+1, n+2, ...

◊c{#line n "file"} following lines are assumed to ◊uc{come from} ◊c{file}with line numbers starting at n.

◊bold{the ◊c{#pragma} directive}

A way to request special behavior from the compiler. Its specification may vary for each compiler.

◊c{#pragma tokens}

◊c99{the ◊c{_Pragma} operator}

Used in conjunction with the ◊c{#pragma} directive

◊c{_Pragma (string-literal)}

◊uc{Make it possible for a macro expansion to leave behind a ◊c{#pragma} directive}
