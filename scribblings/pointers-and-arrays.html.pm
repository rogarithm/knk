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

◊section{using pointers for array processing}

◊temp{how to use pointer arithmetic for processing array elements}

We can use pointer arithmetic for array processing (like iteration with array elements). Pointer to an array element can replace subscript. The example in this section uses the statement ◊code{p < &a[N]} where ◊code{p} is a pointer, ◊code{a} is an array that has ◊code{N} elements. Since the array has its element range from ◊code{0} to ◊code{N - 1}, there's no ◊code{a[N]}, but it's safe to use because the compiler doesn't attempt to inspect the value in detail.

Why we use pointer for array processing instead of subscripting? Because it's faster. But it depends on the implementation, and now we have hugely improved PCs, it doesn't matter that much as before.

◊bold{combining the * and ++ (or --) operators}

◊code{*} (indirection) and ++ (or --) operators are often combined in statements that manipulate array elements. When these operators are combined, one operator is performed on the pointer first, and another one is performed next. As you may know, * retrieves a content that a pointer points to, ++ moves one element (when the operand is a pointer to array.) But when we see ◊code{(*p)++}, we can see the ◊code{++} operator will be applied to the ◊code{(*p)}, meaning the ◊code{++} increase the object the ◊code{p} points to. This is different from ◊code{*p++}, where ◊code{++} make the ◊code{p} points to the element to right from the previously pointed element. There's four legal combinations:

◊quick-table{
expression | meaning
*p++ or *(p++) | Value is ◊code{*p}; increment ◊code{p} later
(*p)++ | Value is ◊code{*p}; increment ◊code{*p} later
*++p or *(++p) | Increment ◊code{p} now; value is ◊code{*p} after increment (that affected the order of array element)
++*p or ++(*p) | Increment ◊code{*p} now; value is ◊code{*p} after increment (that affected the number of element)

◊section{using an array name as a pointer}

◊temp{an array name can function as a pointer to the array's first element}

We can use the name of an array as a pointer to the first element in the array. This simplifies pointer arithmetic and makes easy to interchange arrays and pointers.

In the sections before, we declared a pointer points an array to perform array arithmetic. But by using an array name as a pointer to the first element in the array, we don't need to declare the pointer, and it simplifies the process.

◊code{
int a[10];

/* if we declare a pointer points to the array */
int *p = &a[0];

*p = 7;
*(p + 1) = 12;

/* using array name as a pointer */
*a = 7; /* same as a[0] = 7 */
*(a+1) = 12; /* same as a[1] = 12 */
}

If you expand the pointer arithmetic with array name, you can see that pointer arithmetic can be viewed as a array subscripting. It can be used to replace an array subscripting with an array name and (possibly) statement contains pointer arithmetic using the array name.

◊caution{Although we can use an array name as a pointer, we cannot assign other value to the array name. The array name can only point the first element of that array. ◊?{But just before, we did assign a value to an array name (◊code{*p = 7;}). What's the intend of the author? What am I thinking wrong?}}

◊bold{array arguments (revisited)}

When we call a function that consumes an array variable, an array argument is treated as a pointer; the array is not copied, only its first element is assigned to the ◊uc{parameter}. As we saw in the section explains call by value, when an ordinary variable is passed to a function, its value is copied, and any changes to ◊uc{the corresponding parameter} don't affect the variable. But the value of an array used as an argument, unlike ordinary variables, isn't copied (it only have the first element of the array.) Thus when an array parameter get changed, it affects the variable.

If an array parameter should not be changed, we can do this by letting ◊code{const} be preceded.

An array parameter can be declared as a pointer. It's ◊uc{equivalent} to declaring it to be an array. ◊caution{Unlike the case for parameter, for the case declaring as a variable, it's not identical. For a variable declared as an array, the compiler set aside space for the number of elements of the array. But when declared as a pointer, the compiler only allocate space for a pointer variable. Thus attempting to use a pointer-declared variable as an array can be a problem.}

◊later{an array parameter can be passed with part of the array}

◊bold{using a pointer as an array name}

reread

◊section{pointers and multidimensional arrays}

◊temp{apply contents 12.1~12.3 to multidimensional arrays}

later

◊section{pointers and variable-length arrays (c99)}

◊temp{relationship between pointers and variable-length arrays}

later
