program p4Ej5;

var
  n, i, rz: Integer;
  rcr: Real;

begin
  // Leer el número del usuario
  Write('Ingrese un número entero: ');
  ReadLn(n);

  // Calcula la raíz cuadrada del número y la trunca a entero
  rcr := Sqrt(n);
  rz := Trunc(rcr);

  Write('Los divisores de ', n, ' son: ');

  // Encuentra y muestra los divisores del número
  for i := 1 to rz do
  begin
    // Verifica si 'i' es un divisor de 'n'
    if (n mod i = 0) then
    begin
      Write(i, ' '); // Imprime el divisor

      // También imprime el par del divisor si es diferente
      if (i <> n div i) then
        Write(n div i, ' ');
    end;
  end;

  WriteLn; // Salto de línea al final
end.
