%{
#include <iostream>
using namespace std;

extern "C" int yylex();
extern "C" int yyparse();
extern "C" FILE *yyin;
extern int lines;
 
void yyerror(const char *message);
%}

%union {
	int VAR_I;
	float VAR_F;
	char *VAR_ID;
}

// TERMINALS
%token <VAR_ID> PLUS
%token <VAR_ID> MINUS
%token <VAR_ID> TIMES
%token <VAR_ID> DIVIDES
%token <VAR_ID> LT
%token <VAR_ID> GT
%token <VAR_ID> NOT_EQUAL
%token <VAR_ID> EQUAL
%token <VAR_ID> OPEN_PARENTHESIS
%token <VAR_ID> CLOSE_PARENTHESIS
%token <VAR_ID> OPEN_BRACKET
%token <VAR_ID> CLOSE_BRACKET
%token <VAR_ID> COMMA
%token <VAR_ID> SEMICOLON
%token <VAR_ID> COLON
%token <VAR_ID> IF
%token <VAR_ID> ELSE
%token <VAR_ID> VAR
%token <VAR_I> INT
%token <VAR_F> FLOAT
%token <VAR_ID> PRINT
%token <VAR_ID> PROGRAM
%token <VAR_ID> INT_TYPE
%token <VAR_ID> FLOAT_TYPE
%token <VAR_ID> STRING_TYPE
%token <VAR_ID> ID
%token <VAR_ID> STRING

// NON TERMINALS
%type <VAR_ID> program
%type <VAR_ID> a
%type <VAR_ID> block
%type <VAR_ID> vars
%type <VAR_ID> b
%type <VAR_ID> statement
%type <VAR_ID> c
%type <VAR_ID> type
%type <VAR_ID> d
%type <VAR_ID> e
%type <VAR_ID> f
%type <VAR_ID> asignment
%type <VAR_ID> expression
%type <VAR_ID> g
%type <VAR_ID> h
%type <VAR_ID> exp
%type <VAR_ID> writing
%type <VAR_ID> i
%type <VAR_ID> j
%type <VAR_ID> term
%type <VAR_ID> k
%type <VAR_ID> factor
%type <VAR_ID> l
%type <VAR_ID> condition
%type <VAR_ID> m
%type <VAR_ID> varcte
%type <VAR_ID> n
%type <VAR_ID> o
%type <VAR_ID> p
%type <VAR_ID> q

%%

program:
	PROGRAM ID SEMICOLON a block { 
    cout << "Cuack cuack! Succesfully compiled with "<< lines << " lines of code."  << endl; 
  }
	;

a:
	vars
	| {}
	;

block:
	OPEN_BRACKET b CLOSE_BRACKET
	;

b:
	statement b
	| {}
	;

vars:
	VAR c COLON type SEMICOLON q
	;

c:
	ID d
	;

d:
	COMMA ID d
	| {}
	;

type:
	e
	;

e:
	INT_TYPE
	| FLOAT_TYPE
	;

statement:
	f
	;

f:
	asignment
	| condition
	| writing
	;

asignment:
	ID EQUAL expression SEMICOLON
	;

expression:
	exp g
	;

g:
	GT h
	| LT h
	| NOT_EQUAL h
	| {}
	;

h:
	exp
	;

writing:
	PRINT OPEN_PARENTHESIS i CLOSE_PARENTHESIS SEMICOLON
	;

i:
	expression j
	| STRING j
	;

j:
	COMMA i
	| {}
	;

exp:
	term k
	;

k:
	PLUS term k
	| MINUS term k
	| {}
	;

term:
	factor l
	;

l:
	TIMES factor l
	| DIVIDES factor l
	| {}
	;

condition:
	IF OPEN_PARENTHESIS expression CLOSE_PARENTHESIS block m SEMICOLON
	;

m:
	ELSE block
	| {}
	;

varcte:
	n
	;

n:
	ID
	| INT {}
	| FLOAT {}
	;

factor:
	o
	;

o:
	OPEN_PARENTHESIS expression CLOSE_PARENTHESIS
	| p varcte
	;

p:
	PLUS
	| MINUS
	| {}
	;

q:
	c COLON type SEMICOLON q
	| {}
	;

%%

int main(int argc, char *argv[]) {

	FILE *myfile = fopen(argv[1], "r");

	if (!myfile) {
		cout << "Cuack? File missing" << endl;
		return -1;
	}

	yyin = myfile;
	
	do {
		yyparse();
	} while (!feof(yyin));	
}

void yyerror(const char *message) {
	cout << "Miau! This is not a valid duck. Parsing error at line " << lines <<". Message: " << message << endl;

	exit(-1);
}