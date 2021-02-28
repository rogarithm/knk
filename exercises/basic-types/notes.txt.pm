#lang pollen

e1 ok.

◊?{Is there a method to print the ◊val of integer constant in decimal form?

From the description of integer constant, it can't be written or read. Then what it's for? And how can their value be checked?}

e2 ok.

e3 ok.

e4 ok. If c is a string type variable, could printf(c) be legal?

e5 ok.

e6 ok. char code ranges from 0 to 127. for short, int, long, their size isn't constant. I followed the specification for 32 bit.

N e7 simple number conversion problem.

N e8 same as e7

e9 by using the usual arithmetic conversion

? e10 ok. ◊uc{the long type affects after this procedure?}

e11 ok. recheck associativity. answer was right, its process was wrong.

e12 ok.

N e13

N e14

e15 ok.

From 151p, bit-number based type. Do I need to declare <stdint.h> to use the types?
