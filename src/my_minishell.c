/*
** EPITECH PROJECT, 2021
** B-PSU-101-MAR-1-1-minishell1-thibaut.tran
** File description:
** my_prompt.c
*/

#include "../include/my.h"

int print_prompt(void)
{
    write(0, "\e[1m",  5);
    write(0, "\x1B[32m", 6);
    write(0, "[THIB SHELL 2] ", 15);
    write(0, "\e[1m",  5);
    write(0, "\x1B[35m", 6);
    write(0, ">$ ", 3);
    write(0, "\e[0m",  5);
    return (0);
}

int my_prompt(my_env_t *m, int *ret)
{
    size_t size = 2000;
    char *line = NULL;
    print_prompt();
    while (getline(&line, &size, stdin) > 0) {
        line = clean_line(line);
        if (check_semicolon(line) == 0)
            my_semicolon(line, m, ret);
        else {
            m->tab = word_to_tab(line, ' ', 0);
            m->path = get_path(m->env);
            check_cmd(m, ret);
        }
        print_prompt();
    }
    write(0, "exit\n", 5);
    return (0);
}
