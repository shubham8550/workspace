calci.yylex
%{
    #include<stdio.h>
    #include<math.h>
    
%}
%union{double p;}
%token <p> number

%left '+','-'
%left '*','/'
%type <p> exp
%%

exp1  : exp{print("result is%g/n",$1);}
exp :
