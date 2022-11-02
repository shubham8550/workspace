%{
    #include<stdio.h>
%}

%%
                    {printf("please Enter any charcter\t");}
[aeiouAEIOU]+       {printf("%s is a Vowel\t",yytext);}
[a-zA-Z]+           {printf("%s is a Consonant\t",yytext);}

%%
int main()
{
    yylex();
}
int yywrap()
{
}