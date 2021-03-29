// What will be the contents of the a array after the following statements are executed?

#define N 10

int a[N] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
int *p = &a[0], *q = &a[N-1], temp;

while (p < q) {
	temp = *p;
	*p++ = *q; // store the value of q in q and move p's position one step right
	*q-- = temp; // store the value of p (before assigning) to q and move q's position one step left
}

The loop continues to a[4] < a[5], making {10, 9, 8, ... 3, 2, 1}
