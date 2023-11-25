#include<stdio.h>
#include<conio.h>
#include<ctype.h>

void main(){
	char id[10];
	int i=1,flag;
	printf("Enter the string : ");
	gets(id);
	
	if(isalpha(id[0]))
		flag=1;
	else
		printf("Not identifier ");
	while(id[i]!='\0'){
		if(!isalpha(id[i]) && !isdigit(id[i])){
			flag=0;
			break;
		}
		i=i+1;

	}
	
	if(flag==1)
		printf("Valid Identifier");
	else
		printf("Invalid identifier");
	
}
