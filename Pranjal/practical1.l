%{
    #include<stdio.h>
%}

%%
                    {printf("please Enter any charcter\t");}
                    
[0[1]+              {printf("%s is binary number\t",yytext);}
[0-7]+              {printf("%s is octal  number\t",yytext);}
[0-9 A-f a-f]+      {printf("%s is hexadecimal number\t",yytext);}
[0-9]*              {printf("%s is decimal number\t",yytext);}
[eE][-+]?[0-9]      {printf("%s is exponential number\t",yytext);}
[0-9]+\             {printf("%s is not vaild  number\t",yytext);}
[0-9]*\.[0-9]+      {printf("%s is floating point number\t",yytext);}
[g-zG-Z]            {printf("%s is invaild number\t",yytext);}
%%

int main()
{
    yylex();
}

int yywrap()
{
}