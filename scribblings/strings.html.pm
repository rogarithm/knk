#lang pollen

◊title{strings}

◊section{}

convenient way to process a series of characters

◊section{string literals}

A set of characters wrapped by double quotes. The ones that we've put into printf and scanf for fist argument is string literal.

◊bold{escape sequences in string literals}

We can use special (nonprinting) characters in string literals with character constants. These characters are called escape sequences. Like "\n" causes the string put a newline character, using escape sequences cause its special meaning to the string literal.

◊bold{continuing a string literal}

To enter very long single string in more than one line, you can use \. End the first line with a backslash character (no other additional characters allowed after backslash character) then you can move on in the next line. Backslash allowed you to join multiple lines into a single line.

printf("I want this sentence as a single one \
but in multiple line.");

But the line after the line containg \ must begin without preceding white spaces. It means that we can't use indenting. To remedy, we can use the fact that when two or more string literals are adjacent (separated only by white space), the literals are joined into a single string.

printf("Now we can join "
       "with preceding white spaces");

Here's my question: is the white space includes tab?

◊bold{how string literals are stored}

To answer how a string literal argument of printf function is passed, we need to know how string literals are stored.

For a string literal of length n, the compiler set aside the memory of n+1. The string literal is stored in n memory, and for the additional 1 memory, the null character ('\0') is stored. Null character marks the end of the string. The null character is a byte the contents of all bits are zero.

C treats string literals as character arrays. So the compiler treats them as a pointer of type char *. That is, when printf("what?"); is called, it's passed the address of "what?" (an address of the letter w).

◊bold{operations on string literals}

A string literal can be used wherever char * can be used. For example, it can be used in the right side of assignment, or can use subscription.

◊bold{string literals versus character constants}

String literals are represented by a pointer. Character constant is represented by an integer.

◊section{string variables}

C does not provide a string type of its own. Instead, any 1-d array of characters can be used to store a string. What is important is that every string must be terminated with a null character. What it means is that if you need a string capable of storing 80 characters, you need an array of 81 elements (80 characters plus null character). An idiom for this:

#define STR_LEN 80
...
char str[STR_LEN+1];

Making STR_LEN 80, not 81, is to emphasize the string part from the terminating null character.

Though declared as 80, this is array length, not the length of string. String length can be from 0 to 80 depending on the position of the terminating null character.

◊bold{initializing a string variable}

char date1[8];
date1 = "June 14";

date1 is not a string literal. Instead, C views it as an abbreviation for an array initializer.

When the initializer is too short to fill the string variable, the extra null characters are filled in the left space.

An array initializer longer than the string variable is illegal, but an array initializer with exact length (not counting the null character) as the variable is legal:

char date3[7] = "June 14";

When initialize a string variable without its length specified, the compiler computes it (of course, it includes the terminating null character):

char date4[] = "June 14";

After its length is computed, the length is fixed.

◊bold{character arrays versus character pointers}

char date[] = "June 14";  |  char *date = "June 14";

Either version can be given as a string argument. But the two are not interchangeable.

Array version of date can be modified, but pointer version of date should not be modified. So if we plan to use a string that can be modified, it should be declared as an array of characters. If you want to use a char type pointer as a string, it must point to an array of characters:

char str[STR_LEN+1], *p;

p = str;

◊section{reading and writing strings}

For printing, either printf or puts function can be used. For reading, either scanf or gets can be used for reading at once, or we can read strings one character at a time.

◊bold{writing strings using printf and puts}

To print a string in printf function, use %s, the function continues until it finds a null character.

The conversion specification can be used to format the string. In %.ps, p determines the number of characters to be printed. Using this, you can print a part of a string. The %ms conversion determines how the string will be justified. Unless the length of s exceeds m, s will be justified to the right when m is positive value, and to the left when m is negative value. When the length of s is equal to or more than m, the compiler will automatically allocate memory to store the string s. The m and p values can be used in combination.

The function ◊c{puts} has only one argument, string. puts returns the input string and additional newline character.

◊bold{reading strings using scanf and gets}

To specify a string in string literal of scanf function, use %s conversion specification.

scanf function skips white space preceding the first non white-space character, then reads until the function meets a white-space character. The white-space character contains a tab character, and a new-line character. This restriction means that you can't read an entire line with scanf. To do that, use gets function. the gets function reads input characters into an array, and stores a null character. This is ◊uc{the same} with scanf function, but gets function:

a) gets function also reads the preceding white-spaces.
b) gets ends its reading when it encounters a new-line character, and discards the new-line character and fills with the null character.

The possible problem of scanf and gets is that, these functions doesn't recognize when the array to store input string is full. So when input string exceeds the end of the array, it causes undefined behavior. For scanf function, by indicating in conversion specification n in %ns, it can be made safer. For gets, there's no alternative. fgets is a much better alternative.

◊bold{reading strings character by character}

If you need an input function that is more flexible than scanf and gets, make your own by yourself.

To design our own input function, consider following:

- How to do with white space before beginning of the string? Discard? or store?
- When the function stop reading? What's the condition (that is, character) to stop reading? A new-line character, any white-space character, or other character? Is the character stored in the string or discarded?
- When the input string exceeds the capacity of the array to store the string, what to do? Discard the extra character? or leave them for the next input operation?

When using getchar function, the ◊c{ch} in ◊c{ch = getchar()} should be declared as int type, not char type, because getchar returns the character that it reads as an int value. ◊uc{Then what happens when ch is declared with char type?}

We must take care of putting the terminating null character at the end of the string. Unlike scanf or gets, functions we've made doesn't do it automatically.

◊section{accessing the characters in a string}

To access the characters in a string, we can use subscripting.

◊codeblock{
int count_spaces(const char s[])
{                               
	int ch, i = 0;                
                                
	for (i = 0; s[i] != '\0'; i++)
	  if (s[i] == ' ')            
		  count++;                  
	return count;                 
}                               
}

◊codeblock{
int count_spaces(const char *s)
{
	int count = 0;

	for (; *s != '\0'; s++) ◊?{wasn't modifying the name of a pointer illegal?}
	  if (s[i] == ' ')
		  count++;
	return count;
}
}

◊section{using the c string library}

◊bold{the strcpy (string copy) function}

◊bold{the strlen (string length) function}

strlen, when a given argument is an array, only returns the length of the string stored in the array, not the length of the array. That is:

◊codeblock{
int len;

int *str1[20];
strcpy(str1, "abc");
len = strlen(str1);
}

After the last statement, len is 3, not 20.

◊bold{the strcat (string concatenation) function}

◊bold{the strcmp (string comparison) function}

◊section{string idioms}

◊bold{searching for the end of a string}

◊bold{copying a string}

◊section{array of strings}

◊bold{command-line arguments}

◊bold{program: checking planet names}
