default: Lexer Parser

Lexer:
	jflex Matrices.flex

Parser:
	cup -parser parser Matrices.cup

clean:
	rm -rf Matrices.java Parser.java sym.java