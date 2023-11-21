%{
#include <stdio.h>
%}

%%
<!--.*-->              /* Ignore HTML comments */
"<"                   { printf("< : TAG_OPEN\n"); }
"</"                  { printf("</ : TAG_CLOSE\n"); }
[a-zA-Z][a-zA-Z0-9]*  { printf("TAG_NAME: %s\n", yytext); }
">"                   { printf("> : TAG_CLOSE\n"); }
"/>"                  { printf("/> : SELF_CLOSING_TAG\n"); }
[^<>]+                { /* Ignore other characters */ }
\n                    { /* Ignore newlines */ }
.                     { /* Ignore other characters */ }
%%

int yywrap()
{
return 1;
}

int main() {
    yylex();
    return 0;
}
