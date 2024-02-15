/*
** EPITECH PROJECT, 2024
** B-ASM-400-MPL-4-1-asmminilibc-victor.boudet
** File description:
** main
*/

#include <stdio.h>

size_t strlen(const char *str);

void strlen_test(void)
{
    printf("Strlen (should be '11') : '%zu'\n", strlen("Hello World"));
}

int main(void)
{
    strlen_test();
    return 0;
}
