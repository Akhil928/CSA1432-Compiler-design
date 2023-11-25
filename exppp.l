%{
	#include<string.h>
	int charcount=0;
	int wordcount=0;
	int linecount=0;
%}
%%
[a-zA-z] {linecount++; charcount+=strlen[yytext];}
\n       {wordcount++;charcount++;}
.        {charcount++;}
%%
int yywrap()
{
	return 1;
}
int main()
{
	printf("enter the text:");
	yylex()
	printf("number of characters:%d\n",characters);
	printf("number of lines:%d\n",lines);
	printf("number of words:%d\n",words);
	return 0;
}