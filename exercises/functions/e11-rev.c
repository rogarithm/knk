#include <stdio.h>
#include <ctype.h>

float compute_GPA(char grades[], int n);

int main(void)
{
	char g[20];
	int count = 0;

	printf("Enter your grades: ");

	while ((g[count] = getchar()) != EOF && g[count] != '\n')
	{
		g[count] = toupper(g[count]);
		count++;
	}

	printf("Your gpa is %.2f\n", compute_GPA(g, count));

	return 0;
}

float compute_GPA(char grades[], int n)
{
	int count;
	float sum;

	count = 0;
	sum = 0;
	while (count < n)
	{
		if (grades[count] == 'A')
			sum = sum + 4;
		if (grades[count] == 'B')
			sum = sum + 3;
		if (grades[count] == 'C')
			sum = sum + 2;
		if (grades[count] == 'D')
			sum = sum + 1;
		if (grades[count] == 'F')
			sum = sum + 0;
		count++;
	}
	sum = sum / n;

	return sum;
}

