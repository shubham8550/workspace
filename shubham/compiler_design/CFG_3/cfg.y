%{ 
 
#include<stdio.h> 
int flag=0; 
%}
%token One Zero Nl 
 
 
%% 
 
 
S:A Nl {printf("The String is Valid ");}; 
A:One Zero B |One Zero; 
B:Zero B |One B|Zero |One; 
 
 
%% 
 
int main() 
 
{ 
 
printf("Please enter any string in a format 0 or 1 \n"); 
yyparse(); 
} 
 
 
void yyerror() 
 
{ 
 
printf("Error\n"); 
 
} 
