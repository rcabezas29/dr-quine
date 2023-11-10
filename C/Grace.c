#include <stdio.h>
/* Comment */
#define B(x) int main(void) {fprintf(fopen("Grace_kid.c", "w"), "#include <stdio.h>\n/* Comment */\n#define B(x) %s\n#define X(s) S(s)\n#define S(s) #s\nB(X(B(x)))", x);}
#define X(s) S(s)
#define S(s) #s
B(X(B(x)))