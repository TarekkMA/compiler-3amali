/*Lex Program to Identify and Count Positive and Negative Numbers*/

NUM ([0-9]+)

POS_NUM \+?{NUM}
NEG_NUM \-{NUM}

%{
int nc = 0,pc = 0;
%}

%%

{POS_NUM} {printf("positive");pc++;}
{NEG_NUM} {printf("negative");nc++;}

%%

int yywrap(){
  return 1;
}
int main(){
  yylex();
  printf("Positive:%i Negative:%i\n",pc,nc);
}