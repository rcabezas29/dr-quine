#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    char    *code, command[200], filename[10];
    int     i = 5;
    if (--i < 0) return 0;
    code = "#include <stdio.h>%c#include <stdlib.h>%c%cint main(void)%c{%c    char    *code, command[200], filename[10];%c    int     i = %d;%c    if (--i < 0) return 0;%c    code = %c%s%c;%c    sprintf(filename, %cSully_%%d.c%c, i);%c    FILE *fptr = fopen(filename, %cw%c);%c    fprintf(fptr, code, 10, 10, 10, 10, 10, 10, i, 10, 10, 34, code, 34, 10, 34, 34, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10);%c    fclose(fptr);%c    sprintf(command, %cgcc -Wall -Wextra -Werror %%s -o Sully_%%d && ./Sully_%%d%c, filename, i, i);%c    system(command);%c}";
    sprintf(filename, "Sully_%d.c", i);
    FILE *fptr = fopen(filename, "w");
    fprintf(fptr, code, 10, 10, 10, 10, 10, 10, i, 10, 10, 34, code, 34, 10, 34, 34, 10, 34, 34, 10, 10, 10, 34, 34, 10, 10);
    fclose(fptr);
    sprintf(command, "gcc -Wall -Wextra -Werror %s -o Sully_%d && ./Sully_%d", filename, i, i);
    system(command);
}