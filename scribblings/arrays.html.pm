#lang pollen

◊title{arrays}

◊section{}

Some ◊|var|s can store more than one ◊|val|s. These ◊|var|s are called aggregate ◊|var|s. Array is one of them.

◊section{one-dimensional arrays}

An array is a data structure that can store more than one data ◊|val|s, all ◊|val|s have the same type. ◊|val|s of an array are called elements.

To declare an array, specify (a) the type of its elements, (b) a name of the array, and (c) the number of elements like ◊c{int my_array[10]}. The length of the array ◊un{can be specified by} any (integer) constant expression (that is, a length of an array is an expression, but it cannot contain variables or function calls).

◊bold{Array Subscripting}

Each elements of an array can be separately extracted. To extract, write the array name followed by an integer value in square brackets like ◊c{my_array[2]}. This ◊uc{operation?} is called ◊em{subscripting} or ◊em{indexing}. The integer value in square brackets ranges from 0 to (◊em{array length} minus 1).

◊|exp|s of the element of an array are ◊|lval|s. So they can be used as ◊|var|s:
◊uc{in the description for ◊bold{Lvalues} of ◊xref{expressions}, lvalues are for left operand of an assignment ◊|op|. Then why the author didn't say it's ◊|var| in the first time?} ◊might-be{I guess, that even though an array element like ◊c{a[i]} extracted by subscripting is an ◊strong{expression} which is not we've seen, and thus an ◊strong{expression} that can be an lvalue, unlike the expression described in ◊xref{expressions}.}

◊codeblock{
int a[10];
a[0] = 1;
printf("%d\n", a[5]);
++a[i];
}

When an array is declared with type x, then each elements of the array are treated ◊un{as if it were} a ◊var of type x.

Above, an array subscript is an integer value. The subscript may be any integer expression, because the ◊exp would produce an int ◊|val| eventually.

◊bold{Array Initialization}

An array can have an initial value (just like other ◊|var|s) when it's declared. To initialize an array, enter a list of constant expressions enclosed by braces, each elements succeeded by comma. Type of ◊|val|s must be the same as the type of array. (If any) omitted ◊|val|s is assigned as 0. So to clean up an array by making all elements' ◊val to 0, just initialize with ◊c{{0}}.

You cannot initialize with only enclosing braces, or with elements more than a number of an array's length.

If you write an array initializer any of its element not omitted, you don't have to write the length of array (like ◊c{my_array[]}). The compiler will automatically compute its length using the initializer.

◊bold[version="C99"]{Designated Initializers}

In C99, you can declare an array with only a part of elements initialized, with other elements initialized with the default ◊|val|. This is called designated initializers:

◊code{
int a[15] = {[2] = 20, [9] = 7, [14] = 49};
}

In the initializer right above, each number in brackets is called a designator. Designators must be integer constant ◊|exp|s. Similar to array initialization rules of C89, if the length of the array is specified when being initialized, its designator must be between 0 and ◊strong{array length minus 1}. If an array length is omitted, the compiler will reason the array's length from the largest designator it sees.

◊bold{Using the ◊op{sizeof} Operator with Arrays}

You can use ◊op{sizeof} to get the size of an array, or to get the length of the array. For instance, if ◊c{a} is an array, its length can be computed with:

◊code{
sizeof(a) / sizeof(a[0])
}

Getting the length of arrays like this eases maintaining sources even when the ◊|val| of the array changes.

If you use the length expressed by ◊op{sizeof}, you may incur a warning, because the ◊op{sizeof} has ◊t{size_t} type, unlike ordinary types like ◊t{int}. To remove the warning, cast the length's type to be the same as the type you want to compare (or want to use as an operand).

◊section{multidimensional arrays}

An array may have more than one dimension. We can declare 2 dimension array by writing like:

◊code{ int m[5][9]; }

we can think of this array that has 5 rows, 9 columns. It's comfortable to think like this, but actually it's stored as a one row in computer memory.

◊bold{Initializing a Multidimensional Array}

We can initialize a 2 dimensional array just like the way of initializing 1 dimensional array, but using initializers for 1 dimensional array as the element of initializer of 2 dimensional array:

◊codeblock{
int m[[3][4] = {{1, 1, 1, 1},
								{0, 1, 1, 0},
								{1, 0, 0, 0}}
}

Similar to the rules for initializing 1 dimensional arrays, when we omit to initialize some rows, the omitted rows will be initialized to have zeros as its elements. When we didn't fill a row enough to match its row length, the unfilled elements will be initialized to be zero.

◊bold{Constant Arrays}

Any array can be declared with ◊t{const} type. It makes the array constant. It's result means that the constant array cannot be changed by the program. If we intend to use an array not modified during the execution of a program, declaring an array as ◊t{const} can be helpful.

◊section{variable-length arrays (C99)}

In C99, unlike C89, we can use a ◊var as an array's length. Arrays like this are called a variable-length array (or VLA for short). By using the VLA, we can use exact size of memory we need, because there's no case that we declare longer (or shorter) length of array than we need.

The length of a VLA can be a single ◊var or an arbitrarily ◊|exp|s (that contains ◊|op|s).
