#include <stdio.h>

int main(void)
{
		int i1, i2, i3, i4;
		int large;
		int small;

		printf("Enter four integers: ");
		scanf("%d %d %d %d", &i1, &i2, &i3, &i4);

		if (i1 > i2)
		{
				large = i1;
				small = i2;
		}
		if (i1 < i2)
		{
				large = i2;
				small = i1;
		}

		if (large > i3)
		{
				if (small > i3)
				{
						small = i3;
						if (large > i4)
						{
								if (small > i4)
								{
										small = i4;
								}
								else
										;
						}
				}

		}
		printf("Largest: %d\n", large);
		printf("Smallest: %d\n", small);

		return 0;
}
