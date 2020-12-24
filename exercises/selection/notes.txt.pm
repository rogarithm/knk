#lang pollen

'N' in front of the exercise number: not done yet

e1.c

(a) The precedence order is *, ==, =, from high to low. Thus, i * j computes to 6, checked with 6 for equality which is true, and the result gets assigned to k. So the ◊|val| of k should be 1.

(b) < has high precedence than >. That is, ◊code{i < j} evaluated first, then its ◊|val| will get fed to ◊code{k > ◊val{i < j}}.

(c) relational ops have higher precedence than equality ops. That is, relational ◊op get evaluated before equality ◊|op|.

(d) see explaination of (a).


e2.c show the output produced by each, assuming that i, j, and k are int variables.

(b) Every integer ◊|val| except 0 is considered as true ◊|val|. So !i is 0, !!i is 1, and !j is 0

(c) ◊code{true && false} gives false, and ◊code{false || true} gives true.

(d) ◊code{true || true} is ture.

* e3.c 

* e4.c

* e5.c

* e6.c

e7.c

As conditional ◊|op| convert negative ◊|val|s to positive, whether ◊var{i} is positive or negative, it should be 17.

e8.c

assign ◊|val| to true and false. Using macro could be a better way. Test seems too verbose.

N e9.c

* e10.c

N e11.c
