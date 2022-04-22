#!/bin/sh

#Nao-Marvin for MiniShell 2 by TOURRAL Alexandre & TARALLO Théo ©.

# [COLOR SETTINGS]

RED='\033[0;31m'
GREEN='\033[1;32m'
BLUE='\033[0;36m'
NC='\033[0m'

# [LAUNCH]

make all
clear
printf "Nao-Marvin for MiniShell 2 by ${BLUE}TOURRAL Alexandre${NC} & ${BLUE}TARALLO Théo${NC} ©.\n"
sleep 2.0
printf "Les AERs ${RED}REMPLACANTS${NC}.\n"
sleep 1.5
printf "ISSOU !\n\n"
sleep 1.0

# [TEST #1 : ls]

echo "ls" | ./mysh > ../my_sh_file
echo "ls" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #1 : ls${NC}]\t\t\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #1 : ls${NC}]\t\t\t\t-->\t${RED}Test failed${NC} !\n"
fi
rm ../my_sh_file
rm ../tcsh_file

# [TEST #2 : ls -l]

echo "ls -l" | ./mysh > ../my_sh_file
echo "ls -l" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #2 : ls -l${NC}]\t\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #2 : ls -l${NC}]\t\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #3 : ls -a]

echo "ls -a" | ./mysh > ../my_sh_file
echo "ls -a" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #3 : ls -a${NC}]\t\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #3 : ls -a${NC}]\t\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #4 : ls -l -a]

echo "ls -l -a" | ./mysh > ../my_sh_file
echo "ls -l -a" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #4 : ls -l -a${NC}]\t\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #4 : ls -l -a${NC}]\t\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #5 : ls -la]

echo "ls -la" | ./mysh > ../my_sh_file
echo "ls -la" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #5 : ls -la${NC}]\t\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #5 : ls -la${NC}]\t\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #6 : ls -l /usr /var]

echo "ls -l /usr /var" | ./mysh > my_sh_file
echo "ls -l /usr /var" | tcsh > tcsh_file
if cmp  "my_sh_file"  "tcsh_file"; then
    printf "[${BLUE}TEST #6 : ls -l /usr /var${NC}]\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #6 : ls -l /usr /var${NC}]\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm my_sh_file
# rm tcsh_file

# [TEST #7 : pwd]

echo "pwd" | ./mysh > my_sh_file
echo "pwd" | tcsh > tcsh_file
if cmp  "my_sh_file"  "tcsh_file"; then
    printf "[${BLUE}TEST #7 : pwd${NC}]\t\t\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #7 : pwd${NC}]\t\t\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm my_sh_file
# rm tcsh_file

# [TEST #8 : cd]

echo -e "cd\nls" | ./mysh >my_sh_file
echo -e "cd\nls" | tcsh >tcsh_file
if cmp  "my_sh_file"  "tcsh_file"; then
    printf "[${BLUE}TEST #8 : cd${NC}]\t\t\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #8 : cd${NC}]\t\t\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm my_sh_file
# rm tcsh_file

# [TEST #9 : cd ../]

echo -e "cd ../\nls" | ./mysh >my_sh_file
echo -e "cd ../\nls" | tcsh >tcsh_file
if cmp  "my_sh_file"  "tcsh_file"; then
    printf "[${BLUE}TEST #9 : cd ../${NC}]\t\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #9 : cd ../${NC}]\t\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm my_sh_file
# rm tcsh_file

# [TEST #10 : Clear Environment]

echo "clear" | ./mysh > my_sh_file
echo "clear" | tcsh > tcsh_file
if cmp  "my_sh_file"  "tcsh_file"; then
    printf "[${BLUE}TEST #10 : Clear Environment${NC}]\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #10 : Clear Environment${NC}]\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm my_sh_file
# rm tcsh_file

# [TEST #11 : Line Formatting - 1]

echo " pwd " | ./mysh > my_sh_file
echo " pwd " | tcsh > tcsh_file
if cmp  "my_sh_file"  "tcsh_file"; then
    printf "[${BLUE}TEST #11 : Line Formatting - 1${NC}]\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #11 : Line Formatting - 1${NC}]\t-->\t${RED}Test failed${NC} !\n"
fi
# rm my_sh_file
# rm tcsh_file

# [TEST #12 : Line Formatting - 2]

echo -e "\tpwd" | ./mysh > my_sh_file
echo -e "\tpwd" | tcsh > tcsh_file
if cmp  "my_sh_file"  "tcsh_file"; then
    printf "[${BLUE}TEST #12 : Line Formatting - 2${NC}]\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #12 : Line Formatting - 2${NC}]\t-->\t${RED}Test failed${NC} !\n"
fi
# rm my_sh_file
# rm tcsh_file

# [TEST #13 : Line Formatting - 3]


echo -e "\t\t\t pwd\t \t                    " | ./mysh > my_sh_file
echo -e "\t\t\t pwd\t \t                    " | tcsh > tcsh_file
if cmp  "my_sh_file"  "tcsh_file"; then
    printf "[${BLUE}TEST #13 : Line Formatting - 3${NC}]\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #13 : Line Formatting - 3${NC}]\t-->\t${RED}Test failed${NC} !\n"
