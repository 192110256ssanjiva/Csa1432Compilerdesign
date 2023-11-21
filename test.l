digit [0-9]
%{
    int c=0;
%}
%%
{digit}+ { c++; printf("%s is constant\n", yytext); } 
.|\n { }
%%
int yywrap(void)
{
   return 1;
}
int main(void)
{
    FILE *f;
    char file[20];
    printf("enter file name:");
    scanf("%s",file);
    f=fopen(file,"r");
    yyin=f;
    yylex();
    printf("total constant :%d",c);
    fclose(yyin);
}