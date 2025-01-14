%{
    #include<stdio.h>
    void yyerror(char *s);
    int yylex();

%}

%token NUM ADDOP
%start s

%%
s: NUM ADDOP NUM {printf("%d + %d", $1, $3);};
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