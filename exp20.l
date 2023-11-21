%{
#include <stdio.h>
%}

%%
[A-Z]   { printf("Capital letter: %s\n", yytext); }
.|\n    { /* Ignore other characters */ }

%%

int yywrap()
{
return 1;
}

int main() {
printf("Enter the text:");
    yylex();
    return 0;
}