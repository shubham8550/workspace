 %{
    #include<stdio.h>

 %}
 %%
 {printf("Plese Enter Any Character\t");}
 [0|1]+ {printf("%s is Binary Number\t",yytext);}
 [0-7]+ {printf("%s is Octal Number\t",yytext);}
 [0-9 A-F a-f] {printf("%s is Hexa Decimal Number\t",yytext);}
 [0-9*] {printf("%s is Decimal Number\t",yytext);}
 [eE][-+]?[0-9]* {printf("%S is Exponential Number\t",yytext);}
 [0-9]+