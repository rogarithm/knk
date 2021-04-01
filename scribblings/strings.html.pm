#lang pollen

◊title{strings}

◊section{}

convenient way to process a series of characters

◊section{string literals}

A set of characters wrapped by double quotes. The one that we've put into printf and scanf for fist argument is string literal.

◊bold{escape sequences in string literals}

We can use special (nonprinting) characters in string literals ◊uc{with} character constants. These characters are called escape sequences. ◊uc{Like "\n" causes the string to put a newline character, using escape sequences apply its special meaning in effect to the string literal.}

◊bold{continuing a string literal}

To enter a very long string in more than one line, but not splitted, you can use \. End the first line with a backslash character (no other additional characters allowed after backslash character) then you can keep writing your one long line from the next line without making new line:

◊codeblock{
printf("I want this sentence as a single one \
but also want to write in multiple line.");
}

But the line after the line containg \ must begin without preceding white spaces. It means we can't use indenting to align string literals. To remedy, we can use the fact that when two or more string literals are adjacent (separated only by white space), the literals are joined into a single string.

printf("Now we can join "
       "with preceding white spaces");

◊uc{Here's my question: is the white space includes tab?}

◊bold{how string literals are stored}

How a string literal argument of printf function is passed? To answer, we need to know how string literals are stored.

For a string literal of length n, the compiler set aside the memory of n+1. The string literal is stored in memory of the amount of n, and the additional 1 memory is used to store the null character ('\0'). Null character marks the end of the string. The character is a byte where all bits are ◊uc{assigned as} zero.

C treats string literals as character arrays. So the compiler treats them as a pointer of type char *. That is, when printf("what?"); is called, it's passed the address of "what?" (an address of the letter w).

◊bold{operations on string literals}

A string literal can be used wherever char * can be used and properties the type can use. For example, it can be used in the right side of assignment, and it can use subscription to access its element.

◊bold{string literals versus character constants}

String literals are represented by a pointer. Character constant is represented by an integer.

◊section{string variables}

C does not provide a string type of its own. Instead, any 1-d array of characters can be used to store a string. What is important is that every string must be terminated with a null character. What it means is that if you need a string capable of storing 80 characters, you need an array of 81 elements (80 characters plus null character). An idiom for this:

◊codeblock{
#define STR_LEN 80
...
char str[STR_LEN+1];
}

The reason of defining STR_LEN without room for the terminating null character is to emphasize the string part.

Though declared as 80, this is array length, not the length of string. Possible range of string length can be varied from 0 to 80 depending on the position of the terminating null character.

◊bold{initializing a string variable}

How to initialize a string variable? Like this:

◊codeblock{
char date1[8];
date1 = "June 14";
}

◊c{date1} is not a string literal. Instead, C views it as an abbreviation for an array initializer.

If an initializer (that is, string value) is too short to fill given space of string variable, the space left as empty is filled with extra null characters.

An array initializer longer than given space of a string variable is illegal, but an array initializer of the same length (not counting the null character) of given space of string variable is legal:

char date3[7] = "June 14";
◊uc{Could this string initializer make a trouble?}

When initializing a string variable without specifying its length, the compiler computes it (of course, including the terminating null character):

char date4[] = "June 14";

After its length is computed from the initializer, the length is fixed.

◊bold{character arrays versus character pointers}

char date[] = "June 14";  |  char *date = "June 14";

Either version can be given as a string argument. But the two are not interchangeable.

Array version of ◊c{date} can be modified, but pointer version of ◊c{date} should not be modified. So if we plan to use a string that can be modified, it should be declared as an array of characters.

If you want to use a char type pointer as a string, it must point to an array of characters:

◊codeblock{
char str[STR_LEN+1], *p;
p = str;
}

◊section{reading and writing strings}

To print a string, either printf or puts functions can be used. To read a string, either scanf or gets functions can be used. These functions read input at once. If you want (slightly) different reading condition, make your own.

◊bold{writing strings using printf and puts}

To print a string in printf function, use %s. The function continue to reading until it finds a null character.

The conversion specification can be used to format the string. In %.ps, p determines the number of characters to be printed. You can print a part of a string using this specification. The %ms conversion determines how the string will be justified. Unless the length of s exceeds m, s will be justified to the right when m is positive value, and to the left when m is negative value. When the length of s is equal to or longer than m, the compiler will automatically allocate memory to store the string s. The m and p values can be used in combination.

The function ◊c{puts} has only one argument, string. ◊c{puts} returns the input string and additional newline character.

◊bold{reading strings using scanf and gets}

To specify a string in string literal of scanf function, use %s conversion specification.

scanf function skips white space preceding the first non white-space character, then reads until the function meets a white-space character. The white-space character contains a tab character, and a new-line character. This property of scanf restricts you unable to read an entire line with scanf. To read entire line, use gets function. the gets function reads input characters into an array, and appends a null character at its end. ◊uc{This} is ◊uc{the same} with scanf function, but gets function has some differences from scanf:

a) gets function also reads the preceding white-spaces.
b) gets ends its reading when it encounters a new-line character, and discards the new-line character and fills the room with the null character.

The possible problem of scanf and gets is that, these functions doesn't recognize when our input exceeds the maximum storage of the array. So when it happens, it causes undefined behavior. For scanf function, it can be made safer for this exceptional case by indicating conversion specification n, like %ns. For gets, there's no alternative. Using fgets is an alternative.

◊bold{reading strings character by character}

If you need an input function that is more flexible than scanf and gets, make your own by yourself.

To design our own input function, consider following:

- How to do with white space before beginning of the string? Discard? or store?
- When the function stop reading? What's the condition (that is, character) to stop reading? A new-line character, any white-space character, or other character? Is the character stored in the string or discarded?
- When the input string exceeds the capacity of the array to store the string, what to do? Discard the extra character? or leave them for the next input operation?

When using getchar function, the ◊c{ch} in ◊c{ch = getchar()} should be declared as int type, not char type, because getchar reads as an int value, and returns the character corresponds to the int value. ◊uc{Then what happens when ch is declared with char type?}

We must take care of putting the terminating null character at the end of the string. Unlike scanf or gets, functions we'll make wouldn't do it automatically.

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
