#lang pollen

p1 ok.

p2 ok, but need to clarify ◊c{while ((ch = getchar()) != EOF && ch != '\n')}
simplify the condition to (i % 2 == 0) to test easily
why the ch acts like it already has newline character?
http://rabbit.eng.miami.edu/class/een218/getchar.html

p3 ok. test and conversion specification refine?

p4 ok.

why ◊code{ch = 2;} doesn't work? I mean, ◊code{ch} is int type. If so, ◊c{2} should represent the number 2, isn't it? But it seems to work as a char type, not what I intended.
first statement ◊code{ch = getchar();} stores ch, but it throw away the value in the output. Is removing the code do not raise any problems?

input can be only characters or numbers with characters and punctuations. ◊uc{As it includes other than characters}, getchar seems not a good idea (but as char type is interchangeable with int type, it could be possible to use). But here's the problem: how to use scanf with multiple cases like CALLATT, 1-800-COL-LECT which are different in their format?

tackle first with simple case

for one character case, getchar is fine.

for two character case, how to store input characters?

p5

- tests with test.c. Why always prints 10?
- how to initialize ch and make it not to affect the loop?
- how to assign nul character?
- how to printf summed value?

N p6 seems like simple problem.

N p7 Not done prj 6 from ch 3.

p8 ok. test looks fine, but is it right that the gap between AM and PM is 12 * 60 minutes?

p9 ok.

p10 ok. To simplify possibility of upper/lower case, convert input character to uppercase.

? p11

 - To extract part of input character string, scanf cannot be used.
 - Last name isn't printed.
 - Is it possible to "collect" in a variable multiple characters?
 - I guess the timing of assignment is a problem.

 N p12 - 15
