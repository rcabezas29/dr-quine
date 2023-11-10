#include <stdio.h>
#include <fcntl.h>
/*
Comment
*/

void    colleen(void)
{
    char *s = "#include <stdio.h>%1$c#include <fcntl.h>%1$c/*%1$cComment%1$c*/%1$c%1$cvoid    colleen(void)%1$c{%1$c    char *s = %2$c%3$s%2$c;%1$c    printf(s, 10, 34, s);%1$c}%1$c%1$cint     main(void)%1$c{%1$c    /*%1$c    Comment%1$c    */%1$c    colleen();%1$c}%1$c";
    printf(s, 10, 34, s);
}

int     main(void)
{
    /*
    Comment
    */
    colleen();
}
