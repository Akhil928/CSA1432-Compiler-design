#include<stdio.h>

#include<conio.h>

int main()

{

char s[5];

printf("\n Enter any operator:");

gets(s);

switch(s[0])

{

case'+': printf("\n Addition ");

break;

case'-': printf("\nSubstraction");
}
}
