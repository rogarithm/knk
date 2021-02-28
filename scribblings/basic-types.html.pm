#lang pollen

◊title{basic types}


◊section{integer types}

In C, there's two numeric types: integer types and floating types.

◊type{int} type values can be negative or positive. ◊type{unsigned int} has positive number (and zero). (Though it's not always true,) ◊t{unsigned int} can store larger positive value than ◊type{signed int}.

There're other integer types than ◊t{int}. For larger number (thus requires larger memory), we can use ◊type{long}, and for lesser number (thus requires lesser memory), we can use ◊type{short}.

Specifiers can be combined to build an integer type that meets our exact need. One (or none) of ◊type{short}, ◊t{long} and one (or none) of ◊type{signed}, ◊t{unsigned} and ◊type{int} are the components to build. The order of specifiers (the components except ◊type{int}) could be swapped. The only rule to follow is that ◊type{int} has to be the last word. ◊uc{We also can drop the ◊type{int} when ?}.

Because CPUs and memories vary for each computer, value ranges of integer types vary from one machine to another. But there's a minimum rules that every compiler must obey. For the detail, see 127p.

◊bold{Integer Types in C99}

C99 provides additional integer types, ◊type{long long int} and ◊type{unsigned long long int}. ◊uc{Both types are for 64-bit, and ranges for the 64-bit}.

◊bold{Integer Constants}

Constants are numbers that appear in the ◊uc{text} of a program, and constants are not ◊uc{numbers that are read, written, or computed}. Integer constants can be written in decimal, octal, or hexadecimal. Octal constants must be preceded by 0. Hexadecimal constants must be preceded with 0x (case insensitive). Despite appearances are different, the three constants are just an alternative way of writing the same number with different notation.

By default, type of integer constant depends on the size of its value. If size of a constant doesn't fit to size of the type's memory, the compiler changes type of the constant with a proper one.

For decimal constant, the compiler seeks from ◊type{int} through ◊type{long int}, ◊type{unsigned long int} (as a last resort).
For octal and hexadecimal constant, the compiler seeks from ◊type{int}, ◊type{unsigned int}, ◊type{long int}, and ◊type{unsigned long int}.

You may want to choose type of a value by yourself. To do, append a proper letter at the end of the constant. Use L for ◊type{long}, U for ◊type{unsigned}, or you can use both, all case insensitive. If you needs details, check 129p.

◊bold{Integer Constants in C99}

Because C99 provides ◊type{long long int} and ◊type{unsigned long long int}, ◊code{ll} and ◊code{ull}(or ◊code{llu}) (all case insensitive) can be used to ◊clarify{specify} type of a value.

The way compiler choose type of integer constant value is different from C89 compiler. If you need detail, check 129-130p.

For decimal constant with no suffix (like u, l), ◊uc is the smallest among ◊type{int} through ◊type{long int}, ◊C99{◊type{long long int}}.

For octal and hexadecimal constant ◊uc{with no suffix}, goes through ◊type{int}, ◊type{unsigned int}, ◊type{long int}, ◊type{unsigned long int}, ◊C99{◊type{long long int}, and ◊type{unsigned long long int}}.

When there's a suffix for a constant, type of the constant must include the suffix. For example, for a constant that contains ◊code{l}, its type should be the type among ◊type{long int} or ◊type{long long int}, and so on.

◊bold{Integer Overflow}

When you evaluate arithmetic operations on integers, type of the result is the same as operands' type. If the result can't be represented by memory capacity of result type, overflow occurs.

When operands are ◊type{signed} type, the program's behavior is undefined, whereas when the operands are ◊type{unsigned}, the program's behavior is defined. Because the overflow may affect other aspect of program, it should be avoided ◊uc{whether it's predictable or not}.

◊bold{Reading and Writing Integers}

To fix integer overflow, the type of the operands must be modified to proper one. If we use the operands in printf and/or scanf function, the conversion specification of these functions should be modified to match the modified type.

◊uc{Why the table below has field for octal and hexadecimal? Is there a reason to consider integer constant? Or is this not for constant?}

conversion specification table for integer

for signed integer type
◊quick-table{
type\notation | decimal 
◊type{int} | d
◊type{short int} | hd
◊type{long int} | ld
◊type{long long int} | lld
}

for unsigned integer type
◊quick-table{
type\notation | decimal | octal | hexadecimal
◊type{unsigned int} | u | o | x
◊type{unsigned short int} | hu | ho | hx
◊type{unsigned long int} | lu | lo | lx
◊type{unsigned long long int} | llu | llo | llx
}

◊section{floating types}

Use floating types to store numbers that have decimal point, or numbers that are exceedingly large or small. C provides ◊type{float}, ◊type{double}, ◊type{long double}. Though it's confusing, ◊t{long double} is one of floating-point type.

Because different computers have different specifications, precision of floating type varies. But most modern computers follow the specifications in IEEE Standard 754.

◊bold{Floating Constants}

A floating constant needs a decimal point and/or an exponent; you can use either one of them, or use both. To use an exponent, it should be preceded by letter e. ◊uc{The exponent describes a number to be used to scale the value of the constant with power of 10}.

◊link[www.cs.auckland.ac.nz/references/unix/digital/AQTLTBTE/DOCU_010.HTM]{the floating constants are always interpreted as decimal}

By default, floating constants are stored as double-precision numbers.

If you want a floating constant to be stored in specific format, you can indicate the format by appending a proper letter at the end of the constant. For example, if you want ◊code{57.0} to be stored in a ◊type{long} format, write as ◊code{57.0L}.

◊bold{Reading and Writing Floating-Point Numbers}

%e, %f, and %g are the ◊|conv-spec|s for reading and writing single-precision floating-point numbers. Values for ◊type{double} and ◊type{long double} needs additional letter to be preceded.

◊quick-table{
type\notation | exponential form | fixed-decimal form | either e or f form
◊type{float} | e | f | g
◊type{double} | le | lf | lg
◊type{long double} | Le | Lf | Lg
}

◊C89{Do not use ◊c{l} in printf (to print ◊t{double} value.}


◊section{character types}

The values of ◊type{char} type may vary on different machines.

◊bold{Operations on Characters}

Each characters has the corresponding integer value. Therefore, when a character appears in a computation, C uses its integer value.

◊codeblock{
char ch;
int i;

i = 'a'; i is not 97. For character of type ◊t{int}, it'll be treated as number of the character.
ch = 65; ch is now 'A.' For number of type ◊t{char}, it'll be treated as char value of the number.
ch = ch + 1; ch is now 'B.' Increasing (or decreasing) number of type ◊t{char} modify its char value to another char value.
ch++; ch is now 'C'
}

Comparison of ◊t{char} is done using the int value of the ◊t{char}.

◊bold{Signed and Unsigned Characters}

Like the integer types, ◊type{char} type could be signed or unsigned.

◊C89{integral types refer to the integer types and the character types ◊uc{and enumerated types}.}

◊C99{Unlike C89, C99 don't use integral types. It use integer type to cover broader range of types. In C99, integer types include the character types and ◊uc{the enumerated types.}}

◊bold{Arithmetic Types}

The integer types and the floating types are called as arithmetic types as a whole.

Integral types
- ◊t{char}
- Signed integer types
- Unsigned integer types
- Enumerated types
Floating types

◊later{C99 arithmetic types}

◊bold{Escape Sequences}

Special (nonprinting) characters can be written with the escape sequence. There's two kinds of escape sequences: character escapes and numeric escapes.

We can use character escapes by appending \ in front of a proper character. But this (character) escapes are limited in its number of possibility.

Numeric escapes can be a solution to this problem. They provide any character, thus not limited. We can use an octal escape sequence or a hexadecimal escape sequence by writing octal (or hexadecimal) number preceded by ◊c{\}.

◊bold{Character-Handling Functions}

The toupper function in ◊code{ctype.h} is used to convert a lower-case letter to upper-case.

◊bold{Reading and Writing Characters using scanf and printf}

To read and write a char type value, use %c ◊|conv-spec|.

When using scanf with just plane "%c", if there's whitespace before a character to read, the function will assign the character and the whitespace in the variable (%c). If you want to assign only the character in this case, specify the string of scanf preceded by whitespace like " %c".

◊bold{Reading and Writing Characters using ◊f{getchar} and ◊f{putchar}}

◊f{putchar} writes a single character. Each time ◊f{getchar} is called, it reads one character.

◊f{getchar} can be used as an idiom where we need to skip a character such as blank.

Because the way is different that ◊f{scanf} and ◊f{getchar} treat characters that they has ◊uc{peeked at} but not read, be careful when you mix the two functions.

◊later{idioms using ◊f{getchar}}


◊section{type conversion}

For arithmetic, computers are restrictive. We should give computers operands that have same size, same way of storing. Unlike computers, C is more opened. This language provides (implicit and explicit) ways to deal with situations where operands of an expression have different size, or stored in different way.

Conversions are either implicit or explicit. If the job is done by the compiler, it's called implicit. If it's done by us (programmer), it's called explicit. Because C has many arithmetic types, there's many rules for the converting.

In this section, we'll cover a part. ◊chapter-xref-later{functions} explains the rest.

◊bold{The Usual Arithmetic Conversions}

This conversion is applied for operands of most binary operators, including the arithmetic, relational, and equality operators. When types of operands are not the same, the conversion occurs. Operands are converted in a way that their precision preserved as much as possible. There's a danger when an operand's size is beyond its type's memory capacity. It makes the result overflow, and put out meaningless value.

The strategy that the compiler uses is ◊uc{to convert the "narrower" (that is, requires fewer bytes to store the type's value) type to another operand's type (that is "wider" or at least the same with the "narrower" type)}. It's called promotion. One of it, integral promotion, convert a ◊type{char} or ◊type{short} integer to ◊type{int} integer. ◊C99{C99 compatible is integer promotions.}

The rules for the usual arithmetic conversions are divided into two cases:

1. The type of either operand is a floating type

Convert a narrower operand to wider type. If there's an integer type value, convert the type so that two types are of float type. ◊uc{whatever integer type doesn't matter. Would the memory no problem? If an integer type's bit size is greater than that of a float type?}

long double > double > float

2. Neither operand type is a floating type

Apply integral promotion on both operands first. Then apply on the narrower operand the promotion with the order below.

unsigned long int > long int > unsigned int > int

◊bold{Conversion During Assignment}

The type of the value that results from the ◊exp on the right side is converted to the type of ◊var on the left side. If the type of ◊var on the left is at least as wide as the ◊exp on the right, no problem. But if the type of ◊var on the left is narrower than the ◊exp on the right, there's a danger of losing a precision.

Because a floating-point constant ◊uc{have} ◊type{double} by default, assigning a floating-point constant to ◊type{float} ◊var may raise a warning, because converting ◊type{double} to ◊type{float} has the danger of precision.

It's good to append the f suffix to a floating-point constant that will be assigned to a ◊type{float} variable. ◊uc{check chapter 2 where this is described}.

◊later{◊bold{Implicit Conversions in C99}}

for details, read 146-147p.

◊bold{Casting}

Casting is another conversion method. It gives you a greater control over type conversion than the usual arithmetic conversions.

◊form{ ( type-name ) expression }

This expression converts the type of ◊code{expression} into the type specified in ◊code{type-name}. If casting expression is an operand of binary operation, the "casted" type will be affected by ◊ref{◊bold{The Usual Arithmetic Conversion}} rule.

In ◊code{frac_part = f - (int) f;}, the type casting ◊code{(int)} is applied to ◊code{f} to make its type int, cutting its fractional part from its value. But after that, its type is converted back to type ◊code{float} before the subtraction can be performed, because the usual arithmetic conversion is applied. As one has ◊type{float} and another has (temporary) ◊type{int}, the ◊type{int} is converted to ◊type{float} by the rule.

Sometimes C regards ◊code{(type-name)} as a unary operator. It might different result from our intention. ◊uc{But could it be matter?}

Operator precedence could twist your intention in an ◊|exp|, so be careful to get an intended result (as a solution, use parenthesis.)


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
