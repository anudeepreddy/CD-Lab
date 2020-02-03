digit[0-9]
letter[A-Za-z]
for[f][o][r]
%{
        int f;
%}
%%
{for} {return (3);}
{letter}({letter}|{digit})* {return (1);}
{digit}+ {return (2);}
%%
int main(void){
    while(f=yylex()){
        if(f==1)
            printf("Identifier");
        else if(f==2)
            printf("Digit");
        else
            printf("Keyword");
    }
return 0;
}
