#include <stdio.h>

/* IN0TON-1(x,n): 1 if x fall between 0 and n-1, inclusive. Helper macro for CHECK*/
#define IN0TON-1(x,n) (((x) >= 0) && ((x) <= ((n)-1)))
/* CHECK(x,y,n): 1 if both x and y fall between 0 and n-1, inclusive*/
#define CHECK(x,y,n) ((IN0TON-1(x,n)) && (IN0TON-1(y,n)))

/* LOW(x,y): finds lower value between x and y. Helper macro for MEDIAN*/
#define LOW(x,y) ((x) < (y) ? (x) : (y))
/* MEDIAN(x,y,z): finds the median of x, y, and z.*/
#define MEDIAN(x,y,z) ((LOW(x,y)) < (z) ? (z) : (LOW(x,y)))

/* SQUARE(x): evaluate square of x. Helper macro for POLYNOMIAL */
#define SQUARE(x) ((x) * (x))
/* CUBE(x): evaluate cube of x. Helper macro for POLYNOMIAL */
#define CUBE(x) ((x) * (x) * (x))
/* POLYNOMIAL(x): computes the polynomial 3x^5+2x^4-5x^3-x^2+7x-6*/
#define POLYNOMIAL(x) ((3*CUBE(x)*SQUARE(x)) + (2*SQUARE(x)*SQUARE(x)) - (5*CUBE(x)) - SQUARE(x) + (7*(x)) - 6)


