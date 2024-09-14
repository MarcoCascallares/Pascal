
Program p4Ej7;

Var 
  n, i, x: Integer;
  a : char;
Begin


 Write('Ingrese 5 valores numericos: ');
  for x:= 1 to 5 do
  begin
  ReadLn(n);
  For i:= 1 To n do
    If (n < 60) And (n > 0)then
      Write('*');
  If (n <= 0) Or (n >= 60) Then
    Write('valor incorrecto');
    WriteLn();
    end;
End.
