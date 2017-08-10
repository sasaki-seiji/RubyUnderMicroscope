%{

#include <stdio.h>
#include <string.h>

#define YYSTYPE const char*

int yylex(void);
void yyerror(const char* s);

%}


%token me
%token le
%token gusta
%token el
%token ruby

%%

SpanishPhrase : VerbAndObject el ruby 
	{ printf("%s Ruby\n", $1); }
;

VerbAndObject : SheLikes | ILike
	{ $$ = $1; }
;

SheLikes : le gusta
	{ $$ = "She likes"; }
;

ILike : me gusta
	{ $$ = "I like"; }
;

%%

int yylex(void)
{
	static char buf[100];

	scanf("%s", buf);
	yylval = buf;

	if(strcmp(buf, "me") == 0 || strcmp(buf, "Me") == 0) return me;
	else if(strcmp(buf, "le") == 0 || strcmp(buf, "Le") == 0) return le;
	else if(strcmp(buf, "gusta") == 0) return gusta;
	else if(strcmp(buf, "el") == 0 ) return el;
	else if(strcmp(buf, "Ruby") == 0) return ruby;

	return 0;
}

void yyerror(const char* s)
{
	fprintf(stderr, "error: %s\n", s);
}

int main(void)
{
	return yyparse();
}

