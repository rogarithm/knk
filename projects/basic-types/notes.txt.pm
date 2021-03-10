#lang pollen

p1 ok.

p2 ok, but need to clarify ◊c{while ((ch = getchar()) != EOF && ch != '\n')}
simplify the condition to (i % 2 == 0) to test easily
why the ch acts like it already has newline character?
http://rabbit.eng.miami.edu/class/een218/getchar.html

p3 ok. test and conversion specification refine?

p4 ok.

In the function char_to_num, why using ◊code{ch = 2;} instead of ◊c{ch = 50;} doesn't work? I mean, ◊code{ch} is int type. If so, ◊c{2} should represent the number 2, isn't it? But it seems to work as a char type, consider ◊c{50} as number 2, not what I intended.
first statement ◊code{ch = getchar();} stores ch, but it throw away the value of the output. Is removing the code do not raise any problems?

input can be only characters or numbers with characters and punctuations. ◊uc{As it includes other than characters}, getchar seems not a good idea (but as char type is interchangeable with int type, it could be possible to use). But here's the problem: how to use scanf with multiple cases like CALLATT, 1-800-COL-LECT which are different in their format?

tackle first with simple case

for one character case, getchar is fine.

for two character case, how to store input characters?

p5 ok. But need to clarify ◊c{sum += (int) rarity(ch);}. How the value taken by getchar can be converted to ordinary int value with ◊c{(int)} casting?

N p6 seems like simple problem.

N p7 Not done prj 6 from ch 3.

p8 ok. test looks fine, but is it right that the gap between AM and PM is 12 * 60 minutes?

p9 ok.

p10 ok. To simplify possibility of upper/lower case, convert input character to uppercase.

p11 ok.

 (1) Last name isn't printed -> Because last name will be used as it is, print directly in the loop
 (2) Is it possible to "collect" in a variable multiple characters? -> solve by immediately printing as (1).

N p12 - 15
