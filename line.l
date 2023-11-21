%{
	int ch,li,wo;	
%}
%%
\n {li++;ch++;}
[^ \t\n]+ {wo++,ch+=yyleng;}
. { ch++;}
%%
int yywrap(void)
{
	return 1;
}
int main(int argc,char *argv[])
{
	yyin=fopen(argv[1],"r");
	yylex();
	printf("Total charater: %d\n",ch);
	printf("Total word: %d\n",wo);
	printf("Total lines: %d\n",li);
	fclose(yyin);
}
