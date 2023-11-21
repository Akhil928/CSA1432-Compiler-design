%{ #include<stdio.h>
int k=0;
%}

%%
[a-zA-Z]+ {
if(yyleng>k)
{  k= yyleng;
}
}
%%

int yywrap()
{
return 1;
}

int main(int argc[],char **argv[])
{
 yyin=fopen("abc.txt","r");
 yylex(); 
 printf("largest: %d",k);
 printf("\n");
 return 0;
}