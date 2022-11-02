%{
    #include<stdio.h>
    int flag=0;
%}
%token One Zero N1

%%
S:A N1 {printf("The String is Valid\n");};
A:One Zero B|One Zero;
B:Zero B|One B|Zero|One;

%%

int main()
{
    printf("Please enter any string in a format 0 or 1 \n");
    yyparse();
}
void yyerror()
{
    printf("Error\n");
}