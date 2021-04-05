#include <stdio.h>            |#include <stdio.h>             
                              |                               
#define N 100                 |                               
                              |                               
void f(void);                 |void f(void);                  
                              |                               
int main(void)                |int main(void)                 
{                             |{                              
	f();                        |	f();                         
#ifdef N                      |	return 0;                    
#undef N                      |}                              
#endif                        |                               
	return 0;                   |void f(void)                   
}                             |{                              
                              |	printf("N is undefined\n");  
void f(void)                  |}                              
{                             |
#if defined(N)                |
	printf("N is %d\n", N);     |
#else                         |
	printf("N is undefined\n"); |
#endif                        |
}                             |
