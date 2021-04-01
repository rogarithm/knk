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

Why we use pointer for array processing instead of subscripting? Because it's faster. But it depends on the implementation, and now that we have hugely improved PCs, it doesn't matter that much as before.

◊bold{combining the * and ++ (or --) operators}

◊code{*} (indirection) and ++ (or --) operators are often combined in statements that manipulate array elements. When these operators are combined, one operator is performed on the pointer first, and another one is performed next. As you may know, * retrieves a content that a pointer points to, ++ moves one element (when the operand is a pointer points to an array.) But when we see ◊code{(*p)++}, we can see the ◊code{++} operator will be applied to the ◊code{(*p)}, meaning the ◊code{++} increase the object the ◊code{p} points to. This is different from ◊code{*p++}, where ◊code{++} make the ◊code{p} points to the element right from the previously pointed element. There's four legal combinations:

◊quick-table{
expression | meaning
*p++ or *(p++) | Value is ◊code{*p}; increment ◊code{p} later
(*p)++ | Value is ◊code{*p}; increment ◊code{*p} later
*++p or *(++p) | Increment ◊code{p} now; value is ◊code{*p} after increment (that affected the order of array element)
++*p or ++(*p) | Increment ◊code{*p} now; value is ◊uc{◊code{*p}} after increment (that affected the number of element)
}

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

If you expand the pointer arithmetic with array name, you can see that pointer arithmetic can be viewed as an array subscripting. ◊clarify{It can be used to replace an array subscripting with an array name and (possibly) statement contains pointer arithmetic using the array name.}

◊caution{Although we can use an array name as a pointer, we cannot assign other value to the array name. The array name can only point the first element of that array. ◊?{But just before, we did assign a value to an array name (◊code{*p = 7;}). What's the intend of the author? What am I thinking wrong?}}

◊bold{array arguments (revisited)}

When we call a function that consumes an array variable, an array argument is treated as a pointer; the array is not copied, only its first element is assigned to the ◊uc{parameter}. As we saw in the section explaining call by value, when an ordinary variable is passed to a function, its value is copied, and any changes to ◊uc{the corresponding parameter} don't affect the variable. But the value of an array used as an argument isn't copied, unlike ordinary variables (it only have the first element of the array.) ◊uc{Thus} when an array parameter get changed, it affects the variable.

If an array parameter should not be changed, we can document with ◊code{const}.

An array parameter (that is, when it is used in a function definition) can be declared as a pointer. It's ◊uc{equivalent} to declaring it to be an array. ◊caution{Unlike the case for parameter, when declaring an array as a variable, the two cases are not the same. For a variable declared as an array, the compiler set aside space for the number of elements of the array. But when declared as a pointer, the compiler only allocate space for a pointer variable. Thus, attempting to use a one version of variable as another version can be a problem.}

◊compare-loop-using-three-concepts

Why array argument for function isn't passed by value? Because it's given as a pointer to the first element of the array. So it isn't protected by modification.

An array parameter can be passed with part of the array. By default, when we give a function an array name, the name is treated as the pointer points to the first element of the array. If we give, say, &a[5], we can start with the pointer of a with its subscript value 5. The preceding & is required because a[5] is an object, not pointer.

◊bold{using a pointer as an array name}

An array name can be used as a pointer, and we can process the array with additional pointer and pointer arithemetic with it. Similar to this, a pointer can be subscripted as it were an array name.

◊codeblock{
int a[10], i, sum = 0, *p = a;

for (i = 0; i < 10; i++)
  sum += p[i];
}

Though ◊c{p} is not an array, it can use subsctiption.

◊section{pointers and multidimensional arrays}

The relationship between pointers and one dimensional arrays can be applied to pointers and multidimensional arrays.

◊bold{processing the elements of a multidimensional array}

Two-dimensional arrays are stored in one row, but every coloumn number of element is considered as individual row. We can use this fact to visit through every element of two-dimensional array by repeating to increment a pointer points to the array without care about column.

Careful. Using this decrease your program's readability.

◊bold{processing the rows of a multidimensional array}

To process a specific row of 2-d array, you can either initialize a pointer for array of row i with ◊c{p = &a[i][0]} or ◊c{p = a[i]}. As for 1-d array ◊c{a}, ◊c{a} refers to the first element of the array, for 2-d array, ◊c{a[i]} refers to the first element of the ith row of the array.

This method can be used to process a specific row of a 2-d array. Instead of 1-d array name, give the function an ith row of 2-d array. It makes functions created for 1-d array in mind easily reused for a row of 2-d array.

◊bold{processing the columns of a multidimensional array}

int (*p)[NUM_COLS] not int *p[NUM_COLS]. Array subscription ([]) operator has lower precedence than indirection operator (*). So if you want * to be applied first than [], enclose, say, *p with parentheses.

Declare a pointer points to an array of one row. ◊uc{It seems that the unit of processing get multiplied from one element to one row. So when incrementing p, it moves by one row, not one element, and *p represents one row of an array, not one element of the array.} As we've seen that a pointer can use subscription to access array's elements, (*p)[i] let us access ith element of the current row represented by (*p).

◊bold{using the name of a multidimensional array as a pointer}

You can use a name of multi-d array as a pointer to process any dimensional array. As an example, for 2-d array ◊c{a[row][col]}, ◊c{a} is a pointer to ◊c{a[0]}, not ◊c{a[0][0]}. Because C treats 2-d arrays as a 1-d array whose elements are 1-d arrays each. These "inner" arrays have column number of elements. ◊uc{So} used as a pointer, ◊c{a} has type int (*)[number-of-columns] (as we've seen in processing the columns of a multi-d array).

Instead of using ◊c{&a[0]} to point the first row of 2-d array, you can just use ◊c{a}.

If you want to point the very first element (that is, ◊c{a[0][0]}), ◊c{a} is not enough. Use ◊c{a[0]}.

◊section{pointers and variable-length arrays (c99)}

◊temp{relationship between pointers and variable-length arrays}

Pointers can point to VLA for any dimension. VLA's dimension is not a constant:

◊codeblock{
void f(int n)
{
  int a[m][n], (*p)[n];
	p = a;
	...
}
}

The type of ◊c{p} depends on ◊c{n}, so ◊c{p} is said to have a variably modified type.

The declaration of a variably modified type must be inside the body of a function or in a function prototype.

◊uc{For more than 2-d VLAs, the type of the pointer depends on the length of each dimension except for the first.}
