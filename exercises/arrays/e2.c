Describe how to use a ◊uc{digit (in character form)} as a subscript

What is digit in character form?

We can use a letter as an array subscript. When using a character as a subscript, we have to subtract the initial value (in this case, 'a') from our character to "normalize" our subscript.

A digit in character form is the same as this, but the difference is we enter a digit, not a character. If we want to enter 'a' with a digit in character form, we can do by ◊c{a[65 - 65]}. The -65 is for "normalization".
