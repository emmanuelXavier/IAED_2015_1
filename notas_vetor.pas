Program Pzim ;
var
	notas : array[1..4] of real;
	indice : integer;
	media:real;
 Begin
    media := 0;
    for indice := 1 to 4 do
    	  begin
    		read(notas[indice]);
    		media := media + notas[indice];
    	  end;
    	
		
    for indice := 1 to 4 do
    		writeln(notas[indice]);
	writeln('A média é: ', media/4);
 End.
