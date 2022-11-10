%% 
[\t ]+ 
is |
am | 
are |
were |
was |
be |
being |
been |
do |
does |
did |
will |
would |
should |
can |
could |
has |
have |
had |
go  {printf("%s: is a verb\n", yytext);}

very |
simply |
gently |
quietly |
calmly |
angrily {printf("%s: is an adverb\n", yytext);}

to |
from |
behind |
above |
below |
between {printf("%s: is an preposition\n", yytext);}

if |
then |
and |
but |
or {printf("%s: is an conjunction\n", yytext);}

their |
my |
your |
his |
her |
its {printf("%s: is an adjective\n", yytext);}

i |
you |
he |
she |
we |
they {printf("%s: is a pronoun\n", yytext);}

[a-zA-Z]+ {
    printf("%s: Don't recognize, might be a noun\n", yytext);
}
.|\n {ECHO;}

%%
int main()
{
    yylex();
}