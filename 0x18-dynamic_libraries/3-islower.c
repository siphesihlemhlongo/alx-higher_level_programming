#include "main.h"

/**
 * _islower - Checks the lowercase alphabets
 * @c: Checked character
 * Return: if character is lowercase, otherwise
 */

int _islower(int c)
{
        if (c >= 'a' && c <= 'z')
                return (1);
        else
                return (0);
}
