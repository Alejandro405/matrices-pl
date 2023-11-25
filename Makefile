default: Lexer Parser

Lexer:
	jflex Matrices.flex

Parser:
	cup -parser parser Matrices.cup

clean:
	rm -rf Yylex.java parser.java sym.java