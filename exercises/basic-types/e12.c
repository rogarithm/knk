int i;
float f;
double d;

d = i + f;

first, ◊code{ i + f } get computed. As f has ◊t{float} type, by the usual arithmetic conversion rule, ◊code{ i + f } will have ◊t{float} type. next, the result will be assigned to ◊t{double} ◊|var|. As ◊t{double} is wider than ◊t{float}, the result's type will be converted to ◊t{double} without precision loss.
