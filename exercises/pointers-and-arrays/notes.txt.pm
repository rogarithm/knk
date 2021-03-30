#lang pollen

e1 clarify in scribble for contents of (c)-(e)

* e2

e3 ok

e4 make main function to test the functions.

e5 all seems legal except (a). but is there anything I've missing?

e6

 - Is this a problem? If it is, can it be solved?
   warning: assigning to 'int *' from 'const int *' discards qualifiers
   for (p = a; p < a + n; p++)

e7 ok. Refine test formatting?

e8 ok.

e9 ok.

e10 ok.

e11 ok.

e12

 why doesn't work?

 <depreciated idea>
 - use find_largest function, but modify it to return the index of the largest element.
 - From the information, search through the array the largest element except the element of the index.
 - but this method may use subscript. Is this problem?

e13

 - idea: initialize every elements with 0, and reinitialize 1, 1+n+1, ... with 1.
 ? for (p = ident[0], p < ident + N*N, p++)

e14 ok.

 - idea for generating temperature array?

? e15 noted with q

e16 needs test.

e17 To test, needs code to initialize random 2-d array

N e18
