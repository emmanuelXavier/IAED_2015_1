Program Pzim ;
var idade : integer; 
 Begin
  writeln('Informe a idade:');	
  read(idade);
  if (idade < 10) then
  	begin
	  write('Crian�a ');
	end
  else
  	begin
  	  writeln('N�o � uma crian�a');
  	end;
  if (idade > 20) then
  	begin
       write(' Adulto ');
     end;
  if (idade > 45) then
  	begin
	  write(' Idoso');
	end;  	
  
 End.
