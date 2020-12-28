/*
Write a Lex program to check whether an year is a leap year or not.
*/

NUM [0-9]+
%%

{NUM} {
  int year;
  sscanf(yytext,"%i",&year);
  if(year % 4 == 0 || (year % 4 == 0 && year % 100 != 0)){
    printf("Year %i is a leap year\n",year);
  }else{
    printf("Year %i is not a leap year\n",year);
  }
}

. ;

%%


int yywrap(){return 1;}
int main(){yylex();}