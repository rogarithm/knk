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

소수점 뒤 숫자가 있는 수, 아주 작거나 아주 큰 수가 필요할 때 floating type을 쓴다. float, double, long double 세 가지의 floating type이 있는데, 순서대로 갈수록 더 정확한 값을 담을 수 있다.

◊bold{Floating Constants}

floating constant를 쓸 때, 소수점과 exponent 둘 중 적어도 하나는 꼭 넣어야 한다. exponent는 주어진 floating constant를 얻기 위해 10을 거듭제곱할 횟수를 말한다. 앞에는 e를 쓰고, 부호가 필요하다면 e와 횟수 사이에 쓴다.

◊bold{Reading and Writing Floating-Point Numbers}

앞서 내용과 동일하게, double이나 long double type ◊|val|을 printf나 scanf 함수에서 쓰려면 그에 맞는 ◊|conv-spec|을 써주어야 한다. type, 함수, C compiler에 따라 조금씩 다를 수 있기 때문에 찾아보고 바꿔준다.

◊section{character types}

◊bold{Operations on Characters}

◊em{C에선 문자를 작은 정수로 본다.} 각각의 문자는 숫자 하나씩을 갖는다. 문자가 연산식 안에 나오면, C는 그 문자에 해당하는 정수값을 연산에 쓴다.

문자 비교는 숫자를 비교할 때와 같다. 두 문자에 해당하는 정수값을 갖고 어떤 값이 더 크고 작은지를 본다.

◊bold{Signed and Unsigned Characters}


