#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>
 
int isKeyword(char buffer[]){
char keywords[32][10] = {"main","auto","break","case","char","const","continue","default",
"do","double","else","enum","extern","float","for","goto",
"if","int","long","register","return","short","signed",
"sizeof","static","struct","switch","typedef",
"unsigned","void","printf","while"};
int i, flag = 0;
for(i = 0; i < 32; ++i)
{
if(strcmp(keywords[i], buffer) == 0)
{
flag = 1;
break;
}
}
return flag;
}
 
int main()
{
char ch, buffer[15], operators[] = "+-*/%=";
FILE *fp;
int i,j=0;
fp = fopen("factorial using recurssion.cpp","r");
if(fp == NULL){
printf("error while opening the file\n");
exit(0);
}
while((ch = fgetc(fp)) != EOF){
   for(i = 0; i < 6; ++i){
   if(ch == operators[i])
   printf("%c is operator\n", ch);
   }
     
   if(isalnum(ch)){
   buffer[j++] = ch;
   }
   else if((ch == ' ' || ch == '\n') && (j != 0)){
   buffer[j] = '\0';
   j = 0;
     
   if(isKeyword(buffer) == 1)
   printf("%s is keyword\n", buffer);
   else
   printf("%s is identifier\n", buffer);
   }
  
}
fclose(fp);
return 0;
}


********OUTPUT********

includestdioh is identifier
long is keyword
factorialint is identifier
n is identifier
if is keyword
n is identifier
= is operator
= is operator
0 is identifier
return is keyword
1 is identifier
else is keyword
returnn is identifier
* is operator
- is operator
factorialn1 is identifier
int is keyword
main is keyword
int is keyword
number is identifier
long is keyword
fact is identifier
printfEnter is identifier
a is identifier
number is identifier
% is operator
scanfd is identifier
number is identifier
fact is identifier
= is operator
factorialnumber is identifier
printfFactorial is identifier
of is identifier
% is operator
d is identifier
is is identifier
% is operator
ldn is identifier
number is identifier
fact is identifier
return is keyword
0 is identifier
