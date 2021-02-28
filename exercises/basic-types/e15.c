#include <stdio.h>
#include <stdint.h>

int main(void)
{
	typedef int8_t Int8;
	typedef int16_t Int16;
	typedef int32_t Int32;

	// 1 byte is the same as 8 bits
	printf("%lu\n", 8 * (unsigned long) sizeof (Int8));
	printf("%lu\n", 8 * (unsigned long) sizeof (Int16));
	printf("%lu\n", 8 * (unsigned long) sizeof (Int32));

	return 0;
}
