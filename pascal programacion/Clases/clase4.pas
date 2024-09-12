program Clase4;
var 
    k, alto: Integer;
    x : Integer;
begin 
    alto :=4;
    for k:= alto downto 3 do
      Write(k,alto,' |');
    x:= 10;
    while x > 0 do
      x := x +3;
      WriteLn(x);
end.
