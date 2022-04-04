/*
** EPITECH PROJECT, 2021
** B-PSU-101-MAR-1-1-minishell2-thibaut.tran
** File description:
** my_semicolon.c
*/

#include "../../include/my.h"

int check_semicolon(char *line)
{
    for (int i = 0; line[i] != '\0'; i += 1) {
        if (line [i] == ';')
            return (0);
    }
    return (1);
}

int my_semicolon(char *line, my_env_t *m, int *ret)
{
    char **tab = word_to_tab(line, ';', 0);
    for (int i = 0; tab[i] != 0; i += 1) {
        m->tab = word_to_tab(tab[i], ' ', 0);
        m->path = get_path(m->env);
        check_cmd(m, ret);
    }
    return (0);
}