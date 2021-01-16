function definition

int f(int a, int b) { ... }

int i;
double x;

(a) i = f(83, 12);
(b) x = f(83, 12);
(c) i = f(3.15, 9.28);
(d) x = f(3.15, 9.28);
(e) f(83, 12);

if the compiler has seen the function definition, arguments' type of: (a), (b) and (c) will conserved, (c) and (d) will converted to int. Since the return type for the function is specified as integer, they'll be computed to integer value. From ◊xref{basic-type} conversion during assignment, it would be matter when the ◊var that will contain the return value has narrower type and the value's one. As it's not, there will be no matter. ◊uc{is there any chance that the value exceeds integer type limit?} Thus all is legal.
