QOUTED        \"(\\\"|[^\"\n])*\"
ANYTHING_ELSE .

%{
#include<ctype.h>
%}

%%

{QOUTED}        printf("%s",yytext);
{ANYTHING_ELSE} printf("%c",tolower(yytext[0]));

%%

int yywrap(){return 1;}
int main(){
  yylex();
  return 0;
}