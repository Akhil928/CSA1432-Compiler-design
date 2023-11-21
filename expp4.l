%{
#include <stdio.h>

int keyword_count = 0;
int identifier_count = 0;
%}

%%
auto|break|case|char|const|continue|default|do|double|else|enum|extern|float|for|goto|if|int|long|register|return|short|signed|sizeof|static|struct|switch|typedef|union|unsigned|void|volatile|while   { keyword_count++; }
[a-zA-Z_][a-zA-Z0-9_]*   { identifier_count++; }

.|\n        ;   /* Ignore other characters */

%%

int yywrap()
{
return 1;
}

int main() {
printf("Enter the keywords and ifentifiers\n");
    yylex();
    
    printf("Number of keywords: %d\n", keyword_count);
    printf("Number of identifiers: %d\n", identifier_count);

    return 0;
}
