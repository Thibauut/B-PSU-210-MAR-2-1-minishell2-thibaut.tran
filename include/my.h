/*
** EPITECH PROJECT, 2021
** B-PSU-210-MAR-2-1-minishell2-thibaut.tran
** File description:
** my.h
*/

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <signal.h>
#include <errno.h>
#include <dirent.h>
#include <sys/stat.h>
#include <fcntl.h>
#define m_len my_strlen
#define m_cmp my_strcmp
#define m_cpy my_strcpy

#ifndef MY_H_
    #define MY_H_

typedef struct env_s {
    char *refresh_pwd;
    char *old_pwd;
    char **tab_pwd, **tab, **path;
    char **path_cmd, **path_cmd2;
    char **env, **tmp_env;
    char *str, *str2;
    char *stock;
    int verif;
    char *line;
    char *tmp;
    char *file;
    int save, save2;
    char *first_arg;
    char *new_line, *test;
    int fd;
    int verif_dup;
    int save_in, save_out;
} my_env_t;

int my_shell(my_env_t *m, int *ret);
int tab_len(char **tab);
char *my_strdup(char *str);
void my_putchar(char c);
void my_putstr(char *str);
int my_getnbr(char *str);
int my_strlen(char *str);
int my_show_word_array(char **tab);
char *my_itoa(int nb);
int my_strcmp(char *s1, char *s2);
int my_strcmp2(char *s1, char *s2);
int create_tab(char *str, char c);
char **word_to_tab(char *str, char c, int i);
char *my_strcpy(char *dest, char const *src);
char **check_spaces(char **tab, char limit);
char *my_strcat(char *dest, char const *src);
int my_cmd(my_env_t *m, int *ret);
int check_cmd(char *line, my_env_t *m, int *ret);
int path_cmd(my_env_t *m, int *ret);
char **get_path(char **env);
char *clean_line(char *line);
void my_exec(char *path, char **env, int *ret, my_env_t *m);
void my_putstr_error(char *str);
int print_error(char *str, char *str2);
int cd(my_env_t *m, int *ret);
char *rm_extra_spaces(char *str);
char *tab_to_space(char *str);
int is_alpha(char *str);
int my_exit(my_env_t *m);
int my_setenv(my_env_t *m, int *ret);
char **refresh_env(my_env_t *m, char *str);
char **set_setenv(char **tab, my_env_t *my_env, char **env);
char *charge_setenv(char **tab, int arg);
int my_new_env(my_env_t *my_env);
int my_env_exist(my_env_t *m);
int pos_env(my_env_t *m, char *str);
int exist_setenv(my_env_t *m, char *str);
int no_exist_setenv(my_env_t *m, char *str);
int if_setenv_exist(my_env_t *m);
int if_setenv(my_env_t *m);
int pos_env(my_env_t *m, char *str);
int if_unsetenv(my_env_t *m);
int my_unsetenv(my_env_t *m, int *ret);
int my_env(my_env_t *m, int *ret);
int exec(my_env_t *m, int *ret);
int my_env_exist_for_cd(my_env_t *m);
int exist_setenv_for_cd(my_env_t *m, char *str);
int if_setenv_for_cd(my_env_t *m);
int my_setenv_for_cd(my_env_t *m, int *ret);
char *clean_get(char *home);
int pwd_tab(my_env_t *m);
char *my_get_line(char **env, char *arg);
char *my_semicolon(my_env_t *m, int *ret);
int check_semicolon(char *line);
char *my_pipe(my_env_t *m, int  *ret);
int check_pipe(char *line);
char *my_redirection(my_env_t *m, int  *ret, int i);
void get_first_arg(my_env_t *m, char c);
void get_last_arg(my_env_t *m, char c);
void get_file_name(my_env_t *m, char c);
int check_limit_name(my_env_t *m, int i, int j);
int check_limit_last(my_env_t *m, int i, int j);
void get_file_name_double(my_env_t *m, char c);
void get_last_arg_double(my_env_t *m, char c);
int check_limit_last_double(my_env_t *m, int i, int j);
char *clean_name(char *file);
char *my_entry(my_env_t *m, int *ret, int i);
void fix_dup(my_env_t *m);
int path_cmd2(my_env_t *m, int *ret);
int check_cmd2(char *line, my_env_t *m, int *ret);
void my_exec2(char *path, char **env, int *ret, my_env_t *m);
void get_entry_arg(my_env_t *m, int *ret);
void get_last_entry_arg(my_env_t *m, char c);
void get_first_entry_arg(my_env_t *m, int  *ret);
void init_pipe_arg(my_env_t *m, int *ret);
void get_last_pipe(my_env_t *m, char c);
void pipe_error(pid_t pid, int pipefd);
void get_pipe_arg(my_env_t *m, int *ret);
void get_last_pipe_arg(my_env_t *m, char c);
char *get_new_line(my_env_t *m, int *ret);

#endif
