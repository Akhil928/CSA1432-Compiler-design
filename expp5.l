%{
#include <stdio.h>

int line_number = 1;
%}

%%
\n  { line_number++; printf("%4d: ", line_number); }
.|\n { printf("%s", yytext); }

%%

int yywrap()
{
return 1;
}

int main() {
    printf("%4d: ", line_number);
    yylex();
    return 0;
}
