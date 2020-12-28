%%
.* {
  int ispal = 1;
  for(int i=0,j=yyleng - 1;i < j;i++,j--){
    if(yytext[i] != yytext[j]){
      ispal = 0;
      break;
    }
  }
  if(ispal){
    printf("This string is a palindeome");
  }else{
    printf("This string is not a palindeome");
  }
}

%%
int yywrap(){return 1;}
int main(){yylex();}