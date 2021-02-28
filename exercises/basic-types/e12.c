int i;
float f;
double d;

d = i + f;

First, i + f get computed. As f has float type, by the usual arithmetic conversion rule, i + f will have float type. As double is wider than float, the result's type will be converted to double.
