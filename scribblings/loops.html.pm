#lang pollen


◊title{loops}


◊section{}

◊em{Loops are the same with iteration statements. That is, loop belongs to a statement.}. loop (or iteration) is a statement that iterates executing a loop body (also statement). Whether executing the loop body is determined by a value of controlling expression evaluation. C's three loops are different in their timing when to test controlling expression.


◊section{the ◊code{while} statement}

◊form{while ( expression ) statement}

The expression after ◊code{while} acts as a controlling expression. The statement is a loop body.

Evaluating controlling expression returns value. If the return value is true, the loop body of the statement is executed. If not, leave out from the loop body without execution.

If you want to use multiple statements in a loop body (, which only permits one statement), use a compound statement:

◊codeblock{
while (i != num) {
		exp1;
		exp2;
		exp3;
		...
} }

Because the ◊code{while} statement tests the controlling expression before executing the loop body, the while loop may not executed at all.

◊bold{Infinite Loops}

We can make an infinite loop like ◊code{while(1)}. When you make an infinite loop, you have to make a way out of the loop. As examples, a statement to get out of the loop, or a function to exit the program.


◊section{the ◊code{do} statement}

◊code{do} statement is just a ◊code{while} statement whose controlling expression is tested ◊strong{after} each execution of the loop body (and it makes the loop body of a ◊code{do} statement always executed at least once).

◊form{do statement while ( expression ) ;}

Wrapping braces helps to understand the structure of ◊code{do} statement more easily because it can be mistaken for a ◊code{while} statement without braces even when there's only one statement for a loop body.


◊section{the ◊code{for} statement}

◊form{for ( expr1 ; expr2 ; expr3 ) statement}

First expression is an initializer; second one is a condition for termination; third one is an operation while iteration.

You can convert ◊code{for} statement into ◊code{while} statement:

◊form{expr1;
      while ( expr2 )
			{statement expr3;}
}

◊bold{◊code{for} statement idioms}

Value of a counter changes as iteration proceeds. In general, we use counter value at every phase of loop until the value reach a specific value. When you write controlling expression, if you use ◊code{==}, the loop checks for the case ◊code{i == n}. Because it's not the way counter is used generally, the ◊code{==} isn't proper use.

◊bold{Ommiting expressions in a ◊code{for} statement}

The three expressions of ◊code{for} statement can be omitted in every possible combination, but the ◊code{;} between them cannot be omitted.

If you omit expression(s), check and refine (if needed) the loop to be executed normally.

◊bold{◊code{for} statements in C99}

In C99, a declaration could be used as an expression of ◊code{for} statement. The scope of this declaration is valid only in the ◊code{for} statement. If a ◊uc{variable} declared inside ◊code{for} statement should be used outside of the statement, use other than this method.

◊bold{The comma operator}

In ◊code{for} statement, if multiple expressions should be initialized, or multiple variables should be increased in every iteration, use comma operator.

◊form{expr1 , expr2}

Evaluation goes like this. First, evaluates ◊code{expr1}, throw away the return value of ◊code{expr1}. Then evaluate ◊code{expr2} and set the return value as the value of entire expressions. Because the return value of ◊code{expr1} is thrown away, don't use an ◊code{expr1} that doesn't have a side effect.


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
