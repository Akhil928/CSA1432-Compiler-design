%{
#include<string.h>
int charCount = 0;
int lineCount = 0;
int wordCount = 0;
%}

%%
[a-zA-Z]+   { wordCount++; charCount+=strlen(yytext);}
\n          { lineCount++; charCount++; }
.           { charCount++; }

%%

int yywrap()
{
return 1;
}

int main() {
	printf("Enter text:");
   yylex();
    printf("Number of characters: %d\n", charCount);
    printf("Number of lines: %d\n", lineCount);
    printf("Number of words: %d\n", wordCount);
    return 0;
}
