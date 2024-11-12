program pruebas;

type
  Estudiante = record
    nombreCompleto: string[100];
    fechaNacimiento: string[10];
    sexo: char;                      
    numeroResponsable: string[20];    
    numeroPersonal: string[20];        
    documentoIdentidad: string[20];    
    carneSalud: boolean;               
  end;

var
  nuevoEstudiante: Estudiante;

procedure CargarEstudiante(var nuevoEstudiante: Estudiante);
var
  input: integer; // Declaración de la variable aquí
begin
  // Cargar nombre completo
  writeln('Ingrese el nombre completo:');
  readln(nuevoEstudiante.nombreCompleto);
  
  // Cargar fecha de nacimiento
  writeln('Ingrese la fecha de nacimiento (DD/MM/AAAA):');
  readln(nuevoEstudiante.fechaNacimiento);
  
  // Cargar sexo
  writeln('Ingrese el sexo (M/F):');
  readln(nuevoEstudiante.sexo);
  
  // Cargar número de responsable
  writeln('Ingrese el número de responsable:');
  readln(nuevoEstudiante.numeroResponsable);
  
  // Cargar número personal
  writeln('Ingrese el número personal:');
  readln(nuevoEstudiante.numeroPersonal);
  
  // Cargar documento de identidad
  writeln('Ingrese el documento de identidad:');
  readln(nuevoEstudiante.documentoIdentidad);

  // Cargar carne de salud
  writeln('¿Tiene carne de salud? (1 para sí, 0 para no):');
  readln(input);
  nuevoEstudiante.carneSalud := (input = 1);
end;

begin
  CargarEstudiante(nuevoEstudiante);
end.
