#lang pollen

p1 ok

p2

is this refine still verbose?
simplify the function. Minute variable doesn't affect to converting process.
"0x", where x is from 0 to 9, is printed as "x". refine later. -> refine with %.2d
cases to test: 0:00 -> 12:00 AM | 12:00 -> 12:00 PM | 24:00 -> 12:00 AM -> done. other test required?

? p3

need to simplify and test

p4

same as p1.c

p5

solved to solve p2 of functions.
previously it seems to be the same as p1 and p4, with different conditions.

? p6

Is this okay to do this way?

add check-digit as additional input, compare with computed check-digit. If the two values are equal, print VALID. If not, print NOT VALID.

p7

Though I made a logic I think correct, as the author said only four if statements are sufficient, refactoring required.

◊topic{how to make tests?

The amount of difference doesn't matter.

so I choose the default as 1 2 3 4

case 1: when every numbers are different, like 1 2 3 4. They are all different from each other.

 - is the order of the numbers affect the result?
 if it does, say, 1 2 3 4 and 1 3 2 4 would be different. The problem is, does it can be generalized? I mean, does it can be applied to every possibility?

case 2: when some numbers are the same

 - like 1 2 2 3.
refined, but how to be sure it always works? Test?
}

p8 ok. But using two expressions with relational operator is cumbersome. Is there a way to simplify this?

p9 ok.
 
N p10 the answer should be written using switch statement.

N p11 same as p10
