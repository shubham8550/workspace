%{
#include<stdio.h>
int a=0,b=0,c=0,d=0;
%}
%%
[0|1]+ {printf("Binary Rashmi %d",d);}
[+]?[0-9]+ {printf("Postive Integer %d",a);a++;}
[-]{1}[0-9]+ {printf("Negative Integer %d",b);b++;}
[+]?[0-9]+[.]{1}[0-9]+ {printf("Postive Fraction %d",c);c++;}
[-]?[0-9]+[.]{1}[0-9]+ {printf("Negative Fraction %d",d);d++;}
[0-9 A-Z a-f]+ {printf(" Hexadecimal Number %d",d);d++;}
[0-9]+ {printf(" Decimal Number %d",d);}

%%
int main()
{yylex();}

