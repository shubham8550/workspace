%{
#include<stdio.h>
int Vowels = 0;
int Consonent = 0;
%}

%%

    {printf("Enter any string\t");}

[aeiouAEIOU]   {Vowels++;}
[a-zA-Z]   {Consonent++;}

%%

int main(){
    yylex();
    printf("Number of vowels is = %d \n", Vowels);
    printf("Number of consonants is = %d \n", Consonent);
}

