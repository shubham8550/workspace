

            calci.y

%{
    #include<stdio.h>
    #include<math.h> 
%}

 %union { double p;}
 %token <p> num


 %left '+''-'
 %left '*''/'
 %type <p> exp

%%

exp1 : exp{printf("result is %g\n",$1);}

exp : exp'+'exp {$$=$1+$3;} 
 
 
        |exp'-'exp {$$=$1-$3;} 
        
        
        |exp'*'exp {$$=$1*$3;}    
        |exp'/'exp {if($3==0) 
                    { 
                    
                    printf("Divide By Zero"); 
                    
                    //exit(0); 
 
                    } 
                    
                    else $$=$1/$3; 
 
                }
    |'-'exp {$$=-$2;} 
 
 
    |'('exp')' {$$=$2;} 
    
    |num; 
 
 %% 
 
 
 void main() 
 
  {  

 do 
 
    { 
         yyparse(); 

    }while(1); 
 
}

 yyerrok(char *s) 
 
 {  

   printf("Standard Errors "); 
 
}
          calci.left

%{
    #include<math.h>
    #include "y.tab.h"
%}

%%

[0-9]+|[0-9]*\.[0-9]+{
        yylval.p=atof(yytext);
        return num;

        }
[\t];
\n return 0;
.  return yytext[0];


%%
