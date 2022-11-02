%{
    #include<stdio.h>

%}
%%
    {printf("please Enter any Châracter/t"):}
 [0|1]+   {("%s is Binary Number\t,yytext"):}
  [0-7]+   {("%s is Octal Number\t,yytext"):}
   [0-9 A-F a-f]+   {("%s is Hexa decimal Number\t,yytext"):}
    [0-9]*   {("%s is Decimal Number\t,yytext"):}
     [eE][-+]?[0-9]*{("%s is Ẽponential Number\t,yytext"):}
      [0-9]+\.  {("%s is not valid  Number\t,yytext"):}
       [0-9]*\.[0-9]+ {("%s is Floating Point Number\t,yytext"):}
        [g-zG-Z]=   {("%s is Invalid Châracter Number\t,yytext"):}
        %%
        int main()
        {
            yylex();
        }
        int yywrap()
        {

        }