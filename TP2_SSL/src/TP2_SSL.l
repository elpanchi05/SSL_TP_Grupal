%{
#include <stdio.h>
#include <string.h>
%}

DIGITO_DECIMAL          [0-9]
DIGITO_OCTAL            [0-7]
DIGITO_HEXADECIMAL      [a-fA-F0-9]
LETRA                   [a-zA-Z] 

%%

/* CONSTANTES */
ENTERO_DECIMAL          [1-9]{DIGITO_DECIMAL}*
ENTERO_OCTAL            0{DIGITO_OCTAL}*
ENTERO_HEXA             0[xX]{DIGITO_HEXADECIMAL}+
REALES                  {DIGITO_DECIMAL}*.[{DIGITO_DECIMAL}]+([Ee](+|-)?[{DIGITO_DECIMAL}])?[{DIGITO_DECIMAL}].([Ee](+|-)?[{DIGITO_DECIMAL}]*) 
CARACTER                \'[^\n']\' /* PREGUNTAR A SANTI ['].*['] */

/* LITERAL CADENA */
LITERAL_CADENA                  \"[^\n"]*\" /* PREGUNTAR A SANTI  ["].*["] */

/* PALABRAS RESERVADAS */
RESERVADAS_TIPO_DATO            char|float|void|int|struct|double|register|enum|union
RESERVADAS_ESTRUCTURA_CONTROL   if|else|while|do|switch|break|case|for|goto|continue|return
RESERVADAS_OTROS                static|long|short|unsigned|signed|volatile|const|typedef|sizeof|default|_Packed|auto|extern

/* IDENTIFICADORES */
IDENTIFICADOR                   ({LETRA}|[_])({LETRA}|{DIGITO_DECIMAL}|[_])*

/* CARACTERES DE PUNTUACION */
CARACTER_PUNTUACION             [[\](){}.&*+-!/%<>\|=?:;,#]

/* COMENTARIOS */
COMENTARIO_UNA_LINEA              [/]{2}.*[\n]
COMENTARIO_MULT_LINEA           [/][*].*[*][/]

%%








