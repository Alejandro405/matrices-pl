import java_cup.runtime.*;

%%
%cup

%%
\{                                                    { return new Symbol(sym.ALL, yytext()); }
\}                                                    { return new Symbol(sym.CLL, yytext()); }
\(                                                    { return new Symbol(sym.AP, yytext()); }
\)                                                    { return new Symbol(sym.CP, yytext()); }
\[                                                    { return new Symbol(sym.AC, yytext()); }
\]                                                    { return new Symbol(sym.CC, yytext()); }
\,                                                    { return new Symbol(sym.COMA, yytext()); }
\;                                                    { return new Symbol(sym.PYC, yytext()); }
\=                                                    { return new Symbol(sym.ASIG, yytext()); }
\+                                                    { return new Symbol(sym.MAS, yytext()); }
\-                                                    { return new Symbol(sym.MENOS, yytext()); }
\*                                                    { return new Symbol(sym.POR, yytext()); }
\/                                                    { return new Symbol(sym.DIV, yytext()); }
inversa                                               { return new Symbol(sym.INVERSA, yytext() ); }
transpuesta                                           { return new Symbol(sym.TRANSPUESTA, yytext() ); }
adjunta                                               { return new Symbol(sym.ADJUNTA, yytext() ); }
print                                                 { return new Symbol(sym.PRINT, yytext() ); }
[a-zA-Z][a-zA-Z0-9]*                                  { return new Symbol(sym.IDENT, yytext() ); }
(0|[1-9][0-9]*)                                       |
(([0-9]*\.[0-9]+|[0-9]+\.[0-9]*)([eE][+-]?[0-9]+)?)   |
([0-9]*)([eE][+-]?[0-9]+)                             { return new Symbol(sym.NUMERO, Double.valueOf(yytext())); }

// Comentarios
\/\/.*											      {  }

// Saltos de linea
\r|\n                                                 {  }

// Espacios en blanco
\ |\t|\f                                              {  }

// Errores
[^]                                                   { throw new Error("Illegal character <"+yytext()+">"); }

