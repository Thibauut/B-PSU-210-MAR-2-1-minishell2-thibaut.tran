/*
** EPITECH PROJECT, 2021
** B-PSU-101-MAR-1-1-minishell1-thibaut.tran
** File description:
** mysh.c
*/

#include "include/my.h"

int main(int ac, char **av, char **env)
{
    int ret = 0;
    my_env_t *my_env = malloc(sizeof(my_env_t));
    my_env->env = env;
    if (ac > 1)
        return (84);
    my_prompt(my_env, &ret);
    return (ret);
}
