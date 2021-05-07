NAME 	= libasm.a

CC 		= clang

FLAGS 	= -Wall -Wextra -Werror

SRC 	= ft_strlen.s\
		  ft_strcpy.s\
		  ft_strcmp.s\
		  ft_write.s\
		  ft_read.s\
		  ft_strdup.s

OBJ 	= $(SRC:.s=.o)

all : $(NAME)

$(NAME):$(SRC)
	@nasm -f macho64 ft_strlen.s -o ft_strlen.o
	@nasm -f macho64 ft_strcpy.s -o ft_strcpy.o
	@nasm -f macho64 ft_strcmp.s -o ft_strcmp.o
	@nasm -f macho64 ft_write.s -o ft_write.o
	@nasm -f macho64 ft_read.s -o ft_read.o
	@nasm -f macho64 ft_strdup.s -o ft_strdup.o
	@ar rc $(NAME) $(OBJ)
	@echo "libasm.a is ready"

clean:
	@rm -rf *.o
	@echo "Object files deleted successfully"

fclean:clean
	@rm -rf $(NAME)
	@rm -rf ./a.out

re: fclean all

.PHONY : make re all clean fclean