// What if function argument's type is different from the function parameter's type?

int f(int a, int b) { ... }

int i;
double x;

(a) i = f(83, 12);
(b) x = f(83, 12);
(c) i = f(3.15, 9.28);
(d) x = f(3.15, 9.28);
(e) f(83, 12);

1. Say, the function definition functions as a prototype. Then in all cases, arguments will be treated as int. So for (c) and (d), their arguments will be converted to int.

2. The value of function evaluation has int type. When assigned to the same type, it'll has no matter. But if assigned to double, function's value will be converted to  double. The double type is wider than int, it'll be no matter in conversion.

3. Thus all cases are legal.
