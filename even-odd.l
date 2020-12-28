
NUM [0-9]+

%%

{NUM} {
  int n;
  sscanf(yytext,"%i",&n);
  if(n % 2 == 0){
    printf("Even");
  }else{
    printf("Odd");
  }
}

%%

int yywrap(){return 1;}
int main(){
  yylex();
  return 0;
}