fi
# rm my_sh_file
# rm tcsh_file

# [TEST #14 : Line Formatting - 4]

echo "" | ./mysh > my_sh_file
echo "" | tcsh > tcsh_file
if cmp  "my_sh_file"  "tcsh_file"; then
    printf "[${BLUE}TEST #14 : Line Formatting - 4${NC}]\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #14 : Line Formatting - 4${NC}]\t-->\t${RED}Test failed${NC} !\n"
fi
# rm my_sh_file
# rm tcsh_file

# [TEST #15 : Line Formatting - 5]

echo " " | ./mysh > my_sh_file
echo " " | tcsh > tcsh_file
if cmp  "my_sh_file"  "tcsh_file"; then
    printf "[${BLUE}TEST #15 : Line Formatting - 5${NC}]\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #15 : Line Formatting - 5${NC}]\t-->\t${RED}Test failed${NC} !\n"
fi
rm my_sh_file
rm tcsh_file

# [TEST #16 : Simple separator - 1]

echo "pwd; ls" | ./mysh > ../my_sh_file
echo "pwd; ls" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #16 : Simple separator - 1${NC}]\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #16 : Simple separator - 1${NC}]\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #17 : Simple separator - 2]

echo "pwd; ls;          ls -la;             pwd" | ./mysh > ../my_sh_file
echo "pwd; ls;          ls -la;             pwd" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #17 : Simple separator - 2${NC}]\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #17 : Simple separator - 2${NC}]\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #18 : Advanced separator - 1]

echo "pwd; ls;          ls -la;             pwd;        exit" | ./mysh > ../my_sh_file
echo "pwd; ls;          ls -la;             pwd;        exit" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #18 : Advanced separator - 1${NC}]\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #18 : Advanced separator - 1${NC}]\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #19 : Advanced separator - 2]

echo "pwd; ls;         ls -la;             pwd; ls -l; pwd;pwd;pwd;pwd;;" | ./mysh > ../my_sh_file
echo "pwd; ls;         ls -la;             pwd; ls -l; pwd;pwd;pwd;pwd;;" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #19 : Advanced separator - 2${NC}]\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #19 : Advanced separator - 2${NC}]\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #20 : Simple pipe - 1]

echo "ls -la | cat -e" | ./mysh > ../my_sh_file
echo "ls -la | cat -e" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #20 : Simple pipe - 1${NC}]\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #20 : Simple pipe - 1${NC}]\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #21 : Simple pipe - 2]

echo "ls -la | wc -c; ls | wc" | ./mysh > ../my_sh_file
echo "ls -la | wc -c; ls | wc" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #21 : Simple pipe - 2${NC}]\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #21 : Simple pipe - 2${NC}]\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #22 : Advanced pipe - 1]

echo "ls -la | wc -c; ls | wc       ; ls|cat -e;        ls| grep o" | ./mysh > ../my_sh_file
echo "ls -la | wc -c; ls | wc       ; ls|cat -e;        ls| grep o" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #22 : Advanced pipe - 1${NC}]\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #22 : Advanced pipe - 1${NC}]\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #23 : Advanced pipe - 2]

echo "ls -la | wc -c; ls | wc       ; ls|cat -e;        ls| sort -nr" | ./mysh > ../my_sh_file
echo "ls -la | wc -c; ls | wc       ; ls|cat -e;        ls| sort -nr" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #23 : Advanced pipe - 2${NC}]\t\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #23 : Advanced pipe - 2${NC}]\t\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #24 : Advanced manipulation - 1]

echo "pwd; ls;          pwd;        ls -la | wc -c;     ls | wc" | ./mysh > ../my_sh_file
echo "pwd; ls;          pwd;        ls -la | wc -c;     ls | wc" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #24 : Advanced manipulation - 1${NC}]\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #24 : Advanced manipulation - 1${NC}]\t-->\t${RED}Test failed${NC} !\n"
fi
# rm ../my_sh_file
# rm ../tcsh_file

# [TEST #25 : Advanced manipulation - 2]

echo "pwd; ls;          pwd;        ls -la | wc -c;     ls | wc ; ls | sort -nr; ls -l | grep o" | ./mysh > ../my_sh_file
echo "pwd; ls;          pwd;        ls -la | wc -c;     ls | wc ; ls | sort -nr; ls -l | grep o" | tcsh > ../tcsh_file
if cmp  "../my_sh_file"  "../tcsh_file"; then
    printf "[${BLUE}TEST #25 : Advanced manipulation - 2${NC}]\t-->\t${GREEN}Test passed${NC} !\n"
else
    printf "[${BLUE}TEST #25 : Advanced manipulation - 2${NC}]\t-->\t${RED}Test failed${NC} !\n"
fi
rm ../my_sh_file
rm ../tcsh_file

# [EXIT]

make fclean