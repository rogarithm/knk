int i;
int *p, *q;

which of the following assignments are legal?
I think this problem's question is "what can be an lvalue."

(a) p = i;
Pointer is lvalue. So the assignment is legal.
But the two values are unlikely to be assigned correctly.
(b) *p = &i;
A pointer applied with indirection operator is a valid lvalue.
But it doesn't seem to be correct because *p is an int value, while &i is an address value.
(c) &p = q;
A pointer is a valid lvalue, but is the address operator not affect it's lvalue or not?
If the & operator doesn't affect, legal. Though p is an address, ◊uc{there's an address of an address}, and q is an address value.
(d) p = &q; 
Same uncertainty of (c).
(e)  p = *&q;

(f) p = q;
Valid.
(g) p = *q;
Valid. But an int value (*q) will be assigned to an address (p). Not good.
(h) *p = q;
Valid. But an address (q) will be assigned to an int value (*p). Not good.
(i) *p = *q;
Valid.
