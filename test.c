#include <stdio.h>
#include <stdlib.h>

int greaterThanZero(int a);

/**
 * main - this is a test
 *
 * Return: no error
 */
int main(void)
{
	int r = greaterThanZero(2), a = 0;

	if (r == 1)
	{
		a = 3242342;
		printf("Greater than zero\n");
	}
	else
		printf("Lower than zero\n");

	return (0);
}

/**
 * greaterThanZero - checks if a n is greater than 0
 * @a: number
 *
 * Return: 1 or 0
 */
int greaterThanZero(int a)
{
	if (a > 0)
		return (1);
	return (0);
}
