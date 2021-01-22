stores input integers into an array
counts a length of the array

#include <stdio.h>

int main(void)
{
	int flag = 1;
	int input;
	int a[], count = 0;

	while (flag != 0)
	{
	printf("enter a series of integers :");
	scanf(" %d", &input);
	a[count] = input;
	if (input == 0)
		flag = 0;
	}

	return 0;
}


find the largest element of the input array
move the largest element to the last position in the array
recursively call itself to sort all elements
void selection_sort(int a[])
{
	while 

}
