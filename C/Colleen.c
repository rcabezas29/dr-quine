#include <stdio.h>
// Comment out of the program

void    colleen(void) {char *s = "#include <stdio.h>%c// Comment out of the program%c%cvoid    colleen(void) {char *s = %c%s%c; printf(s, 10, 10, 10, 34, s, 34, 10, 10, 10, 10, 10, 10);}%c%cint     main(void)%c{%c    // Comment inside the main function%c    colleen();%c}"; printf(s, 10, 10, 10, 34, s, 34, 10, 10, 10, 10, 10, 10);}

int     main(void)
{
    // Comment inside the main function
    colleen();
}