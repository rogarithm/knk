#lang pollen

e1 ok

e2 ok

* e3

e4

 - for (b), why the function doesn't terminate with space or tab, but only terminate with newline?
 - for (c), should the terminating null character be inserted after the newline character?
 Currently the function inserts the null, but will it would be safe without it? Maybe there'll be a trouble
 when it exceeds its storage.

 test
  case1. without null. When input string + expected newline to be inserted exceeds the array size,
	emits Abort trap: 6.
	
	case2. with null. It seems no matter until the input string's length equals the array size (but why?)
	When input string's length exceeds the array size, trailing character was removed. In this test, newline character wasn't counted, but there was no error.

	? for (d), how to store left elements? In a different array? Or save the index right next the array length as return value? Or not inserting the terminating null character?


e9 it should be co

e10 It seems the input type of strcpy is mistyped. p and q have type of pointer, but strcpy (may be) given an string type input.
