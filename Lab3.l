/***Lexical analyser that checks if the input is a valid Kenyan phone number***/

/*** Rule Section has three rules, first rule
matches with valid Kenyan phone numbers, second rule
matches with any character except newline and
third rule does not take input after the enter***/

%%
[0][7+1][0-9]{8} {printf("%s is a valid Kenyan phone number\n", yytext);}
.+     {printf("%s is invalid\n", yytext);}
\n    {return 0;}
%%
 
/*** Code Section***/
int yywrap(){}
int main(){

/*** Receive input from a file ***/
//FILE *fp;
//char filename[50];
//printf("Enter the filename: \n");
//scanf("%s",filename);
//fp = fopen(filename,"r");
//yyin = fp; 

yylex();

return 0;
}