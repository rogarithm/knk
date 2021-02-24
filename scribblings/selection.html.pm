#lang pollen

◊title{selection statements}

◊section{}

◊strong{
operator precedence is:
(high) arithmetic -> relational -> equality -> logical (low)
}

Considering its plenty ◊|op|s, C has few kinds of statements: selection, iteration, jump, compound, null. This chapter discusses the selection ◊|st|s and the compound ◊|st|, and its preliminaries. To use selection ◊|st|s, we need decide which way to go. In this case, we use logical ◊|expr|s. As we saw in expressions chapter, ◊|expr|s returns a value. logical ◊|expr|s are the same. C checks the value evaluated from logical ◊|expr|s, and use it to choose which way to go. As we use ◊|op|s to build more complicate ◊|expr|s, logical ◊|expr|s use the relational, the equality, and the logical ◊|op|s to build more complicate ◊|expr|.

◊section{logical expressions}

Some statements check the value evaluated from an ◊|expr| to decide where to go. Logical ◊|expr| is an ◊|expr| used in the case. Relational ◊|op|s are building block of the logical ◊|expr|s.

◊bold{Relational operators}

This ◊op checks relation of its operands is true or not. Relations are below:

◊quick-table{
 symbol | meaning
   <    | less than
   >    | greater than
   <=   | less than or equal to
   >=   | greater than or equal to
}

If the relational ◊|op|s and the arithmetic ◊|op|s come at the same time, ◊strong{C evaluates the arithemetic ◊|op|s first}. The ◊|op|s are left associativity. ◊verbose{For multiple relational ◊|op|s, the most left one is evaluated first, and the evaluation goes to right direction}.

◊bold{Equality operators}

◊quick-table{
 symbol | meaning
   ==   | equal to
   !=   | not equal to
}

Like the relational ◊|op|s, the equality ◊|op|s are left associative. If the equality ◊|op|s and the relational ◊|op|s come at the same time, ◊strong{C evaluates the relational ◊|op|s before equality ◊|op|s}.

◊bold{Logical operators}

Using the logical ◊|op|s, we can build more complicated logical ◊|expr|s.

◊quick-table{
 symbol | meaning
   !    | logical negation
   &&   | logical and
   ||   | logical or
}

When using ◊code{expr1 || expr2}, it'll be false only when both exprs are false. Binary logical ◊|op|s (&&, ||) act like "short circuit", meaning, if a value of left operand (that is, ◊|expr|) gives clear clue that the whole ◊|expr| is true (or false), the right operand isn't evaluated.

If the logical ◊|op|s comes with the relational ◊|op|s and the equality ◊|op|s at the same time, the logical ◊|op|s are evaluated after other ◊|op|s. The unary negation ◊|op| is right associative; the other logical ◊|op|s are left associative.


◊section{the if statement}

The simplest form of if ◊st is ◊code{if ( expression ) statement}. In the form, the parenthesis wrapping expression is mandatory. When an if ◊st is executed, the ◊exp in the parenthesis is evaluated; if the value evaluated from ◊|expr| inside parantheses is nonzero, execute the ◊|st|. If it is zero, exit without ◊st evaluation.

We can use logical ◊|expr|s (made using relational, equality, logical ◊|op|s) in the ◊code{(expression)} position like:

◊code{(0 <= i && i < n)} where ◊code{<=} and ◊code{<} are relational ◊|op|s, ◊code{&&} is logical ◊|op|.

◊bold{Compound statements}

We can execute multiple ◊|st|s when a condition of if ◊|st| is true. As you can see, there's only one ◊|st| in the if ◊|st|. We can solve this problem by using compound ◊|st|. Put multiple statements (each ends with a semicolon, as usual), and wrap them with braces. Compound statements are common in loops and other places where we want more than one statement but the syntax requires only one statement.

◊bold{The else Clause}

◊code{if ( expression ) statement else statement}

If you want to execute a statement when the expression has the value 0, you can use the ◊code{else} clause. Write the statement after ◊code{else}.


Multiple if ◊|st|s can be nested because any statement can be placed in the position for statement of if ◊|st|. If you feel confusing understanding the flow of nested if ◊|st|s, align each ◊code{else} with the matching ◊code{if}, and/or use braces. It makes the nesting easier to see.

Wrapping ◊|st|s with braces is helpful to see them easily, even when there's only one statement. 

◊bold{Cascaded if Statements}

When we nest an if-else statement in the else of another if-else statement, we can indent the nested statement under the outer else clause, but we can also make them not nested, which makes it seem "else if." When we don't indent ◊un{cascaded} if statements, we can avoid exessive indentation then there's many nesting.

◊bold{The "Dangling else" Problem}

When we see code like this:

◊codeblock{
if (y != 0)
 if (x != 0)
  result = x / y;
else
 printf("Error: y is equal to 0\n");
}

it's uncertain whether the else clause is belong to if near the clause or outer if. By default, when there's a "dangling else clause", it belongs to the nearest if statement. Proper indentation might be helpful. If what you want is to make the clause to the outer statement, use brace:

◊codeblock{
if (y != 0)
{
 if (x != 0)
  result = x / y;
}
else
 printf("Error: y is equal to 0\n");
}

◊bold{Conditional Expressions}

Instead of if ◊|st|, we can use conditional ◊|op|.

◊code{expr1 ? expr2 : expr3}

Its meaning is "if expr1 then expr2 else expr3." By evaluating expr1, when its value is true, the value of whole expression is the value of expr2, and if the value of expr1 is not true, the value of whole expression is the value of expr3.

The precedence of conditional expression is less than other operators discussed so far, except the assignment operators. So in most cases, the conditional expression will be applied at last.

It makes programs harder to understand, so usually it's better to avoid it. But there's some exceptions: for ◊code{return} ◊|st|, ◊code{printf} function, and defining macro.

◊bold{Boolean values in C89}

There's no Boolean type in C89 standard. We can workaround by declare an int variable and then assign it either 0 or 1, and use the values as false and true, respectively.

This method works, but lacks readability, and we cannot sure whether the variable "flag" is used only for boolean substitution. To make it more understandable, we can define macros:

◊codeblock{
#define TRUE 1
#define FALSE 0
}

Now it's more natural. We can also define a type as a macro:

◊code{#define BOOL int}

After this, we can declare using ◊code{BOOL} type like: ◊code{BOOL flag;}.

◊bold{Boolean values in C99}

C99 provides the ◊code{_Bool} type. It's an unsigned integer type that can only be assigned to 0 or 1.

<stdbool.h> header is provided that provides a macro ◊code{bool} that stands for ◊code{_Bool}. This header also supplies ◊code{true} and ◊code{false}, which stand for 1 and 0 respectively.

◊section{the switch statement}

A constant expression is an expression that cannot have variables or function calls.

◊bold{The Role of the break statement}

When a ◊code{break} statement is executed, the program leaves the statement, and proceed with the next statement.
