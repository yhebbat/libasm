
#ifndef LIBASM_H
# define LIBASM_H

# include <string.h>
# include <stdlib.h>
# include <unistd.h>
# include <stdio.h>
# include <fcntl.h>
# include <stdlib.h>
# include <errno.h>

size_t		ft_strlen(char *str);
char		*ft_strcpy(char * dst, const char * src);
ssize_t		ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t		ft_read(int fildes, void *buf, size_t nbyte);
int			ft_strcmp(char *str1, char *str2);
char        *ft_strdup(const char *s1);

#endif