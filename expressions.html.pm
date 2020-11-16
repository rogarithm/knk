#lang pollen

◊title{expressions}

◊section{
expressions are formulas that show how to compute a value. Variables and constants are expressions. A variable is a value to be used to compute while program is running; a constant is a value that doesn't change. These simple form of expressions build more complicated expressions when combined with operators, playing a role of operands.

Operators are used to make complicated expressions (and they'll compute a value eventually.) Get familiar with operators is important point in programming C.

This chapter covers C's most fundamental operators: athe arithmetic ops, the assignment ops, and the increment and decrement ops. Operator precedence and associativity are also covered.
}

◊section{arithmetic operators

◊itemlist[
	◊itemlist[◊item{unary operators}
		◊item{+: unary plus}
		◊item{-: unary minus}
		]
	◊itemlist[◊item{binary operators}
			◊itemlist[◊item{additive}
				◊item{+: addition}
				◊item{-: subtraction}
				]
			◊itemlist[◊item{multiplicative}
				◊item{*: multiplication}
				◊item{/: division}
				◊item{%: remainder}
				]
		]
	]

There's two kinds of operator: binary and unary. If an operator needs two operands, the operator is binary operator. But if an operator needs only one operand, the operator is unary operator.
Speaking the remainder operator, the value of ◊code{i % j} is the remainder when i is divided by j. The value of 10 % 3 is 1.

About mixing multiple type of operands (plus using negative operands), its result varies depending on operators. When you need specification, read page 54 of knk.

◊sub-section{operator precedence and associativity

When an expression have more than one operator, its value would be different depending on the application order of the multiple operators. You can use parentheses to clarify it, but what if we don't have one? Operator precedence determines the order.

Unary operators have highest precedence; multiplicative operators come next; additive operators come last.

Operator with higher precedence evaluate its related operand(s) first. But when operators that have the same precedence comes in one expression, what operator do you use first? The associativity of the operators comes into play. An operator is said to be left associative when it groups from left to right. The binary ops are all left associative. If an operator groups from right to left, it is said to be right associative. The unary arithmetic ops are right associative.

There's so many operators in C. Thus don't try to memorize them all. Use parentheses.}

}

◊section{assignment operators

If you want to use the value from computing an expression, you need to store it in a variable. In this case, use = (simple assignment) operator. For updating the value already stored in the variable, use compound assignment operators.

◊sub-section{simple assignment

The assignment statement ◊code{v = e} evaluate the expression(could be a constant, a variable, or a more complicated expression) ◊code{e} and copy its value into ◊code{v}.

Not alike other languages, in C, assignment is an operator, just like +. Evaluating the expression i = 0 produces the result(that is, returns a value) 0 and–as a side effect–assigns 0 to i. ◊uncertain{If it were other languages, they just assigns 0 to i as their main(not side) effect and cannot be used in an expression.} 


