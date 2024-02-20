/*
** EPITECH PROJECT, 2024
** B-ASM-400-MPL-4-1-asmminilibc-victor.boudet
** File description:
** main
*/

#include <stdio.h>

size_t strlen(const char *str);
char *strstr(const char *haystack, const char *needle);

void strlen_test(void)
{
    printf("Strlen (should be '11') : '%zu'\n", strlen("Hello World"));
}

void strstr_test(void)
{
    printf("Strstr (should be 'World') : '%s'\n", strstr("Hello World", "World"));
}

int main(void)
{
    strstr_test();
    return 0;
}
