%{
#include <stdio.h>

int positive_count = 0;
int negative_count = 0;
%}

%%
[-+]?[0-9]+         { 
                        int number = atoi(yytext);
                        if (number > 0) {
                            positive_count++;
                        } else if (number < 0) {
                            negative_count++;
                        }
                    }
.                   { /* Ignore other characters */ }
%%

int yywrap()
{
return 1;
}

int main() {
    yylex();
    printf("Positive Count: %d\n", positive_count);
    printf("Negative Count: %d\n", negative_count);
printf("Hello");
    return 0;
}
