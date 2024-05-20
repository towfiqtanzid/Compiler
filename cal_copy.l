%option noyywrap

%{
    //header file add kora jai eikhane
    #include "prog1.tab.h"
%}

digit [0-9]
letter [A-Za-z]

%%
" " {}
"int" {printf("%s -> INT_TYPE\n", yytext); return(INT_TYPE);}
"while" {printf("%s -> WHILE\n", yytext); return(WHILE);}
("_"|{letter})("_"|{letter}|{digit})* {printf("%s -> ID\n", yytext); return(ID);}
"=" {printf("%s -> ASSIGN\n", yytext); return(ASSIGN);}
({digit})({digit})* {printf("%s ->NUM\n",yytext); return(NUM);}
";" {printf("%s -> SEMI\n", yytext); return(SEMI);}
"(" {printf("%s -> LP\n",yytext); return(LP);}
")" {printf("%s -> RP\n",yytext); return(RP);}
"{" {printf("%s -> LB\n",yytext); return(LB);}
"}" {printf("%s -> RB\n",yytext); return(RB);}
"++" {printf("%s -> INC\n",yytext); return(INC);}

%%

// int main()
// {
//     yylex();
//     return 0;
// }