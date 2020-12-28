#lang pollen

e1.c

1 2 4 8 16 32 64 128

e2.c

9384 938 93 9

* e3.c

e4.c

(a)----------------------
0123456789
(b)----------------------
0123456789
(c)----------------------
12345678910

uncertain of (c)'s behavior, "i++ < 10;".

e5.c

when a counter is 11, only ◊st{do loop} evaluates once, others are not evaluated at the first time.

e6.c

same as e1.c

e7.c

same as e2.c

* e8.c

(*) e9.c

dependant on e8.c

N e10.c

◊st{continue} and ◊st{goto} seems not important to me for now. solve when these statements are needed

e11.c

document ◊st{continue} to solve this problem.

N e12.c

* e13.c

* e14.c
