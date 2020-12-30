#lang pollen

◊(define t type)
◊(define un uncertain)

◊title{basic types}


◊section{integer types}

In C, there's two numeric types: integer types and floating types.

◊|val|s of the integer types can be either positive or negative numbers. By default, ◊|val|s of ◊t{int} types can have negative and positive numbers, so we can use the values. But if we only needs ◊|val|s of positive number (plus zero), we can use ◊t{unsigned int}, that enables us to use larger number than the ◊|val|s of ◊t{signed int} as we can use memory that was assigned for negative integers to assign positive numbers.

There's a situation where we need a number more than (or lesser than) the memory of ◊t{int} can handle. C provides solution for these cases. For the case where larger number (thus larger memory) required, we can use ◊t{long}, and for the case where lesser number (thus lesser memory) required, we can use ◊t{short}.

We can also combine specifiers to build an integer type that meets our exact needs. By default, one (or none) of ◊t{short, long} and one (or none) of ◊t{signed, unsigned} and then ◊t{int} is the scenario. The order of specifiers (that is, the candidates except ◊t{int}) doesn't matter. ◊t{int} has to be the last word, but anything else's order isn't important. We also can drop the ◊t{int} when we use integer types.

As CPUs and memories capable in each computer varies, the range of ◊|val|s represented by six integer types varies from one machine to another. But there's a minimum rules that every compilers must obey. If you want to know, see 127p.

◊bold{Integer Types in C99}

C99 provides additional integer types, ◊t{long long int} and ◊t{unsigned long long int}. ◊uc{Both types are for 64-bit, and ranges for the 64-bit}.

◊bold{Integer Constants}

Constants are numbers that appear in the ◊uc{text} of a program, not numbers that are read, written, or computed. Integer constants in C can be written in decimal, octal, or hexadecimal. If you want to use octal constants, they must begin with 0. If you want to use hexadecimal constants, they must begin with 0x (case insensitive). In heart, the three constants are just an alternative way of writing numbers. It's just a matter of notation.

By default, integer constants' type is determined by the compiler depending on the ◊|val|'s size. The compiler changes type of the constant if it doesn't fit to an assigned memory of that type. If you want to set the type of an integer constant at the first time, append a proper letter at the end of the constant. If you needs details, check 129p.

◊bold{Integer Constants in C99}

Because C99 provides ◊t{long long int} and ◊t{unsigned long long int}, ll and ull(or llu) (these are all case insensitive) can be used to specify a ◊|val|'s type.

How a compiler choose the type of a ◊val of integer constant is different from C89 compiler. If you need detail, check 129-130p.

◊bold{Integer Overflow}

When you evaluate arithmetic operations on integers, the type of the result is the same type of operands'. If the result can't be represented by the result type's memory capacity, the overflow occurs.

When the operands are signed, the program's behavior is undefined, whereas when the operands are unsigned, the program's behavior is defined. Because the overflow may affect other aspect of program, it should be avoided.

◊bold{Reading and Writing Integers}

연산 결과가 integer overflow를 일으킨다면 그 operand ◊|t|을 바꿔야 한다. 이때 이들 operands가 printf나 scanf 등에서 쓰인다면, 바꾼 ◊|t|에 맞게 이들 함수 안 내용을 수정해줘야 한다. 필요한 ◊|conv-spec|을 알아보고 바꿔준다.

◊quick-table{
type\notation | ◊?{int} | decimal | octal | hexadecimal
◊t{unsigned int} | d | u | o | x
◊t{short int} | hd | hu | ho | hx
◊t{long int} | ld | lu | lo | lx
◊t{long long int} | lld | llu | llo | llx
}

◊section{floating types}

When we need ◊|var|s to store numbers with decimal point, or exceedingly large or small, we can use floating types. C provides ◊t{float}, ◊t{double}, ◊t{long double}.

Because different computers have different specifications, the precision of floating types varies. But most modern computers follow the specifications in IEEE Standard 754.

◊bold{Floating Constants}

A floating constant needs a decimal point and/or an exponent; you can use either one of them, or use both. To use an exponent, append letter e before the exponent. ◊uc{The exponent describes the number to be used to scale with power of 10}.

◊uc{By default, floating constants are stored in memory in the same format as a ◊t{double} ◊|var|. As constants are not "variable", we cannot say something like "a ◊var for floating constant". But a floating constant should be stored in a memory anyway.}

If you want a floating constant to be stored in specific format, you can indicate the format by appending a proper letter at the end of the constant. For example, if you want ◊const{57.0} to be stored in a ◊uc{◊t}{long} format, write as ◊const{57.0L}.

◊bold{Reading and Writing Floating-Point Numbers}

%e, %f, and %g are the ◊|conv-spec|s for reading and writing single-precision floating-point numbers. ◊|val|s for ◊t{double} and ◊t{long double} needs differnet ◊|conv-spec|s.

◊quick-table{
type\◊conv-spec | | |
◊t{float} | e | f | g
◊t{double} | le | lf | lg
◊t{long double} | Le | Lf | Lg
}

◊conv-spec for ◊t{double} should be used only in scanf function.


◊section{character types}

The ◊|val|s of char type may vary on different machines.

◊bold{Operations on Characters}

Each characters has the corresponding integer value. Therefore, if a ◊t{char} ◊|val| comes in an ◊|exp|, it'll be treated as an ◊t{int} ◊|val| assigned for the character. As I mentioned before, different machine may have different character set and ◊|val|s, so be careful to use ◊t{char} ◊|val|s in ◊|exp|s.

◊bold{Signed and Unsigned Characters}

Like the integer types, ◊t{char} type could be signed and unsigned.

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

This conversion is applied for operands of most binary operators, including the arithmetic, relational, and equality operators. When the types of operands are not the same, the conversion happens. Operands are converted in a way that their precision mostly preserved. There's a danger when an operand's size is beyond its type's capacity, resulting to overflow, and then gives meaningless ◊|val|.

The strategy that the compiler uses is ◊uc{to convert the "narrower" (that is, requires fewer bytes to store ◊uc{}) type to another operand's type}. This strategy is called promotion. Integral promotions which is one of the promotions, convert a ◊t{char} or ◊t{short} integer to ◊t{int} integer. 

The rules for the usual arithmetic conversions are divided into two cases:

- The type of at least one operand is a floating type

convert a narrower operand to these type (bigger type first applied)

long double > double > float

- Neither operand type is a floating type

same as above rule

unsigned long int > long int > unsigned int > int

for detail, read 144p.

◊bold{Conversion During Assignment}

◊bold{Implicit Conversions in C99}

◊bold{Casting}


◊section{type definitions}

◊bold{Advantages of Type Definitions}

◊bold{Type Definitions and Portability}


◊section{the ◊op{sizeof} operator}
