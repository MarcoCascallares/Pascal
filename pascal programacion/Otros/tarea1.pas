


(*Mi ayuda fue: 
| a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z |
| d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, a, b, c |

Y la tabla ASCII
Comentarios hechos por ChatGPT (no me se explicar muy bien)*)

Program tarea1;

Const 
  finalizador = '.'; (* Carácter que indica el final del mensaje *)


Var 
(* Variables para caracteres *)
  vFun, letra, accion, entrada: Char;
(* Variables para clave y desplazamiento *)
  clave, desplaza, i: Integer;

(* Función para sustituir una letra con un desplazamiento dado *)
Function sustituirLetra(Letra: Char; desplazamiento: Integer): Char;
Begin
  (* Calcula el lugar desde ASCII para las minusculas *)
  If (Letra >= 'a') And (Letra <= 'z') Then
    Letra := Chr(((Ord(Letra) - Ord('a') + desplazamiento) Mod 26 + 26) Mod 26 +
             Ord('a'));

 (* Calcula el lugar desde ASCII para las mayusculas *)
  If (Letra >= 'A') And (Letra <= 'Z') Then
    Letra := Chr(((Ord(Letra) - Ord('A') + desplazamiento) Mod 26 + 26) Mod 26 +
             Ord('A'));

  (* Mantiene el carácter finalizador igual *)
  If Letra = '.' Then
    Letra := '.';
End;

(* Procedimiento para establecer el desplazamiento basado en la acción *)
Procedure procesarMensaje(clave: Integer; accion: char);
Begin
  (* Valor de desplazamiento según la acción: cifrar o descifrar *)
  If (accion = 'C') Or (accion = 'c') Then
    desplaza := clave
  Else If (accion = 'D') Or (accion = 'd') Then
         desplaza := -clave
  Else
    Write(' ||error|| ');
(* Muestra error si no es un dato valido *)
End;

(* Programa Principal *)
Begin
  (* Solicita la clave y la acción al usuario *)
  write('Ingrese la clave: ');
  readln(clave);

  write('Ingrese la letra "C" para cifrar o "D" para descifrar: ');
  readln(accion);

  (* Solicita el mensaje a procesar *)
  write('Ingrese el mensaje que desea procesar seguido de un punto ("."): ');

  (* Establece el desplazamiento basado en la acción *)
  procesarMensaje(clave, accion);

  (* Lee y procesa cada carácter hasta el finalizador *)

  Repeat
    Read(entrada);
    vFun := sustituirLetra(entrada, desplaza);
(* Aplica cifrado/descifrado *)
    Write(vFun);
  Until entrada = finalizador;
(* Termina al encontrar el finalizador *)
End.


(* Modificaciones: modifique varias veces la funcion "sustiturLetra"
 ya que no lograba enteder como mantener los resultados dentro del alfabeto
 Errores: 
 1. El ciclo repeat antes fue un for y pense en que sea un while, hasta que razone
 "termina al leer el caracter del punto" y por eso esta igualado a finalizador
 2. En el ciclo repeat el Read no es Readln ya que logre entender que para que sea una "frase"
 debia ingresar el valor con tan solo 1 enter, y ademas visualmente es mas estetico.

  Para finalizar: Este codigo puede ser mejor en varios aspectos, pero debido a mi lentitud
  de razonamiento no logre hacer todo lo que queria. *)