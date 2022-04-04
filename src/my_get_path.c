/*
** EPITECH PROJECT, 2021
** B-PSU-101-MAR-1-1-minishell1-thibaut.tran
** File description:
** my_get_path.c
*/

#include "../include/my.h"

char *my_get_line(char **env, char *arg)
{
    char *line;
    int i = 0;
    for (; env[i] != 0; i += 1) {
        if (my_strcmp2(env[i], arg) == 0) {
            line = my_strdup(env[i]);
            line = clean_get_home(line);
        }
    }
    return (line);
}

int path_cmd(my_env_t *m, int *ret)
{

    char **tmp = malloc(sizeof(char *) * (tab_len(m->path) + 20));
    for (int i = 0; m->path[i] != 0; i += 1) {
        tmp[i] = malloc(sizeof(char) * (m_len(m->path[i]) +
        m_len(m->tab[0]) + 20));
        tmp[i] = m_cpy(tmp[i], m->path[i]), tmp[i] = my_strcat(tmp[i], "/");
        tmp[i] = my_strcat(tmp[i], m->tab[0]);
        if (access(tmp[i], X_OK) == 0 && access(tmp[i], F_OK) == 0) {
            my_exec(tmp[i], m->tab, m->env, ret);
            return (1);
        }
    }
    return (0);
}

char **get_path(char **env)
{
    char **path;
    for (int i = 0; env[i] != 0; i += 1) {
        if (env[i][0] ==  'P' && env[i][1] ==  'A' && env[i][2] ==  'T' ||
        env[i][3] ==  'H' && env[i][4] ==  '=')
            path = word_to_tab(env[i], ':', 5);
    }
    return (path);
}
