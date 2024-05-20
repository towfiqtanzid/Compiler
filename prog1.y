%{
    #include<stdio.h>
    void yyerror(char *s);
    int yylex();

%}

%token INT_TYPE ID ASSIGN NUM SEMI WHILE LP RP LB RB INC
%start s

%%
s: declr while_loop;
declr: INT_TYPE ID ASSIGN NUM SEMI;
while_loop: WHILE LP NUM RP LB ID INC SEMI RB;
%%

int main()
{
    yyparse();
    printf("Parsing Finished\n");
    return 0;
}

void yyerror(char *s)
{
    fprintf(stderr,"error: %s\n", s);
}