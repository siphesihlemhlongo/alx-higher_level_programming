#include "main.h"
/**
 * _strcmp - compare string values
 * @sl: input value
 * @s2: input value
 * Return: sl[i] - s2[i]
 */
int _strcmp(char *sl, char *s2)
{
        int i;

        i = 0;
        while (sl[i] != '\0' && s2[i] != '\0')
        {
                if (sl[i] != s2[i])
                {
                        return (sl[i] - s2[i]);
                }
                i++;
        }
        return (0);
}
