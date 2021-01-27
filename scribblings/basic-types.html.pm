#lang pollen

◊title{basic types}


◊section{integer types}

In C, there's two numeric types: integer types and floating types.

Values of the integer types can be either positive or negative numbers. By default, values of ◊type{int} types can have negative and positive ◊uc{numbers}, so we can use the values. But if we only needs values of positive number (plus zero), we can use ◊type{unsigned int}, that enables us to use number larger than the values of ◊type{signed int} ◊uc{as we can use memory that was assigned for negative integers to assign positive numbers}.

There's a situation where we need a number more than the memory of ◊type{int} can handle or need not that much memory of ◊type{int} can handle. C provides solution for these cases. For the case where larger number (thus larger memory) is required, we can use ◊type{long}, and for the case where lesser number (thus lesser memory) is sufficient, we can use ◊type{short}.

We can also combine specifiers to build an integer type that meets our exact need. By default, one (or none) of ◊type{short, long} and one (or none) of ◊type{signed, unsigned} and ◊type{int} are the component to build our integer type of need. The order of specifiers (that is, the components except ◊type{int}) could be modified. ◊type{int} has to be the last word, but anything else's order isn't important. ◊uc{We also can drop the ◊type{int} when we use integer types}.

As CPUs and memories capable in each computer varies, the range of values represented by six integer types varies from one machine to another. But there's a minimum rules that every compilers must obey. If you want detail, see 127p.

◊bold{Integer Types in C99}

C99 provides additional integer types, ◊type{long long int} and ◊type{unsigned long long int}. ◊uc{Both types are for 64-bit, and ranges for the 64-bit}.

◊bold{Integer Constants}

Constants are numbers that appear in the ◊uc{text} of a program, not numbers that are read, written, or computed. Integer constants in C can be written in decimal, octal, or hexadecimal. If you want to use octal constants, they must be preceded with 0. If you want to use hexadecimal constants, they must be preceded with 0x (case insensitive). Despite the appearances are different, the three constants are just an alternative way of writing the same number. It's just a matter of notation.

By default, type of integer constants is determined by the compiler depending on the size of value. The compiler changes type of a constant if it doesn't fit to a size of ◊check-this{an assigned memory} of that type. If you want to set type of an integer constant at the first time, append a proper letter at the end of the constant. If you needs details, check 129p.

◊bold{Integer Constants in C99}

Because C99 provides ◊type{long long int} and ◊type{unsigned long long int}, ◊code{ll} and ◊code{ull}(or ◊code{llu}) (all case insensitive) can be used to specify type of a value.

How a compiler choose the type of a value of integer constant is different from C89 compiler. If you need detail, check 129-130p.

◊bold{Integer Overflow}

When you evaluate arithmetic operations on integers, the type of the result is the same type of operands'. If the result can't be represented by the memory capacity for the type of result, the overflow occurs.

