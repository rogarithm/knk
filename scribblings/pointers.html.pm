#lang pollen

◊title{pointers}

◊section{}

Three chapters (11, 12, 17) are devoted to pointers. In this chapter, describes basics, and other chapters for more advanced uses.

◊section{pointer variables}

◊temp{about memory addresses and their relationship to pointer variables}

Pointers are addresses of memory. What is memory? At the machine level, main memory is counted with bytes, each byte can store eight bits. Each byte has a unique address. The value of address ranges from 0 to n-1 when there's n bytes.

A program that we can run consists of both statements and variables. Each variable have one or more bytes of memory, and the address of the first byte among them is the address of the variable.

Then why need pointer type? Because unlike ordinary integer values, an address of a variable may not suitable to integer type value, making it unstable to store an address value into integer type variable. Rather, we can use a pointer type variable. It's range is proper to store an address value. In other words, pointer is a variable that can store an address.

The book illustrates the contents of a pointer variable as an arrow.

◊bold{Declaring Pointer Variables}

Declare pointer variables is almost the same as declaring ordinary variables. The name of a pointer variable must be preceded by an asterisk. The declaration ◊code{int *p} states that ◊code{p} is a pointer variable capable of pointing to ◊uc{objects} of type ◊code{int}. Using object instead of variable is intended. A pointer variable might point ◊uc{other than a variable}.

Every pointer variables ◊uc{must} point to objects of a specific type.

◊section{the address and indirection operators}

◊temp{the address and indirection operators}

There're two operators for use with pointers. ◊code{&} (address) operator is used to find the address of a variable. The ◊code{*} (indirection) operator is used to get access to the object that a pointer points to.

◊bold{The Address Operator}

Declaring a pointer variable assigns a space to point to an address of a variable, but the declared pointer doesn't know what variable that it should retrieve address. Choosing a variable to give its address to the pointer (initializing) is a must. One way of initializing is to assign the pointer to the address of some variable (to be used for initialize) using ◊code{&} operator:

◊codeblock{
int i, *p;
...
p = &i;
}

Assigning a variable's address to the pointer let the pointer know what address to point.

◊bold{The Indirection Operator}

If a pointer variable points to an address, we can use the ◊code{*} operator to access what's stored in the address.

◊codeblock{
int i, *p;
...
p = &i;
}

In the source right above, Until we make ◊code{p} to point other address, ◊code{*p} is an alternative name for ◊code{i}. Moreover, changing the value of ◊code{*p} also changes the value of ◊code{i}. (Because ◊code{*p} is valid lvalue, assignment for ◊code{*p} is legal.)

◊section{pointer assignment}

◊temp{pointer assignment}

We can copy a pointer using assignment. When we copy the address of a pointer, the original pointer and copied one have the same address as their value. When multiple pointers share the same address, modifying a value of the object a pointer points to affects the entire pointers. That is, all pointers now points to the modified value of the object.

If we do not copy an address, two pointers would point to another address of different objects. If ◊code{q} and ◊code{p} are pointers, ◊code{*q = *p} would just copy the object ◊code{p} points to the object ◊code{q} points, not modifying the address ◊code{q} points to.

◊section{pointers as arguments}

◊temp{how to pass pointers to functions}

According to the property ◊em{call by value} of C, although we can modify a value of function argument in the body of the function, we cannot use the modified version of value of the function argument outside of the function. But if we use pointers, we can. Suppose we passed a variable ◊code{x} before, then we pass it as ◊code{&x} now, making the type of the argument as a pointer. In the function body, assigning a value to one of the arguments will modify the value of the object the argument's value (address) points to, and remain modified outside of the function.

◊bold{Using ◊code{const} to Protect Arguments}

Using ◊code{const} pointer as an argument of a function makes the function cannot modify the object the pointer points to. Though it's not general not to modify the object when we use a pointer as an argument, it's helpful for some cases where storage efficiency required.

◊section{pointers as return values}

◊temp{returning pointers from functions}

We can define a function that returns a pointer. The return pointer can be an address of an argument of the function, local variable declared ◊code{static} in the function, or an array argument.
