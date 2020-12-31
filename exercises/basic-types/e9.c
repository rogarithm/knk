it should be int

/* useless
// type of ◊exp{i / j + 'a'} when ◊var{i} and ◊var{j} has type int?
#include <stdio.h>

int main(void)
{
		int loop_flag;
		int i;
		int j;

		printf("find if there's exception for result type of i/j\n");
		while(loop_flag != 0)
		{
				printf("take a shot: ");
				scanf("%d/%d", &i, &j);
				printf("i/j is %d", i/j);
				printf("\n");

				printf("type 0 if you want to quit: ");
				scanf("%d", &loop_flag);
		}

		return 0;
}
*/
