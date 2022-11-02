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

exp1 : exp{lrint("result is %g\n",$1);}

exp : exp'+'exp { $$=$1+$3; } 
 
 
        |exp'-'exp { $$=$1-$3; } 
        
        
        |exp'*'exp { $$=$1*$3; }    
        |exp'/'exp { if($3==0) 
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