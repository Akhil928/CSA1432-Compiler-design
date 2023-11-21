%{
#define MAX_LENGTH 100
%}

%%
"hello"   { printf("hi"); }  // Replace "apple" with "orange"
.         { putchar(yytext[0]); } // Print other characters as is
%%
int yywrap(){
return 1;
}

int main() {
    char input[MAX_LENGTH];
    yyin = stdin; // Set input source to standard input

    // Read input until EOF
    while (fgets(input, MAX_LENGTH, yyin) != NULL) {
        yy_scan_string(input); // Scan the input
        yylex(); // Perform lexical analysis and replacement
    }
    return 0;
}