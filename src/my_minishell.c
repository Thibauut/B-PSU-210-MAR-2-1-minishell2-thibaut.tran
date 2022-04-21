/*
** EPITECH PROJECT, 2021
** B-PSU-210-MAR-2-1-minishell2-thibaut.tran
** File description:
** my_minishell.c
*/

#include "../include/my.h"

#define simple_redir (m->line[i] == '>' && m->line[i + 1] != '>')
#define double_redir (m->line[i] == '>' && m->line[i + 1] == '>')
#define simple_entry (m->line[i] == '<' && m->line[i + 1] != '<')
#define double_entry (m->line[i] == '<' && m->line[i + 1] == '<')

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

void init_symbols(my_env_t *m, int *ret)
{
    int i = 0;
    for (; m->line[i] != '\0'; i += 1) {
        if (m->line[i] == ';')
            m->line = my_semicolon(m, ret), i = 0;
        if (simple_redir || double_redir)
            m->line = my_redirection(m, ret, i), i = 0;
        if (simple_entry || double_entry)
            m->line = my_entry(m, ret, i), i = 0;
        if (m->line[i] == '|')
            m->line = my_pipe(m, ret), i = 0;
    }
    return;
}

void init_cmd(my_env_t *m, char *line, int *ret)
{
    m->tab = word_to_tab(line, ' ', 0);
    m->path = get_path(m->env);
    check_cmd(line, m, ret);
}

int my_shell(my_env_t *m, int *ret)
{
    size_t size = 2000;
    m->save_in = dup(STDIN_FILENO);
    m->save_out = dup(STDOUT_FILENO);
    print_prompt();
    while (getline(&m->line, &size, stdin) > 0) {
        m->line = clean_line(m->line);
        init_symbols(m, ret);
        init_cmd(m, m->line, ret);
        print_prompt();
    }
    write(0, "exit\n", 5);
    return (0);
}
