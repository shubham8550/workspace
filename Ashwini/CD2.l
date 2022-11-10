%{
#include<stdio.h>
%}

%%
    {printf("Enter string\t");}

[aeiouAEIOU]+   {printf("%s is a Vowels\t", yytext);}
[a-zA-Z]+   {printf("%s is a Consonent\t", yytext);}

%%

int main(){
    yylex();
}


