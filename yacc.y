%{
#include<stdio.h>
#include<stdlib.h>
%}
%token LETTER DIGIT
%%
variable: LETTER|LETTER rest
;
rest: LETTER rest
|DIGIT rest
|LETTER
|DIGIT
;
%%
int main()
{
yyparse();
printf("The string is a valid variable\n");
exit(0);
}
int yyerror(char *s)
{
printf("this is not a valid variable\n");
exit(0);
}
