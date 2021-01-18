#lang pollen

◊title{selection statements}

◊section{}

Considering its plenty ◊|op|s, C has few kinds of statements: selection, iteration, jump, compound, null. This chapter discusses the selection ◊|st|s and the compound ◊|st|, and its preliminaries. To use selection ◊|st|s, we need a border to decide which way to go. In this case, we use logical ◊|expr|s. As we saw in expressions chapter, ◊|expr|s returns a value. logical ◊|expr|s are the same. C checks the value evaluated from logical ◊|expr|s, and use it as a border to choose which way to go. As we use ◊|op|s to build more complicate ◊|expr|s, logical ◊|expr|s use the relational, the equality, and the logical ◊|op|s to build more complicate one.

◊section{logical expressions}

Some statements need to check the value evaluated from an ◊|expr| to decide where to go. Logical ◊|expr| is an ◊|expr| used in the case. Relational ◊|op|s are the building blocks of the logical ◊|expr|s.

◊bold{Relational ◊|op|s}

check if relation of the two operands of ◊|op| is true. Relations are below:

◊quick-table{
symbol | meaning
< | less than
> | greater than
<= | less than or equal to
>= | greater than or equal to
}

If the relational ◊|op|s and the arithmetic ◊|op|s come at the same time, C evaluates the arithemetic ◊|op|s before relational ones. For multiple relational ◊|op|s, the most left one is evaluated first, and the evaluation goes to right direction.

◊bold{Equality ◊|op|s}

◊quick-table{
symbol | meaning
== | equal to
!= | not equal to
}

Like the relational ◊|op|s, the equality ◊|op|s are left associative. If the equality ◊|op|s and the relational ◊|op|s come at the same time, C evaluates the relational ◊|op|s before equality ◊|op|s.

◊bold{Logical ◊|op|s}

Using the logical ◊|op|s, we can build more complicated logical ◊|expr|s.

◊quick-table{
symbol | meaning
! | logical negation
&& | logical and
|| | logical or
}

When using ◊code{expr1 || expr2}, it'll be false only when both exprs are false. Binary logical ◊|op|s (&&, ||) act like "short circuit", meaning, if a value of left operand (that is, ◊|expr|) gives clear clue that the whole ◊|expr| is true or false, the right operand will not be evaluated.

If the logical ◊|op|s comes with the relational ◊|op|s and the equality ◊|op|s at the same time, the logical ◊|op|s are evaluated after other ◊|op|s. The unary negation ◊|op| is right associative; the other logical ◊|op|s are left associative.

◊section{the if statement}

◊code{ if ( expression ) statement }

If the value evaluated from ◊|expr| inside parantheses is nonzero, execute the ◊|st| after closing parentheses.

◊bold{Compound statements}

If you want to execute multiple ◊|st|s, but approved to use only one ◊|st|. It's a ◊|st|, but doesn't end with semicolon.

◊bold{The else Clause}

◊code{ if ( expression ) statement else statement }

If you want to execute a statement when the value evaluated from ◊|expr| inside parentheses is zero, use else clause.

Like nesting multiple if ◊|st|s, when it's confusing to distinguish the border of a statement, wrap the statement with braces, even when there's only one statement. 

◊bold{Cascaded if Statements}

◊bold{The "Dangling else" Problem}

◊bold{Conditional Expressions}

◊bold{Boolean values in C89}

◊bold{Boolean values in C99}


◊section{the switch statement}

A constant expression is an expression that cannot have variables or function calls.


◊bold{The Role of the break statement}

