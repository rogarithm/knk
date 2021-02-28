what's the type of i + (int) j * k

int i;
long j;
unsigned int k;

(int) j * k: compute as int * unsigned int. apply usual conversion and get unsigned int (as unsigned int > int in memory). ◊uc{the long type affects after this procedure}

i + (j*k): compute as int + unsigned int. apply usual conversion. the result will be unsigned int.
