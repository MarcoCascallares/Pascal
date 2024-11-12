program GestionEstudiantes;
type
    lgTel = array [0..8] of Integer;
    lgCdI = array [0..7] of Integer;
var
    TelPersonal, TelResponsable: lgTel;  
    CdI: lgCdI;     
    carneSalud: boolean;
    nombreCompleto: string[200]; 
    i: Integer;
begin
    repeat
    i:=0;
  ReadLn(TelPersonal[i], TelResponsable[i],CdI[i]);
  until i=8;
  ReadLn(nombreCompleto);

  WriteLn(TelPersonal, TelResponsable,CdI);
  WriteLn(nombreCompleto);
end.