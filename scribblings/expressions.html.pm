#lang pollen

◊(define exp expression)
◊(define op operator)
◊(define var variable)
◊(define val value)

◊title{◊|exp|s}

◊section{}

◊|exp|s are formulas that show how to compute a ◊|val|. Variables and constants are ◊|exp|s. A ◊|var| is a ◊|val| to be used to compute while program is running; a constant is a ◊|val| that doesn't change. These simple form of ◊|exp|s build more complicated ◊|exp|s when combined with ◊|op|s, playing a role of operands.

◊|op|s are used to make complicated ◊|exp|s (and they'll compute a ◊|val| eventually.) Get familiar with ◊|op|s is important point in programming C.

This chapter covers C's most fundamental ◊|op|s: the arithmetic ◊|op|s, the assignment ◊|op|s, and the increment and decrement ◊|op|s. ◊|op| precedence and associativity are also covered.


◊section{arithmetic ◊|op|s}

◊quick-table{
Unary		| Binary 	   |
				| Additive   | Multiplicative
+ plus  | + addition | * multiplication
- minus | - subtraction | / division
				|					   | % remainder
}

There's two kinds of ◊|op|: binary and unary. If an ◊|op| needs two operands, the ◊|op| is binary ◊|op|. But if an ◊|op| needs only one operand, the ◊|op| is unary ◊|op|.

Speaking of the remainder ◊|op|, the ◊|val| of ◊code{i % j} is the remainder when i is divided by j. The ◊|val| of 10 % 3 is 1.

About mixing multiple type of operands (plus using negative operands), its result varies depending on ◊|op|s. When you need full explanation, read page 54.

◊bold{◊|op| precedence and associativity}

When an ◊|exp| have more than one ◊|op|, its ◊|val| would be different depending on the application order of the multiple ◊|op|s. You can use parentheses to clarify it, but what if we don't have one? Operator precedence determines the order.

Unary ◊|op|s have highest precedence; multiplicative ◊|op|s come next; additive ◊|op|s come last.

Operator with higher precedence evaluate its related operand(s) first. But when ◊|op|s that have the same precedence comes in one ◊|exp|, what ◊|op| the compiler use first? The associativity of the ◊|op|s comes into play. An ◊|op| is said to be left associative when it groups from left to right. The binary arithmetic ◊|op|s are all left associative. If an ◊|op| groups from right to left, it is said toOperator  be right associative. The unary arithmetic ◊|op|s are right associative.

There's so many ◊|op|s in C. Thus don't try to memorize them all. Use parentheses.


◊section{assignment ◊|op|s}

If you want to use the ◊|val| of computation result of an ◊|exp|, you need to store it in a ◊|var|. In this case, use = (simple assignment) ◊|op|. For updating the ◊|val| already stored in the ◊|var|, use compound assignment ◊|op|s.

◊bold{simple assignment}

The assignment statement ◊code{v = e} evaluate the ◊|exp|(could be a constant, a ◊|var|, or a more complicated ◊|exp|) ◊code{e} and copy its ◊|val| into ◊code{v}.

Not alike other languages, in C, assignment is an ◊|op|, just like +. Evaluating the ◊|exp| ◊code{i = 0} produces the result(that is, returns a ◊|val|) ◊val{0} and-as a side effect-assigns 0 to i. ◊uncertain{If it were other languages, they just assigns 0 to i as their main(not side) effect and cannot be used in an expression.

◊bold{L◊|val|s}

The assignment ◊|op| needs an l◊|val| as its left operand. The l◊|val| is ◊uncertain{an object stored in computer memory}, not a constant or a result of a computation. For candidates of operands (◊|var|s, constants, and ◊|exp|s), only ◊|var|s are the only l◊|val|s for now.

◊bold{Compound assignment}

When you assigned ◊|var| in another assignment to use its ◊|val|, C's compound assignment ◊|op|s let you shorten the statement. That is, ◊code{i = i + 2;} can be ◊code{i += 2;}. But those two are not the same exactly. ◊code{v += e} adds ◊code{v} to ◊code{e}, storing the result in ◊code{v}. There's some rare cases where the difference occurs. It'll be mentioned in later chapter.


◊section{increment and decrement ◊|op|s}

C provides several ways for incrementing (adding 1) and decrementing (subtracting 1).

One is by assignment.
◊codeblock{
i = i + 1;
j = j - 1;
}

Another is by compound assignment.
◊codeblock{
i += 1;
j -= 1;
}

Yet another is by ◊code{++}, ◊code{--} ◊|op|s. These can be used as prefix ◊|op|s (that is, comes before operand) or postfix ◊|op|s (that is, comes after operand). Each version yields increment (or decrement) in different time, so be careful to use. Also, as these are ◊|op|s, these have side effects: they modify the ◊|val|s of their operands. Evaluating the ◊|exp| ◊code{++i} ◊uncertain{returns} ◊code{i + 1} and increments ◊code{i} (as a side effect}.

If it's hard to understand when multiple ◊|op|s like these come, modify them as separate assignment statements each.

◊section{◊|exp| evaluation}

◊bold{Order of Sub◊|exp| Evaluation}

We can break any complicate ◊|exp|s into sub◊|exp|s by using the rules of ◊|op| precedence and associativity. But here's a problem that there's a chance of defining the order of evaluation of these sub◊|exp|s. If a subexpression modifies one of its operands, its result is undefined. If you need it, separate the original expression into individual statements.

◊uncertain{fetching a ◊|var|} means to retrieve the ◊|val| of the ◊|var| from memory.


◊section{◊|exp| statements}

Any ◊|exp| can be turned into a statement by appending a semicolon.

In the first example, 1 is stored into i, then the new ◊|val| of i is fetched but not used:

◊codeblock{i = 1;}

In the second example, the ◊|val| of i is fetched but not used; however, i is decremented afterwards:

◊codeblock{i--;}

In the third example, the ◊|val| of the ◊|exp| i * j - 1 is computed and then discarded:

◊codeblock{i * j - 1;}

