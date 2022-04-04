/*
** EPITECH PROJECT, 2021
** B-PSU-101-MAR-1-1-minishell2-thibaut.tran
** File description:
** my_exit.c
*/

#include "../../include/my.h"

int my_exit(my_env_t *m)
{
    if (m->tab[1] != NULL) {
        write(2, "exit\n", 5);
        exit(my_getnbr(m->tab[1]));
    }
    else {
        write(2, "exit\n", 5);
        exit (EXIT_SUCCESS);
    }
    return (0);
}