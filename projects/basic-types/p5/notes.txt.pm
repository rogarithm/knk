#lang pollen

flow: int -(getchar)-> ? -(toupper)-> ? -(rarity)-> ? -(?)-> int

getchar

ch = getchar(); ◊#{The character get by this is eaten by compiler when priting. Might be useful for detecting newline, not useful to print all input.}
while (ch != '\n')
{
	ch = getchar();
	ch = toupper(ch); ◊#{When used in this context, works fine}
	putchar(ch);
	// val = toupper(ch);
}


toupper and rarity

int ch, val;

printf("Enter a word: ");

val = 0;
while (ch != '\n')
{
	ch = getchar();
	ch = toupper(ch);
	ch = rarity(ch); ◊#{rarity prints a chracter form of number. It isn't an integer the value of which is the same as the integer.}
	putchar(ch); ◊#{For one character, the conversion works fine, but when trying to add values, it fails.}
} ◊#{separate adding procedure as a new function might be a solution}
