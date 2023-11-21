%{
int commentCount = 0;
%}

%%
"//"(.)* { commentCount++; }
.|\n { /* Ignore other characters */ }

%%
int yywrap()
{
return 1;
}

int main() {
printf("Enter the text:");
    yylex();
    printf("Number of comment lines: %d\n", commentCount);
    return 0;
}
