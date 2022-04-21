/*
** EPITECH PROJECT, 2021
** B-PSU-210-MAR-2-1-minishell2-thibaut.tran
** File description:
** mysh.c
*/

#include "include/my.h"

int main(int ac, char **av, char **env)
{
    int ret = 0;
    my_env_t *my_env = malloc(sizeof(my_env_t));
    my_env->verif_dup = 0;
    my_env->env = env;
    my_env->save2 = dup(STDOUT_FILENO);
    if (ac > 1)
        return (84);
    my_shell(my_env, &ret);
    return (ret);
}
