#lang pollen

◊title{selection ◊|st|s}

◊section{}

Considering its plenty ◊|op|s, C has few kinds of statements. Its list is: selection, iteration, jump, compound, null. This chapter discusses the selection ◊|st|s and the compound ◊|st|, and its preliminaries. To use selection ◊|st|s, we need a border to decide which way to go. In this case, logical ◊|exp|s are used. As we saw in ◊|expressions.html.pm|, ◊|exp|s returns a ◊|val|. logical ◊|exp|s are the same. C checks the ◊|val| evaluated from logical ◊|exp|s, and use it to choose which way to go. As we use ◊|op|s to build more complicate ◊|exp|s, logical ◊|exp|s use the relational, the equality, and the logical ◊|op|s.

◊section{logical ◊|exp|s}

Some statements need to check the value evaluated from an expression to decide where to go. Logical ◊|exp| is an ◊|exp| used in this. ◊|op|s below are the building blocks of the logical ◊|exp|s.

◊bold{Relational ◊|op|s}

check if relation of the two operands of ◊|op| is true. Relations are below:

◊quick-table{
symbol	|	meaning
<	|	less than
>	|	greater than
<=	|	less than or equal to
>=	| greater than or equal to
}

If the relational ◊|op|s and the arithmetic ◊|op|s come at the same time, C evaluates the arithemetic ◊|op|s before relational ones. For multiple relational ◊|op|s, the most left one is evaluated first, and the evaluation goes to right direction.

◊bold{Equality ◊|op|s}

◊quick-table{
symbol	|	meaning
==	|	equal to
!=	|	not equal to
}

Like the relational ◊|op|s, the equality ◊|op|s are left associative. If the equality ◊|op|s and the relational ◊|op|s come at the same time, C evaluates the relational ◊|op|s before equality ◊|op|s.

◊bold{Logical ◊|op|s}

Using the logical ◊|op|s, we can build more complicated logical ◊|exp|s.

◊quick-table{
symbol	|	meaning
!	|	logical negation
&&	|	logical and
||	|	logical or
}

When using ◊exp{expr1 || expr2}, it'll be false only when both exprs are false. Binary logical ◊|op|s (&&, ||) act like "short circuit", meaning, if a ◊|val| of left operand (that is, ◊|exp|) gives clear clue that the whole ◊|exp| is true or false, the right operand isn't evaluated.

If the logical ◊|op|s comes with the relational ◊|op|s and the equality ◊|op|s at the same time, the logical ◊|op|s are evaluated after other ◊|op|s. The unary negation ◊|op| is right associative; the other logical ◊|op|s are left associative.

◊section{the if statement}

◊st{

if ( expression ) statement

}

If the ◊|val| evaluated from ◊|exp| inside parantheses is nonzero, execute the ◊|st| after closing parentheses.

◊bold{Compound statements}

If you want to execute multiple ◊|st|s, but approved to use only one ◊|st|. It's a ◊|st|, but doesn't end with semicolon.

◊bold{The else Clause}

◊st{

if ( expression ) statement else statement

}

If you want to execute a statement when the ◊|val| evaluated from ◊|exp| inside parentheses is zero, use else clause.

Like nesting multiple if ◊|st|s, when it's confusing to distinguish the border of a statement, wrap the statement with braces, even when there's only one statement to wrap. 

◊bold{Cascaded if Statements}

◊bold{The "Dangling else" Problem}

◊bold{Conditional Expressions}

◊bold{Boolean ◊|val|s in C89}

◊bold{Boolean ◊|val|s in C99}


◊section{the switch ◊|st|}


◊bold{The Role of the break ◊|st|}

