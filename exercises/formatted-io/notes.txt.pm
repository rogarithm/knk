#lang pollen

e1.c
meaning of conversion specification form. solved the problems, but not memorized. read details when you need them.

(b) it seems the minimum field width counts dot (.) so ' 3.02530e+01' counts as 12.

◊uc{3.02530 and 0.30253 has the same number after decimal point, but why the first one chosen?}

(d) '1e-06 '. why?

e2.c
my "scribbling" of this section doesn't have an information of ◊todo{the "size" (like 8 in %-8.1e)}. I think you need to write about it.

◊uc{the fundamental representation for f}?

e3.c
tests I made seems not a good one. consider another tests that can check each statements of the problem. But for now, it doesn't seem to have a value to do.

"%d" vs. " %d": equivalent.
"%d-%d-%d" vs. "%d -%d -%d": equivalent.
"%f" vs. "%f ": not equivalent. the space after %f make the program not end.
"%f,%f" vs. "%f, %f": equivalent.

e4.c
*

e5.c
*

e6.c
related with the result of e3.c
