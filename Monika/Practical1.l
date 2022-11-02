%{
    #include<stdio.h>

%}
%%
                    {printf("please Enter any Châracter/t"):}
[0|1]+              {printf("%s is Binary Number\t",yytext):}
[0-7]+              {printf("%s is Octal Number\t",yytext):}
[0-9 A-F a-f]+      {printf("%s is Hexa decimal Number\t",yytext):}
[0-9]*              {printf("%s is Decimal Number\t",yytext):}
[eE][-+]?[0-9]*     {printf("%s is Ẽponential Number\t",yytext):}
[0-9]+\.            {printf("%s is not valid  Number\t",yytext):}
[0-9]*\.[0-9]+      {printf("%s is Floating Point Number\t",yytext):}
[g-zG-Z]=           {printf("%s is Invalid Châracter Number\t",yytext):}
%%
int main()
{
    yylex();
}
int yywrap()
{
}