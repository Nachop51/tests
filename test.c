#include <stdio.h>
#include <stdlib.h>
void print_binary(int num);

/**
 * main - this is a test
 *
 * Return: no error
 */
int main(void)
{
	print_binary(16);
	putchar(10);
	print_binary(328945);
	putchar(10);
	print_binary(55);
	putchar(10);
	return (0);
}

void print_binary(int num)
{
	if (num < 2)
		putchar(num + 48);
	else
	{
		print_binary(num / 2);
		putchar(num % 2 + 48);
	}
	return;
}
