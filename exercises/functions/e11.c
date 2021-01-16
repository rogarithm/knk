#include <stdio.h>
float compute_GPA(char grades[], int n);

int main(void)
{
	char g[] = { 'a', 'B', 'c', 'd', 'f' };

	printf("when { A, B, C, C, F }, the gpa is same as 2 == %f\n", compute_GPA(g, 5));

	return 0;
}

float compute_GPA(char grades[], int n)
{
	int count;
	int sum;

	count = 0;
	sum = 0;
	while (count < n)
	{
		if ((grades[count] == 'A') || (grades[count] == 'a'))
			sum = sum + 4;
		if ((grades[count] == 'B') || (grades[count] == 'b'))
			sum = sum + 3;
		if ((grades[count] == 'C') || (grades[count] == 'c'))
			sum = sum + 2;
		if ((grades[count] == 'D') || (grades[count] == 'd'))
			sum = sum + 1;
		if ((grades[count] == 'F') || (grades[count] == 'f'))
			sum = sum + 0;
		count++;
	}
	sum = (float) (sum / n);

	return sum;
}
