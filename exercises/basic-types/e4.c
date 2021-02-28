which one of the following statements is illegal

{
char c;

(a) i += c; i has type int

 legal. For assignment ◊uc{statement}, convert to the type of expression on the left.

(b) c = 2 * c - 1;

 legal.

(c) putchar(c);

 putchar consumes char type variable as an input. legal.

(d) printf(c);

 illegal. if you want to put a variable into printf, you should use a proper conversion specification for that variable. ◊uc{maybe if c is a string type variable, it could be legal}.
}
