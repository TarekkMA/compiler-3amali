/* xx-xx-xxxx */

DAY   [0-9]{1,2}
MONTH [0-9]{1,2}
YEAR  [0-9]{4}

DATE {DAY}-{MONTH}-{YEAR}
%%

{DATE} {
  printf("Found a date.\n");
  int d,m,y;
  sscanf(yytext,"%i-%i-%i",&d,&m,&y);

  if(d <= 0 || d >= 31)
}

. ;

%%
int yywrap(){
  return 1;
}
int main(){
  yylex();
  return 0;
}