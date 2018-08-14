#include<stdio.h>

int main(void) {
	unsigned long fib[30];
	fib[0] = 1;
	fib[1] = 1;
	printf("%ld\t%ld\t",fib[0],fib[1]);
	for (int i = 2; i < 30; i++) {
		fib[i] = fib[i - 1] + fib[i - 2];
		printf("%ld\t",fib[i]);
		if (i % 10 == 9) {
			printf("\n");
		}
	}
	return 0;
}
