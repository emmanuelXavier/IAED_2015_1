Program Pzim ;
var sexo : String;
	nome :string;
 Begin
 
 	writeln('Informe o seu nome: ');
 	read(nome);
 	writeln('Informe o seu sexo: ');
 	read(sexo);
 	
 	if (sexo = 'M') then
 	   begin
	    write('Senhor ', nome);
	   end
 	else
 	   begin
         write('Senhora ', nome);
        end;
 End.