When the operands are ◊type{signed} type, the program's behavior is undefined, whereas when the operands are ◊type{unsigned}, the program's behavior is defined. Because the overflow may affect other aspect of program, it should be avoided ◊uc{whether it's predictable or not}.

◊bold{Reading and Writing Integers}

If the result of operation raises integer overflow, the type of the operands must be modified to proper one. If the operands are used in printf or scanf function, the content of these functions should be modified to be matched with the modified type. Check the proper ◊|conv-spec|s that are required, and change them.

◊uc{Why the table below has field for octal and hexadecimal? Is there a reason to consider integer constant? Or is this not for constant?}

◊quick-table{
type\notation | ◊?{int} | decimal | octal | hexadecimal
◊type{unsigned int} | d | u | o | x
◊type{short int} | hd | hu | ho | hx
◊type{long int} | ld | lu | lo | lx
◊type{long long int} | lld | llu | llo | llx
}

◊section{floating types}

When we need variables to store numbers with decimal point, or exceedingly large or small, we can use floating types. C provides ◊type{float}, ◊type{double}, ◊type{long double}.

Because different computers have different specifications, the precision of floating types varies. But most modern computers follow the specifications in IEEE Standard 754.

◊bold{Floating Constants}

A floating constant needs a decimal point and/or an exponent; you can use either one of them, or use both. To use an exponent, letter e should be preceded by the exponent. ◊uc{The exponent describes the number to be used to scale with power of 10}.

◊uc{By default, floating constants are stored in memory in the same format as a ◊type{double} variable. As constants are not "variable", we cannot say something like "a variable for floating constant". But a floating constant should be stored in a memory anyway.}

If you want a floating constant to be stored in specific format, you can indicate the format by appending a proper letter at the end of the constant. For example, if you want ◊code{57.0} to be stored in a ◊uc{◊type{long} format, write as ◊code{57.0L}}.

◊bold{Reading and Writing Floating-Point Numbers}

%e, %f, and %g are the ◊|conv-spec|s for reading and writing single-precision floating-point numbers. values for ◊type{double} and ◊type{long double} needs specific letter be preceded.

◊quick-table{
type\◊conv-spec | | |
◊type{float} | e | f | g
◊type{double} | le | lf | lg
◊type{long double} | Le | Lf | Lg
}

◊conv-spec for ◊type{double} should be used only in scanf function, because printf function can print ◊type{double} values without the ◊|conv-spec|.


◊section{character types}

The values of ◊type{char} type may vary on different machines.

◊bold{Operations on Characters}

Each characters has the corresponding integer value. Therefore, if a ◊type{char} value comes in an ◊|exp|, it'll be treated as an ◊type{int} value assigned for the character. As I mentioned before, different machine may have different character set and values, so be careful to use ◊type{char} values in ◊|exp|s.

◊bold{Signed and Unsigned Characters}

Like the integer types, ◊type{char} type could be signed or unsigned.

◊start-here

◊later{integral types}


◊bold{Arithmetic Types}

◊later{◊hierarchy{arithmetic types}}


◊bold{Escape Sequences}

To write special (nonprinting) characters, we use the escape sequence. The sequence consists of character escapes and numeric escapes. We can use character escapes by appending \ in front of a proper character. But this (character) escapes are limited in its number of possibility.

Numeric escapes can be a solution to this problem. They provide any character, thus not limited. We can use an octal escape sequence or a hexadecimal escape sequence by appending octal (or hexadecimal) number after "\".

◊bold{Character-Handling Functions}

The touper function in ◊header{ctype.h} can be used to convert a lower-case letter to upper-case.

◊bold{Reading and Writing Characters using scanf and printf}

To read and write a char type value, use %c ◊|conv-spec|.

scanf를 쓸 때, 읽으려는 char 앞에 white-space가 있으면, char를 받는 변수 (&ch라고 하면 ch)에 char과 앞의 white-space까지 담는다. 이게 싫으면 %c 앞에 space를 준다. 그러면 ch에는 해당 char만 담긴다.

◊bold{Reading and Writing Characters using ◊f{getchar} and ◊f{putchar}}

◊f{putchar} writes a single character. Each time ◊f{getchar} is called, it reads one character.

◊f{getchar} is used as an idiom where we need to skip a character such as blank.

Because the way is different that ◊f{scanf} and ◊f{getchar} treat characters that they has "peeked" at but not read, be careful if you mix the two functions.

◊later{idioms using ◊f{getchar}}


◊section{type conversion}

For arithmetic, computers are restrictive. We should give computers operands that have same size, same way of storing. Unlike computers, C is more opened for arithmetic. This language provides (implicit and explicit) ways to consult with situations where operands have different size, or stored in different way. These solutions let us to write more freely, because they'll convert our freely written operands to a proper specification for the computer.

Conversions are implicit or explicit. When the compiler do this job, it's implicit. When we (programmer) do this job, it's explicit. Because C has many arithmetic types, there's many rules for the converting.

In this section, we'll cover a part of whole situations. ◊reference{chapter 9} explain the rest.

◊bold{The Usual Arithmetic Conversions}

This conversion is applied for operands of most binary operators, including the arithmetic, relational, and equality operators. When the types of operands are not the same, the conversion happens. Operands are converted in a way that their precision mostly preserved. There's a danger when an operand's size is beyond its type's capacity, resulting to overflow, and then gives meaningless value.

The strategy that the compiler uses is ◊uc{to convert the "narrower" (that is, requires fewer bytes to store ◊uc{}) type to another operand's type}. This strategy is called promotion. Integral promotions which is one of the promotions, convert a ◊type{char} or ◊type{short} integer to ◊type{int} integer. 

The rules for the usual arithmetic conversions are divided into two cases:

- The type of at least one operand is a floating type

convert a narrower operand to these type (bigger type first applied)

long double > double > float

- Neither operand type is a floating type

same as above rule

unsigned long int > long int > unsigned int > int

for detail, read 144p.

◊bold{Conversion During Assignment}

The type of the value that results from the ◊exp on the right side is converted to the type of ◊var on the left side. If the type of ◊var on the left is at least as wide as the ◊exp on the right, no problem. But if the type of ◊var on the left is narrower than the ◊exp on the right, there's a danger of lossing some information like precision.

Because a floating-point constant ◊uc{have} ◊type{double} by default, assigning a floating-point constant to ◊type{float} ◊var may raise a warning, because converting ◊type{double} to ◊type{float} has danger that just have said right above. Thus, when we meet this situation, it's good to append the f suffix to a floating-point constant.

◊later{◊bold{Implicit Conversions in C99}}

for details, read 146-147p.

◊bold{Casting}

If you want more control over type conversion than the control provided by implicit conversion, use casting.

◊form{ ( type-name ) expression }

You can specify the type name you want an expression's type to be converted.

if casting expression is an operand of binary operation, the "casted" type will be affected by ◊ref{◊bold{The Usual Arithmetic Conversion}} rule. Operator precedence could twist your intention in an ◊|exp|, so be careful to get an intended result (as a solution, use parenthesis.)


◊section{type definitions}

Creating another name for a built-in type could be helpful reading a source code, because we can add a meaning that is effective to understand intend of code.

For example, writing ◊code{ typedef int Bool; } causes the compiler to use a new type "Bool" the same as ◊type{int}.

◊bold{Advantages of Type Definitions}

Type definitions are good when we need to modify certain variables' type. It's a way of simplifying modification process.

◊bold{Type Definitions and Portability}

Though it's not a perfect solution, using type definitions can make porting job more easy.

◊section{the ◊op{sizeof} operator}

sizeof operator let you know how much memory is required to store values of a particular ◊|t|.

◊form{ sizeof ( type-name ) }

The ◊uc{◊|op|'s value} is an ◊type{unsigned int}. 
