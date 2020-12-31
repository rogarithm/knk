i += c; legal as i has type int, and c has type char which can be interpreted as int

c = 2 * c - 1; legal. same as (a)

putchar(c); putchar consumes char type ◊val as an input. as c has char type, legal.

printf(c); illegal. if you want to put a ◊var into printf, you should use ◊conv-spec for that ◊var.
