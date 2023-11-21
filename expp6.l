%{
#include<stdio.h>
#include<stdlib.h>
int flag=0;
%}
%%
[a-z . 0-9]+@[a-z]+".com"|".in" { flag=1; }
%%

int yywrap()
{
return 1;
}
int main()
{
printf("Enter the email address:\n");
yylex();
if(flag==1)
printf("email is valid");
else
printf("email is not valid");
}