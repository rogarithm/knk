#lang pollen


◊title{expressions}

◊section{}

◊|expr|s are formulas that show how to compute a value. ◊|var|s and constants are ◊|expr|s. A ◊|var| is a value to be used to compute while program is running; a constant is a value that doesn't change. These simple form of ◊|expr|s build more complicated ◊|expr|s when combined with ◊|op|s, by playing a role of operands.

◊|op|s are used to make complicated ◊|expr|s (and these will compute a value eventually.) Get familiar with ◊|op|s is important in programming C.

This chapter covers C's most fundamental ◊|op|s: the arithmetic ◊|op|s, the assignment ◊|op|s, and the increment and decrement ◊|op|s. ◊|op| precedence and associativity are also covered.


◊section{arithmetic ◊|op|s}

◊quick-table{
 Unary  | Binary   | 
        | Additive | Multiplicative
+ plus  | + add    | * mult
- minus | - sub    | / div
        |          | % remainder
}

There's two kinds of ◊|op|: binary and unary. If an ◊|op| needs two operands, the ◊|op| is binary ◊|op|. But if an ◊|op| needs only one operand, the ◊|op| is unary ◊|op|.

Speaking of the remainder ◊|op|, the value of ◊code{i % j} is the remainder when i is divided by j. For example, the value of 10 % 3 is 1.

When mixing multiple type of operands (plus using ◊check-this{negative operands}), its result varies depending on ◊|op|s. If you need full explanation, read page 54.

◊bold{◊|op| precedence and associativity}

When an ◊|expr| have more than one ◊|op|, its value would be different depending on an application order of the ◊|op|s. You can use parentheses to clarify it, but what if we don't have one? Operator precedence determines the order.

Unary ◊|op|s have highest precedence; multiplicative ◊|op|s come next; additive ◊|op|s come last.

Operator with higher precedence evaluate its related operand(s) first. But when ◊|op|s that have the same precedence comes in one ◊|expr|, what ◊|op| the compiler use first? In this case, the associativity of the ◊|op|s comes into play. A left associative ◊|op| groups with its expression (the ◊|op| itself and its surrounding operand(s)) as a unit from left to right. The binary arithmetic ◊|op|s are all left associative. If an ◊|op| groups from right to left, the ◊|op| is right associative. The unary arithmetic ◊|op|s are right associative.

There's so many ◊|op|s in C. Don't try to memorize them all at the first time. Use parentheses, and search only when you need a specific information.


◊section{assignment ◊|op|s}

If you want to use the value of computation result of an ◊|expr|, you need to store it in a ◊|var|. In this case, use ◊code{=} (simple assignment) ◊|op|. For updating the value already stored in the ◊|var|, use compound assignment ◊|op|s.

◊bold{Simple Assignment}

The assignment statement (as an example) ◊code{v = e} evaluate the ◊|expr|(could be a constant, a ◊|var|, or a more complicated ◊|expr|) ◊code{e} and copy its value into ◊code{v}.

Unlike other languages, in C, assignment is an ◊|op|, just like ◊op{+}. Evaluating the ◊|expr| ◊code{i = 0} produces the result (that is, ◊uc{returns} a value) ◊code{0} and ,as a side effect, assigns ◊code{0} to ◊code{i}. If it were other languages, they just assigns 0 to i as their main (not side) effect and ◊uc{cannot be used in an expression.}

◊bold{Lvalues}

The assignment ◊|op| needs an lvalue as its left operand. The lvalue is ◊uc{an ◊uc{object} stored in computer memory}, ◊strong{not a constant or a result of a computation}. From the condition, ◊var is the only thing that can be an lvalue. Why? Because we (a) can't use a constant, and (b) can't use an expression that is a ◊uc{result of a computation}. Judging from the argument, among candidates of operands (◊|var|s, constants, and ◊|expr|s), only ◊|var| is the only element that can be lvalues for now.

◊uc{From 60p of the book (85p in pdf), ◊code{-i = j;} is said to be wrong. But as mentioned above, -i is a variable. Then why it's wrong?}

◊bold{Compound assignment}

When you assigned ◊|var| in ◊check-this{another assignment} to use its value, C's compound assignment ◊|op|s let you shorten the statement. That is, ◊code{i = i + 2;} can be ◊code{i += 2;}. But those two are not the same exactly, becuase there's some rare cases where the difference occurs. It'll be mentioned in later chapter.


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

Yet another is by ◊code{++}, ◊code{--} ◊|op|s. These can be used as prefix ◊|op|s (that is, comes before operand) or postfix ◊|op|s (that is, comes after operand). Each version yields either increment or decrement at different time, so be careful to use. Also, as these are ◊|op|s, these have side effects: they modify the values of their operands. Evaluating the ◊|expr| ◊code{++i} ◊uc{returns} ◊code{i + 1} and as a side effect, increments ◊code{i}.

If it's hard to understand when multiple ◊|op|s like these come, modify them as separate assignment statements.

◊section{expression evaluation}

◊quick-table{
precedence | name | symbol(s) | associativity
1 | increment (postfix) | ++               | left
  | decrement (postfix) | --               |
2 | increment (prefix)  | ++               | right
  | decrement (prefix)  | --               |
  | unary plus          | +                |
  | unary minus         | -                |
3 | multiplicative      | * / %            | left
4 | additive            | + -              | left
5 | assignment          | = *= /= %= += -= | right
}

◊bold{Order of Subexpression Evaluation}

Operator precedence and associativity rules let us know how the elements of an expression should be collected each other to determine uniquely where the parenthesis would go if the expression were fully parenthesized. But it doesn't mean we can always estimate the value of the expression. For multiple subexpressions with the same precedence, (with the exception of subexpressions involving the logical and, logical or, conditioinal, and comma operators) C doesn't determine the order, that is, which subexpression will be evaluated first, and second, and so on. So in ◊c{(a + b) * (c - d)}, we don't know whether ◊c{(a + b)} or ◊c{(c - d)} will be evaluated first.

When a subexpression contains an assignment, the result of the statement is undefined:

◊c{c = (b = a + 2) - (a = 1);}

Do not write like this. Its value is always uncertain. Separate the assignment operators from expressions to individual statement.

◊c{j = i * i++;}

Same as the increment (or decrement) operator.

◊uc{fetching a ◊|var|} means to retrieve the value of the ◊|var| from memory.


◊section{expression statements}

Any ◊|expr| can be turned into a statement by appending a semicolon.

In the ◊code{i = 1;}, ◊code{1} is stored into ◊code{i}, then the new value of ◊code{i} is fetched but not used:

In the ◊code{i--;}, the value of ◊code{i} is fetched but not used; however, ◊code{i} is decremented afterwards:

In the ◊code{i * j - 1;}, the value of the ◊|expr| ◊code{i * j - 1} is computed and then discarded:
