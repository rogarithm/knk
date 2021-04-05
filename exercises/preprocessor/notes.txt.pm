#lang pollen

e1 ok. further: clarify convention for a) naming, b) space in replacement list

e2 ok. further: why the type of sizeof/sizeof is unsigned long?

e3 ok.

in detail: when #define DOUBLE(x) 2*x, DOUBLE(1+2) and 4/DOUBLE(2) prints 4, because omitted parenthesis cause its computation different from our intention.
Thus wrap with parentheses the whole expression and every parameters.

e4 ok.

To remedy, modify AVG(x,y) to (((x)+(y))/2), AREA(x,y) to ((x)*(y)).

* e5

e6-a ok.

e6-b ok.

* e7

* e8

? e9 refine MEDIAN. Current version doesn't cover all cases.

? e10

N e11

e12 ok.

e13-a ok.

 Though #ifdef in main is declared after f(), #ifdef is preprocessed, so in effect earlier than f().

e13-b ok.
 
 prints N is undefined.

* e14

N e15

* e16
