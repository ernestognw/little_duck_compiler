%{
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int yylex()

int lines = 1;

#include "little_duck.tab.h"

%}
%%
"+"					{ return PLUS; }
"-"					{ return MINUS; }
"*"					{ return TIMES; }
"/"					{ return DIVIDES; }
"<"					{ return LT; }
">"					{ return GT; }
"<>"				{ return NOT_EQUAL; }
"="					{ return EQUAL; }
"("					{ return OPEN_PARENTHESIS; }
")"					{ return CLOSE_PARENTHESIS; }
"{"					{ return OPEN_BRACKET; }
"}"					{ return CLOSE_BRACKET; }
","					{ return COMMA; }
";"					{ return SEMICOLON; }
":"					{ return COLON; }
if 					{ return IF; }
else				{ return ELSE; }
var					{ return VAR; }
int 				{ return INT_TYPE; }
float 			{ return FLOAT_TYPE; }
print				{ return PRINT; }
program			{ return PROGRAM; }

[0-9]+            	{ yylval.VAR_I = atoi(yytext); return INT; }
[0-9]+\.[0-9]+ 		  { yylval.VAR_F = atof(yytext); return FLOAT; }
[A-z0-9]+    	      { yylval.VAR_ID = strdup(yytext); return ID; }
\".*\"				      { return STRING; }
[\n]           		  { ++lines; }
.                	  ;
%%