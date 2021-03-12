/* A Bison parser, made by GNU Bison 3.5.1.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_SRC_LITTLE_DUCK_TAB_H_INCLUDED
# define YY_YY_SRC_LITTLE_DUCK_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    PLUS = 258,
    MINUS = 259,
    TIMES = 260,
    DIVIDES = 261,
    LT = 262,
    GT = 263,
    NOT_EQUAL = 264,
    EQUAL = 265,
    OPEN_PARENTHESIS = 266,
    CLOSE_PARENTHESIS = 267,
    OPEN_BRACKET = 268,
    CLOSE_BRACKET = 269,
    COMMA = 270,
    SEMICOLON = 271,
    COLON = 272,
    IF = 273,
    ELSE = 274,
    VAR = 275,
    INT = 276,
    FLOAT = 277,
    PRINT = 278,
    PROGRAM = 279,
    INT_TYPE = 280,
    FLOAT_TYPE = 281,
    STRING_TYPE = 282,
    ID = 283,
    STRING = 284
  };
#endif
/* Tokens.  */
#define PLUS 258
#define MINUS 259
#define TIMES 260
#define DIVIDES 261
#define LT 262
#define GT 263
#define NOT_EQUAL 264
#define EQUAL 265
#define OPEN_PARENTHESIS 266
#define CLOSE_PARENTHESIS 267
#define OPEN_BRACKET 268
#define CLOSE_BRACKET 269
#define COMMA 270
#define SEMICOLON 271
#define COLON 272
#define IF 273
#define ELSE 274
#define VAR 275
#define INT 276
#define FLOAT 277
#define PRINT 278
#define PROGRAM 279
#define INT_TYPE 280
#define FLOAT_TYPE 281
#define STRING_TYPE 282
#define ID 283
#define STRING 284

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 13 "little_duck.yy"

	int VAR_I;
	float VAR_F;
	char *VAR_ID;

#line 121 "./src/little_duck.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_SRC_LITTLE_DUCK_TAB_H_INCLUDED  */
