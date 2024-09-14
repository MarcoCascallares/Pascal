
Program p4Ej4;

Var 
  a, b, n, i : Integer;

Begin
  Write('Escriba el valor de a: ');
  ReadLn(a);
  Write('Escriba el valor de b: ');
  ReadLn(b);
  Write('Escriba el valor de n: ');
  ReadLn(n);

  If a > b Then
    Begin
      i := a;
      a := b;
      b := i;
    End;

  If (a Mod n) = 0 Then
    i := a
  Else
    //El resultado va dar un multiplo de n en el rango de a y b si o si
    i := ((a + n - 1) Div n) * n;

  Write('Los multiplos de ', n, ' entre ', a, ' y ', b, ' son: ');
  For i := i To b Do
    Begin
      If (i Mod n) = 0 Then
        Write(' |', i, '| ');
    End;
End.
