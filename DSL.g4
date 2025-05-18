grammar DSL;

dsl           : accion+ ;
accion        : 'accion' nombreAccion '{' comando+ '}' ;
nombreAccion  : IDENTIFICADOR ;
comando
    : 'moverArchivo' 'a' RUTA
    | 'usarEscaneoProfundo'
    | 'retornar' 'resultado'
    | 'notificar' MENSAJE
    ;

IDENTIFICADOR : LETRA (LETRA | DIGITO)* ;
RUTA          : CARACTER+ ;
MENSAJE       : CARACTER+ ;

fragment LETRA    : [a-zA-Z] ;
fragment DIGITO   : [0-9] ;
fragment CARACTER : LETRA | DIGITO | '_' | '-' | '/' | ' ' ;

WS : [ \t\r\n]+ -> skip ;