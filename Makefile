##
## EPITECH PROJECT, 2021
## B-PSU-101-MAR-1-1-minishell1-thibaut.tran
## File description:
## Makefile
##

SRC	=	mysh.c	\
		src/my_func.c	\
		src/my_func2.c	\
		src/my_func3.c	\
		src/my_get_path.c	\
		src/my_exec.c	\
		src/my_error.c	\
		src/my_minishell.c	\
		src/my_check_cmd.c	\
		src/my_tab_and_space.c	\
		src/builtin/my_setenv.c	\
		src/builtin/my_setenv2.c	\
		src/builtin/my_exit.c	\
		src/builtin/my_cd.c	\
		src/builtin/my_cd2.c	\
		src/builtin/my_env.c	\
		src/builtin/my_unsetenv.c	\
		src/symbol/my_semicolon.c

OBJ	=	$(SRC:.c=.o)

NAME	= mysh

all	:	$(NAME)

$(NAME)	:	$(OBJ)
	gcc	-g $(OBJ) 	-o	$(NAME)

clean :
	rm	-f	*.o
	rm	-f	*~
	rm src/*.o
	rm src/builtin/*.o
	rm src/symbol/*.o

fclean :
	rm	-f	$(NAME)

re :	fclean	all	clean