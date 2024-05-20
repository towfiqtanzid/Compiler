%option noyywrap

%{
    //header file add kora jai eikhane
    #include "cal.tab.h"
%}

digit [0-9]

%%
({digit})({digit})* {printf("%s -> NUM\n",yytext); yylval = atoi(yytext); return(NUM);}
"+" {printf("%s -> ADDOP\n",yytext); return(ADDOP);}
%%

// int main()
// {
//     yylex();
//     return 0;
// }