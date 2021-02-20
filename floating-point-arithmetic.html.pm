#lang pollen

◊section{}

◊section{introduction}

floating-point arithmetic (floating-point hereafter)

section 1 discusses possible results from using different strategies for the basic operations of addition, subtraction, multiplication, and division.

section 2 discusses the IEEE floating-point standard. This standard contains rounding method for basic operations discussed in section 1.

section 3 discusses the connections between floating point and the design of various aspects o computer systems

section 4 explains not central to the main argument. It can be skipped if you want.

◊subsection{rounding error}

Unlike the case for integer, there's cases when a result of calculation containing real number cannot be represented without rounding. Rounding makes a rounding error which is the characteristic feature of floating-point computation.

Since rounding error is unavoidable for floating-point calculations, does it matter if some arithmetic operations make a more rounding error than necessary? This is a main theme throughout this section. ◊em{guard digits} is a tool for reducing the error when subtracting two nearby numbers.

The IEEE standard goes beyond the use of a guard digit, to an algorithm. The algorithm for addition, subtraction, multiplication, division, and square root requires the same result no matter what machine the floating-point arithmetic is performed. This simplifies the porting of programs.

◊subsection{floating-point formats}

Floating-point representation is the most widely used representation of real numbers. Floating-point representations have a base β and a precision p. If β = 10 and p = 3, the number 0.1 is represented as 1.00 X 10^(-1). See that 10 is the same as base, and 1.00 has the number as much as p. Numbers like 1.00 is called the significand and ahs p digits.
