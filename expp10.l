%{
#include <stdio.h>
%}

%%
"int"                { printf("Type: INT\n"); }
"float"              { printf("Type: FLOAT\n"); }
"char"               { printf("Type: CHAR\n"); }
"if"                 { printf("Keyword: IF\n"); }
"else"               { printf("Keyword: ELSE\n"); }
"while"              { printf("Keyword: WHILE\n"); }
"for"                { printf("Keyword: FOR\n"); }
"return"             { printf("Keyword: RETURN\n"); }
"{"                  { printf("Left Brace: {\n"); }
"}"                  { printf("Right Brace: }\n"); }
"("                  { printf("Left Parenthesis: (\n"); }
")"                  { printf("Right Parenthesis: )\n"); }
";"                  { printf("Semicolon: ;\n"); }
","                  { printf("Comma: ,\n"); }
"="                  { printf("Assignment Operator: =\n"); }
"=="                 { printf("Equality Operator: ==\n"); }
"!="                 { printf("Inequality Operator: !=\n"); }
"+"                  { printf("Plus Operator: +\n"); }
"-"                  { printf("Minus Operator: -\n"); }
"*"                  { printf("Multiplication Operator: *\n"); }
"/"                  { printf("Division Operator: /\n"); }
"%"                  { printf("Modulus Operator: %%\n"); }
"++"                 { printf("Increment Operator: ++\n"); }
"--"                 { printf("Decrement Operator: --\n"); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }
[0-9]+               { printf("Integer Constant: %s\n", yytext); }
[0-9]+\.[0-9]+       { printf("Float Constant: %s\n", yytext); }
\"[^\"]*\"           { printf("String Literal: %s\n", yytext); }
\/\/[^\n]*           { /* Ignore single-line comments */ }
\/\*([^*]|\*[^\/])*\*\/ { /* Ignore multi-line comments */ }
[ \t\n]              { /* Ignore whitespace */ }
.                    { printf("Unknown Token: %s\n", yytext); }
%%

int yywrap()
{
return 1;
}
int main() {
printf("Enter the c program : ");
    yylex();
    return 0;
}
