#lang pollen

◊title{arrays}

◊section{}

Some ◊|var|s can store more than one ◊|val|s. These ◊|var|s are called aggregate ◊|var|s. Array is one of them.

◊section{one-dimensional arrays}

An array is a data structure that can store more than one data ◊|val|s, all ◊|val|s have the same type. ◊|val|s of an array are called elements.

To declare an array, we need to specify the type of its elements, a name of the array, and the number of elements. The length of the array ◊un{can be specified by} any (integer) constant expression (that is, it cannot use a variable or function call).

◊bold{Array Subscripting}

We can use each elements of an array. To call an element, write the array name followed by an integer value in square brackets. This (to call an element of an array) is called ◊em{subscripting} or ◊em{indexing}. The integer value in square brackets ranges from 0 to (array length -1).

◊|exp|s of the element of an array are ◊|lval|s. So they can be used as ◊|var|s:
◊?{in the description for lvalues of ◊xref{expressions}, lvalues are for left operand of an assignment ◊|op|. But here, it seems lvalue acts like ◊|var|. Then why the author didn't say it's ◊|var| in the first time, because it's unnecessary to say about ◊|lval|?}

◊codeblock{
int a[10];
a[0] = 1;
printf("%d\n", a[5]);
++a[i];
}

When an array is declared with type x, then each elements of the array are treated ◊un{as is it were} a ◊var of type x.

Above, an array subscript is an integer value. The subscript may be any integer expression, because the ◊exp would produce an int ◊|val| eventually.

◊bold{Array Initialization}

Like a ◊|var|, an array can be given an initial value when it's declared. Generally, you can do it by putting list of proper type of ◊|val|s enclosed in braces separated by commas. If you omit some of the ◊|val|s, the omitted ◊|val|s are given the ◊|val| 0. You cannot omit all of its array, or give more than an array's length. So if you clean up an array with all its elements' ◊val to be 0, just give one 0 for initialization.

If you write initializer for an array without omitting, you can omit the length of the array. The compiler will compute the length using the initializer.

◊bold[version="C99"]{Designated Initializers}

In C99, if you want only a part of elements get initialized, but other elements get the default ◊|val|, you can use designated initializers:
◊code{
int a[15] = {[2] = 20, [9] = 7, [14] = 49};
}
Each number in brackets inside initializer is called a designator. Designators must be integer constant ◊|exp|s. Similar to array initialization rules of C89, if the length of the array is specified when being initialized, its designator must be between 0 and ◊exp{n - 1}. If the array length is omitted, the compiler will reason the array's length from the largest designator it sees.

◊bold{Using the ◊op{sizeof} Operator with Arrays}

You can use ◊op{sizeof} to see the size of an array, or to get the length of the array. For instance, if a is an array, its length is:

◊code{
sizeof(a) / sizeof(a[0])
}

Getting the length of arrays with this method eases maintining sources even when the ◊|val| of the array changes.

If you use the length expressed by ◊op{sizeof}, you may incur a warning, because the ◊op{sizeof} has ◊t{size_t} type, unlike ordinary types like int. To remove the warning, casting the length's type to be the same as the type you want to compare (or want to use as an operand).

◊section{multidimensional arrays}

An array may have more than one dimension. We can declare 2 dimension array by writing like:

◊code{ int m[5][9]; }

we can think of this array that has 5 rows, 9 columns. It's comfortable to think like this, but actually it's stored as a one row in computer memory.

◊bold{Initializing a Multidimensional Array}

We can initialize a 2 dimensional array just like the way of initializing 2 dimensional array, but using initializers for 1 dimensional array as the element of initializer of 2 dimensional array:

◊codeblock{
int m[[3][4] = {{1, 1, 1, 1},
								{0, 1, 1, 0},
								{1, 0, 0, 0}}
}

Similar to rules for initializing 1 dimensional arrays, when we omit to initialize some rows, the omitted rows will be initialized to have zeros as its elements. When we didn't fill a row enough to match its row length, the unfilled elements will be initialized to be zero.

◊bold{Constant Arrays}

Any array can be declared with its type ◊t{const}, making the array to be constant. The constant array cannot be changed by the program. If we intend to use an array not modified during the execution of a program, declaring an array as ◊t{const} can be helpful.

◊section{variable-length arrays (C99)}

In C99, unlike C89, we can use a ◊var as an array's length. Arrays like this are called a variable-length array (or VLA for short). By using the VLA, we can use exact size of memory we need, because there's no case that we declare longer (or shorter) length of array we need.

The length of a VLA can be a single ◊var or an arbitrarily ◊|exp|s (that contains ◊|op|s).
