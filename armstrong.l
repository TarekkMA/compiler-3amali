/*
Lex program to check whether given number is armstrong number or not.
*/

NUM [0-9]+

%{
#include<math.h>
%}

%%

{NUM} {
  int sum = 0;
  int num;
  sscanf(yytext,"%i",&num);
  for(int i=0;i<yyleng;i++){
    int digit = yytext[i] - '0';
    sum += pow(digit,yyleng);
  }
  printf("%i is ",num);
  if(sum != num){
    printf("not ");
  }
  printf("an Armstrong number\n");
}

. ;

%%

int yywrap(){return 1;}
int main(){yylex();}