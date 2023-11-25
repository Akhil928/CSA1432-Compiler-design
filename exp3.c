#include <stdio.h>

int main() {
    char codeLine[1000];
    char cleanedCode[1000];

    printf("Enter C code (end with Ctrl+D on Unix or Ctrl+Z on Windows):\n");

    // Read input until EOF
    while (fgets(codeLine, sizeof(codeLine), stdin) != NULL) {
        int i = 0, j = 0;

        while (codeLine[i] != '\0') {
            // Ignore single-line comments
            if (codeLine[i] == '/' && codeLine[i + 1] == '/') {
                break; // Ignore the rest of the line as a comment
            }

            // Ignore multi-line comments
            if (codeLine[i] == '/' && codeLine[i + 1] == '*') {
                i += 2; // Move past '/*'
                while (codeLine[i] != '\0' && !(codeLine[i] == '*' && codeLine[i + 1] == '/')) {
                    i++;
                }
                i += 2; // Move past '*/'
            }

            // Remove redundant spaces and tabs
            if (!(codeLine[i] == ' ' || codeLine[i] == '\t')) {
                cleanedCode[j] = codeLine[i];
                j++;
            }

            i++;
        }

        cleanedCode[j] = '\0'; // Null-terminate the cleaned code
        printf("%s", cleanedCode);
    }

    return 0;
}

