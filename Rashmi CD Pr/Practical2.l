%{
    #include<stdio.h>
%}
%%
        {printf("Please Enter Any Character\t");}

[aeiouAEIOU]+            {printf("%s is a Vowel\t",yytext);}
[a-zA-Z]+       {printf("%s is a Consonant\t",yytext);}
%%

int main()
{
    yylex();
}

int yywrap()
{
    
}