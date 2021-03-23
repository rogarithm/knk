#lang pollen

e1 ◊uc{function parameter can be seen only in the function?}

For each of the following scopes, list all variable and parameter names visible in that scope:

(a) The f function: a, b, c
(b) The g function: a, d. e can be only seen in the block
(c) The block in which e is declared: a, d, e
(d) The main function: a, f

e2

For each of the following scopes, list all variable and parameter names visible in that scope:

(a) The f function: b (except external b), d
(b) The g function: a, b, c (except external c), ◊uc{a (in the inner block), d (in the inner block)}
(c) The block in which a and d are declared: b, c, a, d
(d) The main function: b, c (except external c), d
