#lang pollen


◊title{loops}


◊section{}

◊em{Loops are the same with iteration statements. That is, loop belongs to a statement.}. loop (or iteration) is a statement that iterates executing a loop body (which is also statement). Whether executing the loop body is determined by evaluating controlling expression. C's three loops have different timing to test controlling expression.

◊code{for} loop has a comma operator. 


◊section{the ◊code{while} statement}

◊form{
while ( expression ) statement

the expression after ◊code{while} acts as a controlling expression. The statement is a loop body.
}

Evaluating controlling expression returns value. If the return value is true, execute loop body. If not, ◊uc{leave out from the loop body}.

If you want to use multiple statements in a loop body, wrap those statements with braces (open brace is preceded a head of first statement, close brace is followed by tail of last statement):

◊codeblock{
while (i != num)
{
		exp1;
		exp2;
		exp3;
		...
}
}

In the code above, because the ◊code{while} statement tests the controlling expression before executing the loop body, there's a case when the while loop may not executed.

◊bold{Infinite Loops}

If you make an infinite loop with ◊code{while(1)}, you need to make a way out of the loop. As examples, you can call a statement to get out of the loop, or call a function to exit the program.


◊section{the ◊code{do} statement}

◊form{
do statement while ( expression ) ;
}

Wrapping braces even when there's only one statement helps to understand the structure of ◊code{do} statement more easily.


◊section{the ◊code{for} statement}

◊form{
for ( expr ; expr ; expr ) statement

First expression is an initializer; second one is condition for termination; third one is an operation while ◊uc{iterate}.
}

You can convert ◊code{for} statement into ◊code{while} statement:

◊form{
expr;
while ( expr )
{
  statement
  expr;
}
}

◊bold{◊code{for} statement idioms}

Value of a counter changes as iteration preceeds. In general, we use counter value at every phase of loop until the value reach a specific value. When you write controlling expression, if you use ◊code{==}, the loop checks for the case ◊code{i == n}. Because it's not the way counter is used generally, the ◊code{==} isn't proper use.

◊bold{Ommiting expressions in a ◊|st|{for} statement}

The three expressions of ◊code{for} statement can be omitted in every possible combination, but the ◊code{;} between them cannot be omitted.

If you omitted expressions, you must check and refine (if needed) the loop to be executed normally.

◊bold{◊code{for} statements in C99}

In C99, a declaration could be used as an expression of ◊code{for} statement. The scope of this declaration is valid only in the ◊code{for} statement. If a ◊uc{variable} declared inside ◊code{for} statement should be used outside of the statement, this method should not be used.

◊bold{The comma operator}

In ◊code{for} statement, if multiple expressions should be initialized, or multiple variables should be increased in every iteration, use comma operator.

◊form{
expr1 , expr2
}

First, evaluating ◊code{expr1}, throw away the return value of ◊code{expr1}. After that, evaluate ◊code{expr2} and set the return value as the value of entire expressions. Because the return value of ◊code{expr1} is depreciated, there's no meaning to add ◊code{expr1} if it doesn't have a side effect.


◊section{exiting from a loop}

Statement used when you need to get out of the loop in the middle of it, or when you need more than two points to get out.

◊bold{the ◊code{break} statement}

◊codeblock{
while (...) {
  switch (...) {
    ...
		break;
		...
  }
}
}

The break statement go outside from the statement that wraps itself. So in nested code like above, when ◊code{break} is executed, only get out of the ◊code{switch} statement, and leave in the ◊code{while} statement.

◊bold{the ◊code{continue} statement}

◊bold{the ◊code{goto} statement}

◊code{Break}, ◊code{continue} statement can move into ◊uc{selected} point. However, ◊code{goto} statement can move anywhere in the statement based on a lable.
