#lang pollen

◊title{pointers and arrays}

◊section{}

Ways of using pointers to manipulate array elements.

◊section{pointer arithmetic}

◊temp{how pointers can be compared using the relational and equality operators}

We can let pointers point to an element of an array. For this pointer, we can perform pointer arithmetic (or address arithmetic):

All operation is performed on the address of a pointer, not its content (that is, on ◊code{p}, not on ◊code{*p}.)

Adding/subtracting an integer to a pointer
Subtracting one pointer from another

Pointer arithmetic should be performed on pointers that points to an array element. Also, both pointers must point to the same array.

For a pointer points to an element of an array, if we add/subtract an integer to the pointer, the pointer will "move" (right when adding, left when subtracting) for the amount of the integer, and point new element. The new position must be existed for the operation valid.

When there's two pointer each points to an element of an array, when you subtract one pointer from another, we can get their distance.

◊bold{comparing pointers}

We can compare array-pointing-pointers with the relational operators and the equality operators. This operation gives 1 when it's true, 0 when it's false.

◊bold[c99]{pointers to compound literals}

By using an array created unnamed, we can simplify the process of assigning a pointer to an array element.

◊section{

◊temp{how to use pointer arithmetic for processing array elements}

◊section{

◊temp{an array name can function as a pointer to the array's first element}

◊section{

◊temp{apply contents 12.1~12.3 to multidimensional arrays}

◊section{

◊temp{relationship between pointers and variable-length arrays}
