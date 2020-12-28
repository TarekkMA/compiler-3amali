/*Lex program to count words 
that are less than 10 and greater than 5*/

MATCH_WORD [a-zA-Z]+

%{
int c = 0;
%}

%%

{MATCH_WORD} {
  if(yyleng > 5 && yyleng < 10){
    c++;
  }
}

%%

int yywrap(){return 1;}
int main(){
  yylex();
  printf("Count is %i",c);
}