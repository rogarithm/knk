#lang pollen

p1 ok.

p2 ok.

p3 ok.

p4 refine by making macro for array length

p5 works, but need to check if it computes as I intended, and requires (simple) test.

Is this right? 1 annually increased value = compound of 12 iterately increased value

p6 ok.

 - but in printing part, why it prints garbage values when EOF condition is included?
 - type of the array when it has chars, whitespace, comma as element -> always char.
 - how to scan the array -> with getchar(), the elements of array can be scanned one by one.
 - method to convert to uppercase & number for proper chars -> because the array is type of char, the number we want to convert will be the type of char, which means we need to specify them with ◊uc{character form of int}.

? p7 how can simplify? Currently I need to define for all 5 cases.

 currently on temp-p7. what's the problem? keep make it more simple to test!

N p8

N p9 some problems:

- make functions to check the position's status
- how to repeat choosing direction value for next "checked" direction? -> do while?

- if 'A' is placed in random place, how to move its index?
- how to write a cell is filled by other character? -> wrote check-filled
- for other_direction, how to eliminate path that is checked already?

N from p10 to p17
