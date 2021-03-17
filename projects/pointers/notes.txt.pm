#lang pollen

p1 ok.

p2 ok. separate the conversion procedures for formatting

p3 ok. can ◊code{reduce} function more refined?

p4 ok. But needs to clarify:

 ? array argument doesn't need to be given to other functions as a pointer, but other argument should be given as a pointer -> turned out, it was not.
 1 My previous assumption: other arguments are passed by value, making impossible to use value as it's modified in other functions, whereas array can be used as modified.
 2 Why am I wrong?
 - p4.c:142 if (num_in_rank[rank] == 2) (*pairs)++; // () is a must to increment the value of pairs, not its address.
