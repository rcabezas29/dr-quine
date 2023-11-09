#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    char    *code, command[200], filename[10];
    int     i = 5;
#ifdef X
    i--;
#endif
    if (i < 0) return 0;
    code = "#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$cint main(void)%1$c{%1$c    char    *code, command[200], filename[10];%1$c    int     i = %2$d;%1$c#ifdef X%1$c    i--;%1$c#endif%1$c    if (i < 0) return 0;%1$c    code = %3$c%4$s%3$c;%1$c    sprintf(filename, %3$cSully_%%d.c%3$c, i);%1$c    FILE *fptr = fopen(filename, %3$cw%3$c);%1$c    fprintf(fptr, code, 10, i, 34, code);%1$c    fclose(fptr);%1$c    sprintf(command, %3$cgcc -Wall -Wextra -Werror -D X=1 %%s -o Sully_%%d && ./Sully_%%d%3$c, filename, i, i);%1$c    system(command);%1$c}%1$c";
    sprintf(filename, "Sully_%d.c", i);
    FILE *fptr = fopen(filename, "w");
    fprintf(fptr, code, 10, i, 34, code);
    fclose(fptr);
    sprintf(command, "gcc -Wall -Wextra -Werror -D X=1 %s -o Sully_%d && ./Sully_%d", filename, i, i);
    system(command);
}
