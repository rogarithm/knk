#lang pollen

e1 program is as described in the problem
the output is: 1 2 4 8 16 32 64 128
when i is 128, it'll get doubled, but when it goes to control expression, it'll fail. So 256 will not be printed.

e2

9384 938 93 9

* e3

e4

q0. Using simple example ("%d") is sufficient?

About the application timing of expressions of ◊code{for} statement: A for statement ◊code{for ( expr1 ; expr2 ; expr3 ) statement} can be rewritten with while statement:

◊codeblock{
expr1;
while ( expr2 )
{
  statement
  expr3;
} }

q1. In (b), why ++i doesn't applied when printing its value? I thought the prefix increment should be applied when for printing, but it seems not.

a1. If you see the equivalent version of while statement, you can see the expr3 comes next to statement. In our code, printing the number is equivalent to the statement. After that, ◊code{++i}, which is equivalent to expr3 comes. That is, the ◊code{++i} will be applied after each printing process. As the expr3 is applied before expr1, the program cannot pass the value 10 to the loop body.

q2. In (c), why prefix increment is applied to printing process?

a2. The expression ◊code{i++} works as a controlling expression. When ◊code{i} is 0, the checking would be ◊code{0 < 10}, but as the expr1 uses postfix increment, the ◊code{i} will be incremented when it goes into the loop body, printing 1, which is incremented value. It works the same till ◊code{i} is 9. For this case, ◊code{i} will be incremented to 10 in the loop body as before, making the program to print 10 unlike our intuition from the controlling expression. After the printing, when ◊code{i} goes to the controlling expression to be checked, it will fail, and the program ends.

e5

when a counter is 11, only ◊st{do loop} evaluates once, others are not evaluated at the first time.

e6 same as e1

e7 same as e2

* e8

(*) e9 dependant on e8.c

N e10 ◊st{continue} and ◊st{goto} seems not important to me for now. solve when these statements are needed

e11 document ◊st{continue} to solve this problem.

N e12

* e13

* e14
