%{
#include <stdio.h>
%}

DIGIT   [0-9]

%%
^({DIGIT}{10})$   { printf("Valid mobile number: %s\n", yytext); }
.                { printf("Invalid mobile number: %s\n", yytext); }
%%

int yywrap()
{
return 1;
}

int main() {
printf("Enter the mobile number: ");
    yylex();
    return 0;
}
