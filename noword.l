%%
[\t ]+:
[0-9]+|[0-9]*\.[0-9]+ {printf("\n%s is number:",yytext);}
#.* {printf("\n%s is comment:",yytext);}
[a-zA-Z]+ {printf("\n%s is word:",yytext);}
\n { ECHO; }
%%
int main()
{
while(yylex());
}
int yywrap()
{
return 1;
}