◊section{the <stdlib.h> header: general utilities}

◊bold{Pseudo-Random Sequence Generation Functions}

◊codeblock{
int rand(void);
void srand(unsigned int seed);
}

These two functions supports the generation of ◊uc{pseudo-random numbers}.

Each time ◊code{rand} is called, it returns a number between 0 and ◊code{RNAD_MAX}. Though it's called random, technically it isn't random because the numbers generated from ◊code{rand} are determined by a "seed" value.

To get random number not determined by "seed" value, use ◊code{srand}. ◊code{srand} choose seed value arbitrary, which makes different sequence of number to use.

as an example, see deal.c in source code for the book.
