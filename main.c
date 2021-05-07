#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <stdio.h>
#include "libasm.h"

int		main(void)
{
    //printf("`%s` = %ld (%d)\n", "yassine", ft_strlen("yassine"), (int)strlen("yassine"));
    char *s = "abc";
    char *c = "abd";

    //printf("%d---%s,%s\n\n", ft_strcmp(s, c), s, c);
    printf("%s", ft_strdup(s));
    //char *s = "hey";
    //char *c = "lala";
    //printf("%s", strcpy("hey", "uau"));
    return (0);
}