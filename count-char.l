/*
Lex program to count the number of lines, spaces and tabs
*/

%{
int lc = 0,sc = 0,tc =0,oc =0;
%}

%%
\n  lc++;
" " sc++;
\t  tc++;
.   oc++;
%%

int yywrap(){
  return 1;
}
int main(){
  yylex();
  printf("Lines:%i, Spaces:%i, Tabs:%i, Others:%i\n",lc,sc,tc,oc);
}