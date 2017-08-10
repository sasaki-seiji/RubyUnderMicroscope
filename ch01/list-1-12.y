%{

#include <stdio.h>
#include <string.h>

int yylex(void);
void yyerror(const char* s);

%}


%token me
%token gusta
%token el
%token ruby

%%

SpanishPhrase : me gusta el ruby 
	{ printf("I like Ruby\n"); }
;

%%

int yylex(void)
{
	char buf[100];

	scanf("%s", buf);
	if(strcmp(buf, "me") == 0 || strcmp(buf, "Me") == 0) return me;
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

