%{
#include <stdio.h>
%}

%%
[ \t\n]+    ; /* Ignore whitespace and newline */

"int"       { printf("<KEYWORD, int>\n"); }
"float"     { printf("<KEYWORD, float>\n"); }
"char"      { printf("<KEYWORD, char>\n"); }
"if"        { printf("<KEYWORD, if>\n"); }
"else"      { printf("<KEYWORD, else>\n"); }
"while"     { printf("<KEYWORD, while>\n"); }
"for"       { printf("<KEYWORD, for>\n"); }

[0-9]+      { printf("<LITERAL, %s>\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("<IDENTIFIER, %s>\n", yytext); }

"+"         { printf("<OPERATOR, +>\n"); }
"-"         { printf("<OPERATOR, ->\n"); }
"*"         { printf("<OPERATOR, *>\n"); }
"/"         { printf("<OPERATOR, />\n"); }
"="         { printf("<OPERATOR, =>\n"); }
"=="        { printf("<OPERATOR, ==>\n"); }
"!="        { printf("<OPERATOR, !=>\n"); }
"<"         { printf("<OPERATOR, <>\n"); }
">"         { printf("<OPERATOR, >>\n"); }

"("         { printf("<PUNCTUATOR, (>\n"); }
")"         { printf("<PUNCTUATOR, )>\n"); }
"{"         { printf("<PUNCTUATOR, {>\n"); }
"}"         { printf("<PUNCTUATOR, }>\n"); }
";"         { printf("<PUNCTUATOR, ;>\n"); }

.           { printf("<UNKNOWN, %s>\n", yytext); }

%%

int yywrap()
{
return 1;
}

int main() {
    yylex();
    return 0;
}