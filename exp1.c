#include <stdio.h>
#include <string.h>

int isSingleLineComment(const char *line) {
    return strncmp(line, "//", 2) == 0;
}

int isMultiLineCommentStart(const char *line) {
    return strncmp(line, "/*", 2) == 0;
}

int isMultiLineCommentEnd(const char *line) {
    return strstr(line, "*/") != NULL;
}

int main() {
    char codeLine[1000];

    printf("Enter a line of code: ");
    fgets(codeLine, sizeof(codeLine), stdin);

    if (isSingleLineComment(codeLine)) {
        printf("This is a single-line comment.\n");
    } else if (isMultiLineCommentStart(codeLine)) {
        printf("This is the start of a multi-line comment.\n");

        // Read additional lines until the end of the multi-line comment
        do {
            fgets(codeLine, sizeof(codeLine), stdin);
        } while (!isMultiLineCommentEnd(codeLine));

        printf("Multi-line comment ended.\n");
    } else {
        printf("This is not a comment.\n");
    }

    return 0;
}
