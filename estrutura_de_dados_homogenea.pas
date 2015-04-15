Program Pzim ;
var
	produtos : array[1..10] of String;
	indice : integer;
 Begin

    for indice := 1 to 10 do
    		read(produtos[indice]);
    		
    for indice := 1 to 10 do
    		writeln(produtos[indice]);

 End.
