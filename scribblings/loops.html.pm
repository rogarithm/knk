#lang pollen


◊title{loops}


◊section{}

◊em{Loops are the same with iteration statements. That is, loop belongs to a statement.}. loop (or iteration) is a statement that iterates executing a loop body (also statement). Whether executing the loop body is determined by a value of controlling expression evaluation. C's three loops are different in their timing when to test controlling expression.


◊section{the ◊c{while} statement}

◊form{while ( expression ) statement}

The expression after ◊c{while} acts as a controlling expression. The statement is a loop body.

Evaluating controlling expression returns value. If the return value is true, the loop body of the statement is executed. If not, leave out from the loop body without execution.

If you want to use multiple statements in a loop body (, which only permits one statement), use a compound statement:

◊codeblock{
while (i != num) {
		exp1;
		exp2;
		exp3;
		...
} }

Because the ◊c{while} statement tests the controlling expression before executing the loop body, the while loop may not executed at all.

◊bold{Infinite Loops}

We can make an infinite loop like ◊c{while(1)}. When you make an infinite loop, you have to make a way out of the loop. As examples, a statement to get out of the loop, or a function to exit the program.


◊section{the ◊c{do} statement}

◊c{do} statement is just a ◊c{while} statement whose controlling expression is tested ◊strong{after} each execution of the loop body (and it makes the loop body of a ◊c{do} statement always executed at least once).

◊form{do statement while ( expression ) ;}

Wrapping braces helps to understand the structure of ◊c{do} statement more easily because it can be mistaken for a ◊c{while} statement without braces even when there's only one statement for a loop body.


◊section{the ◊c{for} statement}

◊form{for ( expr1 ; expr2 ; expr3 ) statement}

First expression is an initializer; second one is a condition for termination; third one is an operation while iteration.

Some ◊c{for} statement may make you confused with its evaluation order. In that case, you can use the fact that a ◊c{for} statement is equivalent with a ◊c{while} statement. Checking this clarify the evaluation timing of expressions of ◊c{for}.

◊form{expr1;
      while ( expr2 )
			{statement expr3;}
}

◊bold{◊c{for} statement idioms}

Value of a counter changes as iteration proceeds. In general, we use counter value at every phase of loop until the value reach a specific value. When you write controlling expression, if you use ◊c{==}, the loop checks for the case ◊c{i == n}. Because it's not the way counter is used generally, the ◊c{==} isn't proper use.

◊bold{Ommiting expressions in a ◊c{for} statement}

The three expressions of ◊c{for} statement can be omitted in every possible combination, but the ◊c{;} between them cannot be omitted.

If you omit expression(s), check and refine (if needed) the loop to be executed normally.

◊bold{◊c{for} statements in C99}

In C99, a declaration could be used as an expression of ◊c{for} statement. The scope of this declaration is valid only in the ◊c{for} statement. If a ◊uc{variable} declared inside ◊c{for} statement should be used outside of the statement, use other than this method.

◊bold{The comma operator}

In ◊c{for} statement, if multiple expressions should be initialized, or multiple variables should be increased in every iteration, use comma operator.

◊form{expr1 , expr2}

Evaluation goes like this. First, evaluates ◊c{expr1}, throw away the return value of ◊c{expr1}. Then evaluate ◊c{expr2} and set the return value as the value of entire expressions. Because the return value of ◊c{expr1} is thrown away, there's no meaning using an ◊c{expr1} that doesn't have a side effect.


◊section{exiting from a loop}

Control expression is a point that makes a program exit from the loop body. An exit point of our program using loop was either before the loop body (◊c{while}, ◊c{for}) or after the loop body (◊c{do}). But with ◊c{break}, we can also use another kind of exit point to get out of a loop in the middle of it, or to get more than two points to get out of a loop.

There's also some related statement. ◊c{continue} is to skip portion of a loop body, and ◊c{goto} statement allows to ◊uc{jump from one statement to another}.

◊bold{the ◊c{break} statement}

◊c{break} statement is useful when the controlling expression should be located in the middle of the body. Here is an example that uses ◊c{break} statement.

◊codeblock{int main(void)
{
	// keep increment to check if there's a number that can divide n.
	// If there's one, use break to get out of the loop body to execute if statement.
	// If there's none, get out of the loop body without break statement, and excute else clause.
	for (d = 2; d < n; d++)
		if (n % d == 0)
			break;
	if (d < n)
		printf("%d is divisible by %d\n", n, d);
	else
		printf("%d is prim\n", n);

	return 0;
}}


When a ◊c{break} statement is nested inside another loop, the execution of ◊c{break} moves control out to the outer body of ◊c{while} statement. So in nested code like below, when ◊c{break} is executed, its control only get out of the ◊c{switch} statement, but left in the ◊c{while} statement.

◊codeblock{
while (...) {
  switch (...) {
    ...
		break;
		...
  }
}}

◊bold{the ◊c{continue} statement}

◊c{continue} statement is different from ◊c{break} statement. While ◊c{break} statement transfers control past the end of a loop, ◊c{continue} statement transfers control just before the end of the loop body, making its control left in the loop body (unlike execution of ◊c{break} statement).

◊uc{◊c{break} can be used in ◊c{switch} statements and loops, whereas ◊c{continue} is limited to loops}.

◊bold{the ◊c{goto} statement}

The location where ◊c{break} and ◊c{continue} statement goes is pre-determined and cannot be changed. By using ◊c{goto} statement, we can transfer control any statement in the loop body, provided that the statement has a label.

◊c{Break}, ◊c{continue} statement can move into ◊uc{selected} point. However, ◊c{goto} statement can move anywhere in the statement based on a lable.


◊section{the null statement}

A statement can be null. It only has the semicolon at the end. It's useful when a loop body doesn't have any content like the code:

◊codeblock{
for (d = 2; d < n && n % d != 0; d++)
  /* empty loop body */ ;
}

◊later{If you need, describe steps of controlling expression (the second one) in the code above}

Though a null statement (semicolon) can be placed with, say, controlling expression of a loop, it's easy to be confused that other statements are the body of the loop. For the reason, it's customarily to put the null statement on a line by itself.

Some loop statements can be converted using null statement, but it doesn't buy much. It's concise, but usually more complex to understand. But there're some cases when it's useful like reading character data.
