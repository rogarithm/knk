#lang pollen

e1 done. nothing to note.

* e2

e3 C89 flag for GCC: -ansi or -std=c89
◊link[https://stackoverflow.com/questions/1821952/gcc-options-to-enforce-ansi-c-standard-check]{from stack overflow}

Seems nothing to note. Every result is intuitive.

e4

Same result with e3.c. That is, C89 and C99 specification works the same way in this problem.

e5

% character can be escaped with %. Odd result: (c) 8 % -5 is 3, (d) -8 % -5 is -3

e6

Same odd result as e5. 

e7

When using original algorithm, it's computed as 9->9->0, whereas using "improved" one goes 1->9, which is not the same as the original.

e8

No. It'll behave differently if an input is 10, 20, or 30, and so on.

e9

operator precedence: compound assignment < binary operator? Yes. From the table 4.2, assignment operators have lower precedence than additive operators.

Because compound assignment operator's associativity is right, when there's more or equal to 2 operators, the operation will be performed from the rightmost one to the left, affecting the next assignment operation.

For example, in (c), ◊code{j -= k} is evaluated first, make ◊code{j} -1 (2-3), ◊code{k} 3. Then ◊code{i -= j} is evaluated. At this moment ◊code{j} is not 2, but -1 from the assignment. Thus ◊code{i -= j} makes ◊code{i} 2 (1-(-1)).

e10

warning for ◊code{i = 2.5}, ◊code{j = 3} generated. Is this intentional?

for (c), the result was 2, 8, whereas mine were 2.5, 8.5. What's the effect when assigning floating point value for a variable defined as integer?

* e11

e12

◊later{the explain below is verbose. refine later}.

for postfix operator, the evaluation of its operand is done after the expression enclosing the operator evaluated. That is, in the evaluation of the expression, the postfix operator doesn't modify its operand. On the other hand, the prefix operator modify its operand in the evaluation of the enclosing expression.

e13

from e12, ◊code{i += 1;} would be the same as ◊code{++i}, ◊uc{because ◊code{i++} would increment ◊code{i} after the statement, whereas ◊code{++i} would during the statement}.

◊later{is this right? how to test this?}

e14

need test?

e15

As you may have seen, statements (c) and (d) has no meaning except ◊code{++j} in (d).
