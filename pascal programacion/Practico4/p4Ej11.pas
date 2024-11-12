
program p4Ej11;
var v, v1, v2, num : Integer;
begin
   readln(v);
   readln(v1, v2);
   num:=v1;
   while (num <= v2)  and (num mod v <> 0) do
      num := num + 1;
   if  (num > v2) then writeln(-1)
   else writeln(num);
end.

