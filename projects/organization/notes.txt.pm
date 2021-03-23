#lang pollen

p1

 - works, but additioinal newline required. Why is that?
 - refine by separating code to functions and explaining variables.

p2

 - works. tested with examples in the book.
 - If any, refine for main<->read_card variables interface. Check for prototype, function definition, and its body if the format is right or not.

p3 wip
 - for x-kind, I think a function is needed calculating a number of matching ranks. But no idea how...

 - based on poker.c, not p2.c, that is, read_cards and analyze_hand are void input functions. Too much burden considering this also.
 - strategy to remove external variables is to make 2 array with input array's each column.
 - For local variables of original functions, not sure if some variables could be removed, so for now, I've been solving not removing if there's no problem.
 - In converting analyze_hand, conditions for flush and straight are quite straightforward, and wonder if there's more elegant way.
